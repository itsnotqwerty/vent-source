package io.intercom.android.sdk.nexus;

import io.intercom.android.sdk.twig.Twig;
import io.intercom.b.f;
import io.intercom.okhttp3.OkHttpClient;
import io.intercom.okhttp3.Request;
import io.intercom.okhttp3.Request.Builder;
import io.intercom.okhttp3.Response;
import io.intercom.okhttp3.WebSocket;
import io.intercom.okhttp3.WebSocketListener;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

class NexusSocket
{
  private static final WebSocket CLOSED_SOCKET = new WebSocket()
  {
    public final void cancel() {}
    
    public final boolean close(int paramAnonymousInt, String paramAnonymousString)
    {
      return false;
    }
    
    public final long queueSize()
    {
      return 0L;
    }
    
    public final Request request()
    {
      throw new NullPointerException("ClosedSocket has no request");
    }
    
    public final boolean send(f paramAnonymousf)
    {
      return false;
    }
    
    public final boolean send(String paramAnonymousString)
    {
      return false;
    }
  };
  private static final String HEADER = "?X-Nexus-Version=android.5.2.0";
  private static final int MAX_RECONNECT_TIME_SECONDS = 900;
  private static final int N_TIMEOUT_DISCONNECT = 4001;
  private static final int OK_CLIENT_DISCONNECT = 4000;
  private final OkHttpClient client;
  private final long connectionTimeoutSeconds;
  private long lastReconnectAt = 0L;
  private final NexusListener listener;
  private int reconnectAttempts = 0;
  private ScheduledFuture reconnectFuture;
  private final boolean shouldSendPresence;
  private WebSocket socket = CLOSED_SOCKET;
  private final ScheduledExecutorService timeoutExecutor;
  private ScheduledFuture timeoutFuture;
  private final Runnable timeoutRunnable = new Runnable()
  {
    public void run()
    {
      NexusSocket.this.timedOut();
    }
  };
  private final NexusTopicProvider topicProvider;
  private final Twig twig;
  private final String url;
  private final WebSocketListener webSocketListener = new WebSocketListener()
  {
    private void parseJsonString(String paramAnonymousString)
    {
      if ((paramAnonymousString.isEmpty()) || (paramAnonymousString.equals(" ")) || (paramAnonymousString.endsWith("|"))) {
        return;
      }
      try
      {
        JSONObject localJSONObject = new JSONObject(paramAnonymousString);
        String str = localJSONObject.optString("eventName");
        if ((str.isEmpty()) || (str.equals("ACK")))
        {
          NexusSocket.this.twig.internal("onMessage ACK: " + paramAnonymousString);
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        NexusSocket.this.twig.internal("onMessage: json parse exception for message: '" + paramAnonymousString + " " + localJSONException);
        return;
      }
      NexusSocket.this.twig.internal("onMessage TEXT: " + paramAnonymousString);
      NexusSocket.this.listener.notifyEvent(new NexusEvent(localJSONException));
    }
    
    public void onClosed(WebSocket paramAnonymousWebSocket, int paramAnonymousInt, String paramAnonymousString)
    {
      switch (paramAnonymousInt)
      {
      default: 
        NexusSocket.this.scheduleReconnect();
      }
      for (;;)
      {
        NexusSocket.this.twig.internal("onClose code: " + paramAnonymousInt + " reason: " + paramAnonymousString);
        return;
        NexusSocket.this.shutdown();
      }
    }
    
    public void onClosing(WebSocket paramAnonymousWebSocket, int paramAnonymousInt, String paramAnonymousString)
    {
      NexusSocket.this.twig.internal("Server requested close:  " + paramAnonymousInt + " - '" + paramAnonymousString + "'");
      paramAnonymousWebSocket.close(paramAnonymousInt, paramAnonymousString);
    }
    
    public void onFailure(WebSocket paramAnonymousWebSocket, Throwable paramAnonymousThrowable, Response paramAnonymousResponse)
    {
      if (NexusSocket.shouldReconnectFromFailure(paramAnonymousResponse)) {
        NexusSocket.this.scheduleReconnect();
      }
      for (;;)
      {
        NexusSocket.this.twig.internal("onFailure: " + paramAnonymousThrowable.getMessage());
        NexusSocket.this.listener.onConnectFailed();
        return;
        NexusSocket.this.shutdown();
      }
    }
    
    public void onMessage(WebSocket paramAnonymousWebSocket, f paramAnonymousf)
    {
      NexusSocket.this.twig.internal("Received bytes message " + paramAnonymousf + ", resetting timeout");
      NexusSocket.this.resetTimeout();
    }
    
    public void onMessage(WebSocket paramAnonymousWebSocket, String paramAnonymousString)
    {
      NexusSocket.this.resetTimeout();
      parseJsonString(paramAnonymousString);
    }
    
    public void onOpen(WebSocket paramAnonymousWebSocket, Response paramAnonymousResponse)
    {
      NexusSocket.this.twig.internal("onOpen: " + paramAnonymousResponse.message());
      NexusSocket.access$302(NexusSocket.this, paramAnonymousWebSocket);
      NexusSocket.this.resetTimeout();
      paramAnonymousWebSocket = NexusSocket.this.topicProvider.getTopics();
      if (!paramAnonymousWebSocket.isEmpty()) {
        NexusSocket.this.fire(NexusEvent.getSubscribeEvent(paramAnonymousWebSocket).toStringEncodedJsonObject());
      }
      if (NexusSocket.this.shouldSendPresence) {
        NexusSocket.this.fire(NexusEvent.getUserPresenceEvent().toStringEncodedJsonObject());
      }
      NexusSocket.this.listener.onConnect();
    }
  };
  
  NexusSocket(String paramString, int paramInt, boolean paramBoolean, Twig paramTwig, ScheduledExecutorService paramScheduledExecutorService, OkHttpClient paramOkHttpClient, NexusListener paramNexusListener, NexusTopicProvider paramNexusTopicProvider)
  {
    this.url = paramString;
    this.connectionTimeoutSeconds = paramInt;
    this.shouldSendPresence = paramBoolean;
    this.twig = paramTwig;
    this.listener = paramNexusListener;
    this.topicProvider = paramNexusTopicProvider;
    this.client = paramOkHttpClient;
    this.timeoutExecutor = paramScheduledExecutorService;
  }
  
  static long calculateReconnectTimerInSeconds(int paramInt)
  {
    paramInt = (int)Math.min(Math.pow(2.0D, paramInt), 900.0D);
    return paramInt + new Random().nextInt(paramInt + 1);
  }
  
  private void disconnect(int paramInt, String paramString)
  {
    if (!this.socket.close(paramInt, paramString)) {
      this.twig.internal("Could not close socket while disconnecting, it may be already closed");
    }
  }
  
  private void modifyReconnectAttempts()
  {
    if (System.currentTimeMillis() - this.lastReconnectAt > TimeUnit.SECONDS.toMillis(900L) * 2L) {
      this.twig.d("resetting reconnection attempts", new Object[0]);
    }
    for (this.reconnectAttempts = 1;; this.reconnectAttempts += 1)
    {
      this.lastReconnectAt = System.currentTimeMillis();
      return;
      this.twig.d("incrementing reconnection attempts", new Object[0]);
    }
  }
  
  private void resetTimeout()
  {
    if (this.timeoutFuture != null) {
      this.timeoutFuture.cancel(true);
    }
    this.timeoutFuture = this.timeoutExecutor.schedule(this.timeoutRunnable, this.connectionTimeoutSeconds, TimeUnit.SECONDS);
  }
  
  private void scheduleReconnect()
  {
    if (this.reconnectFuture != null) {
      return;
    }
    modifyReconnectAttempts();
    long l = calculateReconnectTimerInSeconds(this.reconnectAttempts);
    this.twig.internal("Scheduling reconnect in: " + l + " for attempt: " + this.reconnectAttempts);
    this.reconnectFuture = this.timeoutExecutor.schedule(new Runnable()
    {
      public void run()
      {
        NexusSocket.this.connect();
        NexusSocket.access$102(NexusSocket.this, null);
      }
    }, l, TimeUnit.SECONDS);
  }
  
  static boolean shouldReconnectFromFailure(Response paramResponse)
  {
    int i;
    if (paramResponse != null) {
      i = paramResponse.code();
    }
    return (i >= 500) && (i <= 599);
  }
  
  private void shutdown()
  {
    this.socket = CLOSED_SOCKET;
    if (this.timeoutFuture != null) {
      this.timeoutFuture.cancel(true);
    }
    this.listener.onShutdown();
  }
  
  private void timedOut()
  {
    if (this.socket == CLOSED_SOCKET) {
      scheduleReconnect();
    }
    for (;;)
    {
      this.listener.onConnectFailed();
      return;
      disconnect(4001, "Socket timed out");
    }
  }
  
  void connect()
  {
    this.twig.d("connecting to a socket...", new Object[0]);
    Request localRequest = new Request.Builder().url(this.url + "?X-Nexus-Version=android.5.2.0").build();
    this.client.newWebSocket(localRequest, this.webSocketListener);
    this.timeoutFuture = this.timeoutExecutor.schedule(this.timeoutRunnable, this.connectionTimeoutSeconds, TimeUnit.SECONDS);
  }
  
  void disconnect()
  {
    disconnect(4000, "Disconnect called by client");
  }
  
  void fire(String paramString)
  {
    if (paramString.isEmpty()) {
      return;
    }
    try
    {
      this.twig.internal("firing: " + paramString);
      this.socket.send(paramString);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      this.twig.internal("Error when firing '" + paramString + "': " + localIllegalStateException);
    }
  }
  
  boolean isConnected()
  {
    return this.socket != CLOSED_SOCKET;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/nexus/NexusSocket.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */