package io.intercom.android.sdk;

import io.intercom.a.c.a.b;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.conversation.events.AdminIsTypingEvent;
import io.intercom.android.sdk.models.events.realtime.UserContentSeenByAdminEvent;
import io.intercom.android.sdk.nexus.EventData;
import io.intercom.android.sdk.nexus.NexusClient;
import io.intercom.android.sdk.nexus.NexusConfig;
import io.intercom.android.sdk.nexus.NexusEvent;
import io.intercom.android.sdk.nexus.NexusListener;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.okhttp3.OkHttpClient;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

class NexusWrapper
  extends NexusClient
  implements NexusListener
{
  private static final String ADMIN_AVATAR = "adminAvatar";
  private static final String ADMIN_ID = "adminId";
  private static final String ADMIN_NAME = "adminName";
  private static final String CONVERSATION_ID = "conversationId";
  private ScheduledFuture actionFuture;
  private final b bus;
  private final long debouncePeriodMs;
  private final ScheduledExecutorService executor = Executors.newSingleThreadScheduledExecutor();
  private final Store<State> store;
  private final Twig twig;
  
  NexusWrapper(Twig paramTwig, OkHttpClient paramOkHttpClient, b paramb, Store<State> paramStore, long paramLong)
  {
    super(paramTwig, paramOkHttpClient);
    this.twig = paramTwig;
    this.bus = paramb;
    this.store = paramStore;
    this.debouncePeriodMs = paramLong;
  }
  
  private void logKnownEvent(NexusEvent paramNexusEvent)
  {
    this.twig.internal("Nexus", "Received " + paramNexusEvent.getEventType() + " event");
  }
  
  private void removeCallbacks()
  {
    if (this.actionFuture != null) {
      this.actionFuture.cancel(false);
    }
  }
  
  public void connect(final NexusConfig paramNexusConfig, final boolean paramBoolean)
  {
    if (paramNexusConfig.getEndpoints().isEmpty())
    {
      this.twig.w("No realtime endpoints present so we can't connect", new Object[0]);
      return;
    }
    removeCallbacks();
    this.actionFuture = this.executor.schedule(new Runnable()
    {
      public void run()
      {
        NexusWrapper.this.connectNow(paramNexusConfig, paramBoolean);
      }
    }, this.debouncePeriodMs, TimeUnit.MILLISECONDS);
  }
  
  void connectNow(NexusConfig paramNexusConfig, boolean paramBoolean)
  {
    if (isConnected()) {
      return;
    }
    super.connect(paramNexusConfig, paramBoolean);
    setTopics(Collections.singletonList("*"));
    addEventListener(this);
  }
  
  public void disconnect()
  {
    removeCallbacks();
    this.actionFuture = this.executor.schedule(new Runnable()
    {
      public void run()
      {
        NexusWrapper.this.disconnectNow();
      }
    }, this.debouncePeriodMs, TimeUnit.MILLISECONDS);
  }
  
  void disconnectNow()
  {
    removeEventListener(this);
    super.disconnect();
  }
  
  public void notifyEvent(NexusEvent paramNexusEvent)
  {
    String str1 = paramNexusEvent.getEventData().optString("conversationId");
    switch (paramNexusEvent.getEventType())
    {
    default: 
      this.twig.internal("Nexus", "Unexpected event: " + paramNexusEvent.getEventType());
      return;
    case ???: 
      logKnownEvent(paramNexusEvent);
      String str2 = paramNexusEvent.getEventData().optString("adminId");
      String str3 = paramNexusEvent.getEventData().optString("adminName");
      paramNexusEvent = paramNexusEvent.getEventData().optString("adminAvatar");
      this.bus.post(new AdminIsTypingEvent(str2, str1, str3, paramNexusEvent));
      return;
    case ???: 
      logKnownEvent(paramNexusEvent);
      this.store.dispatch(Actions.newCommentEventReceived(str1));
      return;
    case ???: 
      logKnownEvent(paramNexusEvent);
      this.bus.post(new UserContentSeenByAdminEvent(str1));
      return;
    }
    logKnownEvent(paramNexusEvent);
    this.store.dispatch(Actions.conversationMarkedAsRead(str1));
  }
  
  public void onConnect() {}
  
  public void onConnectFailed() {}
  
  public void onShutdown() {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/NexusWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */