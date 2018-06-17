package io.intercom.okhttp3.internal.ws;

import io.intercom.b.d;
import io.intercom.b.e;
import io.intercom.b.f;
import io.intercom.b.l;
import io.intercom.okhttp3.Call;
import io.intercom.okhttp3.Callback;
import io.intercom.okhttp3.EventListener;
import io.intercom.okhttp3.OkHttpClient;
import io.intercom.okhttp3.OkHttpClient.Builder;
import io.intercom.okhttp3.Protocol;
import io.intercom.okhttp3.Request;
import io.intercom.okhttp3.Request.Builder;
import io.intercom.okhttp3.Response;
import io.intercom.okhttp3.WebSocket;
import io.intercom.okhttp3.WebSocketListener;
import io.intercom.okhttp3.internal.Internal;
import io.intercom.okhttp3.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class RealWebSocket
  implements WebSocket, WebSocketReader.FrameCallback
{
  private static final long CANCEL_AFTER_CLOSE_MILLIS = 60000L;
  private static final long MAX_QUEUE_SIZE = 16777216L;
  private static final List<Protocol> ONLY_HTTP1;
  private Call call;
  private ScheduledFuture<?> cancelFuture;
  private boolean enqueuedClose;
  private ScheduledExecutorService executor;
  private boolean failed;
  private final String key;
  final WebSocketListener listener;
  private final ArrayDeque<Object> messageAndCloseQueue = new ArrayDeque();
  private final Request originalRequest;
  int pingCount;
  int pongCount;
  private final ArrayDeque<f> pongQueue = new ArrayDeque();
  private long queueSize;
  private final Random random;
  private WebSocketReader reader;
  private int receivedCloseCode = -1;
  private String receivedCloseReason;
  private Streams streams;
  private WebSocketWriter writer;
  private final Runnable writerRunnable;
  
  static
  {
    if (!RealWebSocket.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      ONLY_HTTP1 = Collections.singletonList(Protocol.HTTP_1_1);
      return;
    }
  }
  
  public RealWebSocket(Request paramRequest, WebSocketListener paramWebSocketListener, Random paramRandom)
  {
    if (!"GET".equals(paramRequest.method())) {
      throw new IllegalArgumentException("Request must be GET: " + paramRequest.method());
    }
    this.originalRequest = paramRequest;
    this.listener = paramWebSocketListener;
    this.random = paramRandom;
    paramRequest = new byte[16];
    paramRandom.nextBytes(paramRequest);
    this.key = f.H(paramRequest).KF();
    this.writerRunnable = new Runnable()
    {
      public void run()
      {
        try
        {
          boolean bool;
          do
          {
            bool = RealWebSocket.this.writeOneFrame();
          } while (bool);
          return;
        }
        catch (IOException localIOException)
        {
          RealWebSocket.this.failWebSocket(localIOException, null);
        }
      }
    };
  }
  
  private void runWriter()
  {
    assert (Thread.holdsLock(this));
    if (this.executor != null) {
      this.executor.execute(this.writerRunnable);
    }
  }
  
  private boolean send(f paramf, int paramInt)
  {
    boolean bool2 = false;
    for (boolean bool1 = bool2;; bool1 = true)
    {
      try
      {
        if (!this.failed)
        {
          bool1 = this.enqueuedClose;
          if (!bool1) {
            break label31;
          }
        }
        for (bool1 = bool2;; bool1 = bool2)
        {
          return bool1;
          label31:
          if (this.queueSize + paramf.size() <= 16777216L) {
            break;
          }
          close(1001, null);
        }
        this.queueSize += paramf.size();
      }
      finally {}
      this.messageAndCloseQueue.add(new Message(paramInt, paramf));
      runWriter();
    }
  }
  
  final void awaitTermination(int paramInt, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    this.executor.awaitTermination(paramInt, paramTimeUnit);
  }
  
  public final void cancel()
  {
    this.call.cancel();
  }
  
  final void checkResponse(Response paramResponse)
    throws ProtocolException
  {
    if (paramResponse.code() != 101) {
      throw new ProtocolException("Expected HTTP 101 response but was '" + paramResponse.code() + " " + paramResponse.message() + "'");
    }
    String str = paramResponse.header("Connection");
    if (!"Upgrade".equalsIgnoreCase(str)) {
      throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + str + "'");
    }
    str = paramResponse.header("Upgrade");
    if (!"websocket".equalsIgnoreCase(str)) {
      throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + str + "'");
    }
    paramResponse = paramResponse.header("Sec-WebSocket-Accept");
    str = f.fh(this.key + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").KH().KF();
    if (!str.equals(paramResponse)) {
      throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + str + "' but was '" + paramResponse + "'");
    }
  }
  
  public final boolean close(int paramInt, String paramString)
  {
    return close(paramInt, paramString, 60000L);
  }
  
  final boolean close(int paramInt, String paramString, long paramLong)
  {
    boolean bool1 = true;
    Object localObject;
    try
    {
      WebSocketProtocol.validateCloseCode(paramInt);
      localObject = null;
      if (paramString != null)
      {
        f localf = f.fh(paramString);
        localObject = localf;
        if (localf.size() > 123L) {
          throw new IllegalArgumentException("reason.size() > 123: " + paramString);
        }
      }
    }
    finally {}
    if (!this.failed)
    {
      boolean bool2 = this.enqueuedClose;
      if (!bool2) {}
    }
    else
    {
      bool1 = false;
    }
    for (;;)
    {
      return bool1;
      this.enqueuedClose = true;
      this.messageAndCloseQueue.add(new Close(paramInt, (f)localObject, paramLong));
      runWriter();
    }
  }
  
  public final void connect(OkHttpClient paramOkHttpClient)
  {
    paramOkHttpClient = paramOkHttpClient.newBuilder().eventListener(EventListener.NONE).protocols(ONLY_HTTP1).build();
    final int i = paramOkHttpClient.pingIntervalMillis();
    final Request localRequest = this.originalRequest.newBuilder().header("Upgrade", "websocket").header("Connection", "Upgrade").header("Sec-WebSocket-Key", this.key).header("Sec-WebSocket-Version", "13").build();
    this.call = Internal.instance.newWebSocketCall(paramOkHttpClient, localRequest);
    this.call.enqueue(new Callback()
    {
      public void onFailure(Call paramAnonymousCall, IOException paramAnonymousIOException)
      {
        RealWebSocket.this.failWebSocket(paramAnonymousIOException, null);
      }
      
      /* Error */
      public void onResponse(Call paramAnonymousCall, Response paramAnonymousResponse)
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 21	io/intercom/okhttp3/internal/ws/RealWebSocket$2:this$0	Lio/intercom/okhttp3/internal/ws/RealWebSocket;
        //   4: aload_2
        //   5: invokevirtual 45	io/intercom/okhttp3/internal/ws/RealWebSocket:checkResponse	(Lio/intercom/okhttp3/Response;)V
        //   8: getstatic 51	io/intercom/okhttp3/internal/Internal:instance	Lio/intercom/okhttp3/internal/Internal;
        //   11: aload_1
        //   12: invokevirtual 55	io/intercom/okhttp3/internal/Internal:streamAllocation	(Lio/intercom/okhttp3/Call;)Lio/intercom/okhttp3/internal/connection/StreamAllocation;
        //   15: astore_1
        //   16: aload_1
        //   17: invokevirtual 60	io/intercom/okhttp3/internal/connection/StreamAllocation:noNewStreams	()V
        //   20: aload_1
        //   21: invokevirtual 64	io/intercom/okhttp3/internal/connection/StreamAllocation:connection	()Lio/intercom/okhttp3/internal/connection/RealConnection;
        //   24: aload_1
        //   25: invokevirtual 70	io/intercom/okhttp3/internal/connection/RealConnection:newWebSocketStreams	(Lio/intercom/okhttp3/internal/connection/StreamAllocation;)Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;
        //   28: astore_3
        //   29: aload_0
        //   30: getfield 21	io/intercom/okhttp3/internal/ws/RealWebSocket$2:this$0	Lio/intercom/okhttp3/internal/ws/RealWebSocket;
        //   33: getfield 74	io/intercom/okhttp3/internal/ws/RealWebSocket:listener	Lio/intercom/okhttp3/WebSocketListener;
        //   36: aload_0
        //   37: getfield 21	io/intercom/okhttp3/internal/ws/RealWebSocket$2:this$0	Lio/intercom/okhttp3/internal/ws/RealWebSocket;
        //   40: aload_2
        //   41: invokevirtual 80	io/intercom/okhttp3/WebSocketListener:onOpen	(Lio/intercom/okhttp3/WebSocket;Lio/intercom/okhttp3/Response;)V
        //   44: new 82	java/lang/StringBuilder
        //   47: dup
        //   48: ldc 84
        //   50: invokespecial 87	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   53: aload_0
        //   54: getfield 23	io/intercom/okhttp3/internal/ws/RealWebSocket$2:val$request	Lio/intercom/okhttp3/Request;
        //   57: invokevirtual 93	io/intercom/okhttp3/Request:url	()Lio/intercom/okhttp3/HttpUrl;
        //   60: invokevirtual 99	io/intercom/okhttp3/HttpUrl:redact	()Ljava/lang/String;
        //   63: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   66: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   69: astore_2
        //   70: aload_0
        //   71: getfield 21	io/intercom/okhttp3/internal/ws/RealWebSocket$2:this$0	Lio/intercom/okhttp3/internal/ws/RealWebSocket;
        //   74: aload_2
        //   75: aload_0
        //   76: getfield 25	io/intercom/okhttp3/internal/ws/RealWebSocket$2:val$pingIntervalMillis	I
        //   79: i2l
        //   80: aload_3
        //   81: invokevirtual 110	io/intercom/okhttp3/internal/ws/RealWebSocket:initReaderAndWriter	(Ljava/lang/String;JLio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;)V
        //   84: aload_1
        //   85: invokevirtual 64	io/intercom/okhttp3/internal/connection/StreamAllocation:connection	()Lio/intercom/okhttp3/internal/connection/RealConnection;
        //   88: invokevirtual 114	io/intercom/okhttp3/internal/connection/RealConnection:socket	()Ljava/net/Socket;
        //   91: iconst_0
        //   92: invokevirtual 120	java/net/Socket:setSoTimeout	(I)V
        //   95: aload_0
        //   96: getfield 21	io/intercom/okhttp3/internal/ws/RealWebSocket$2:this$0	Lio/intercom/okhttp3/internal/ws/RealWebSocket;
        //   99: invokevirtual 123	io/intercom/okhttp3/internal/ws/RealWebSocket:loopReader	()V
        //   102: return
        //   103: astore_1
        //   104: aload_0
        //   105: getfield 21	io/intercom/okhttp3/internal/ws/RealWebSocket$2:this$0	Lio/intercom/okhttp3/internal/ws/RealWebSocket;
        //   108: aload_1
        //   109: aload_2
        //   110: invokevirtual 35	io/intercom/okhttp3/internal/ws/RealWebSocket:failWebSocket	(Ljava/lang/Exception;Lio/intercom/okhttp3/Response;)V
        //   113: aload_2
        //   114: invokestatic 129	io/intercom/okhttp3/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
        //   117: return
        //   118: astore_1
        //   119: aload_0
        //   120: getfield 21	io/intercom/okhttp3/internal/ws/RealWebSocket$2:this$0	Lio/intercom/okhttp3/internal/ws/RealWebSocket;
        //   123: aload_1
        //   124: aconst_null
        //   125: invokevirtual 35	io/intercom/okhttp3/internal/ws/RealWebSocket:failWebSocket	(Ljava/lang/Exception;Lio/intercom/okhttp3/Response;)V
        //   128: return
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	129	0	this	2
        //   0	129	1	paramAnonymousCall	Call
        //   0	129	2	paramAnonymousResponse	Response
        //   28	53	3	localStreams	RealWebSocket.Streams
        // Exception table:
        //   from	to	target	type
        //   0	8	103	java/net/ProtocolException
        //   29	102	118	java/lang/Exception
      }
    });
  }
  
  /* Error */
  public final void failWebSocket(Exception paramException, @javax.annotation.Nullable Response paramResponse)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 193	io/intercom/okhttp3/internal/ws/RealWebSocket:failed	Z
    //   6: ifeq +6 -> 12
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: aload_0
    //   13: iconst_1
    //   14: putfield 193	io/intercom/okhttp3/internal/ws/RealWebSocket:failed	Z
    //   17: aload_0
    //   18: getfield 371	io/intercom/okhttp3/internal/ws/RealWebSocket:streams	Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;
    //   21: astore_3
    //   22: aload_0
    //   23: aconst_null
    //   24: putfield 371	io/intercom/okhttp3/internal/ws/RealWebSocket:streams	Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;
    //   27: aload_0
    //   28: getfield 373	io/intercom/okhttp3/internal/ws/RealWebSocket:cancelFuture	Ljava/util/concurrent/ScheduledFuture;
    //   31: ifnull +14 -> 45
    //   34: aload_0
    //   35: getfield 373	io/intercom/okhttp3/internal/ws/RealWebSocket:cancelFuture	Ljava/util/concurrent/ScheduledFuture;
    //   38: iconst_0
    //   39: invokeinterface 378 2 0
    //   44: pop
    //   45: aload_0
    //   46: getfield 183	io/intercom/okhttp3/internal/ws/RealWebSocket:executor	Ljava/util/concurrent/ScheduledExecutorService;
    //   49: ifnull +12 -> 61
    //   52: aload_0
    //   53: getfield 183	io/intercom/okhttp3/internal/ws/RealWebSocket:executor	Ljava/util/concurrent/ScheduledExecutorService;
    //   56: invokeinterface 381 1 0
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_0
    //   64: getfield 148	io/intercom/okhttp3/internal/ws/RealWebSocket:listener	Lio/intercom/okhttp3/WebSocketListener;
    //   67: aload_0
    //   68: aload_1
    //   69: aload_2
    //   70: invokevirtual 387	io/intercom/okhttp3/WebSocketListener:onFailure	(Lio/intercom/okhttp3/WebSocket;Ljava/lang/Throwable;Lio/intercom/okhttp3/Response;)V
    //   73: aload_3
    //   74: invokestatic 393	io/intercom/okhttp3/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   77: return
    //   78: astore_1
    //   79: aload_0
    //   80: monitorexit
    //   81: aload_1
    //   82: athrow
    //   83: astore_1
    //   84: aload_3
    //   85: invokestatic 393	io/intercom/okhttp3/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   88: aload_1
    //   89: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	this	RealWebSocket
    //   0	90	1	paramException	Exception
    //   0	90	2	paramResponse	Response
    //   21	64	3	localStreams	Streams
    // Exception table:
    //   from	to	target	type
    //   2	11	78	finally
    //   12	45	78	finally
    //   45	61	78	finally
    //   61	63	78	finally
    //   79	81	78	finally
    //   63	73	83	finally
  }
  
  public final void initReaderAndWriter(String paramString, long paramLong, Streams paramStreams)
    throws IOException
  {
    try
    {
      this.streams = paramStreams;
      this.writer = new WebSocketWriter(paramStreams.client, paramStreams.sink, this.random);
      this.executor = new ScheduledThreadPoolExecutor(1, Util.threadFactory(paramString, false));
      if (paramLong != 0L) {
        this.executor.scheduleAtFixedRate(new PingRunnable(), paramLong, paramLong, TimeUnit.MILLISECONDS);
      }
      if (!this.messageAndCloseQueue.isEmpty()) {
        runWriter();
      }
      this.reader = new WebSocketReader(paramStreams.client, paramStreams.source, this);
      return;
    }
    finally {}
  }
  
  public final void loopReader()
    throws IOException
  {
    while (this.receivedCloseCode == -1) {
      this.reader.processNextFrame();
    }
  }
  
  public final void onReadClose(int paramInt, String paramString)
  {
    if (paramInt == -1) {
      throw new IllegalArgumentException();
    }
    try
    {
      if (this.receivedCloseCode != -1) {
        throw new IllegalStateException("already closed");
      }
    }
    finally {}
    this.receivedCloseCode = paramInt;
    this.receivedCloseReason = paramString;
    Streams localStreams;
    if ((this.enqueuedClose) && (this.messageAndCloseQueue.isEmpty()))
    {
      localStreams = this.streams;
      this.streams = null;
      if (this.cancelFuture != null) {
        this.cancelFuture.cancel(false);
      }
      this.executor.shutdown();
    }
    for (;;)
    {
      try
      {
        this.listener.onClosing(this, paramInt, paramString);
        if (localStreams != null) {
          this.listener.onClosed(this, paramInt, paramString);
        }
        return;
      }
      finally
      {
        Util.closeQuietly(localStreams);
      }
      localStreams = null;
    }
  }
  
  public final void onReadMessage(f paramf)
    throws IOException
  {
    this.listener.onMessage(this, paramf);
  }
  
  public final void onReadMessage(String paramString)
    throws IOException
  {
    this.listener.onMessage(this, paramString);
  }
  
  /* Error */
  public final void onReadPing(f paramf)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 193	io/intercom/okhttp3/internal/ws/RealWebSocket:failed	Z
    //   6: ifne +22 -> 28
    //   9: aload_0
    //   10: getfield 195	io/intercom/okhttp3/internal/ws/RealWebSocket:enqueuedClose	Z
    //   13: ifeq +18 -> 31
    //   16: aload_0
    //   17: getfield 111	io/intercom/okhttp3/internal/ws/RealWebSocket:messageAndCloseQueue	Ljava/util/ArrayDeque;
    //   20: invokevirtual 435	java/util/ArrayDeque:isEmpty	()Z
    //   23: istore_2
    //   24: iload_2
    //   25: ifeq +6 -> 31
    //   28: aload_0
    //   29: monitorexit
    //   30: return
    //   31: aload_0
    //   32: getfield 109	io/intercom/okhttp3/internal/ws/RealWebSocket:pongQueue	Ljava/util/ArrayDeque;
    //   35: aload_1
    //   36: invokevirtual 211	java/util/ArrayDeque:add	(Ljava/lang/Object;)Z
    //   39: pop
    //   40: aload_0
    //   41: invokespecial 213	io/intercom/okhttp3/internal/ws/RealWebSocket:runWriter	()V
    //   44: aload_0
    //   45: aload_0
    //   46: getfield 479	io/intercom/okhttp3/internal/ws/RealWebSocket:pingCount	I
    //   49: iconst_1
    //   50: iadd
    //   51: putfield 479	io/intercom/okhttp3/internal/ws/RealWebSocket:pingCount	I
    //   54: goto -26 -> 28
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	RealWebSocket
    //   0	62	1	paramf	f
    //   23	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	24	57	finally
    //   31	54	57	finally
  }
  
  public final void onReadPong(f paramf)
  {
    try
    {
      this.pongCount += 1;
      return;
    }
    finally
    {
      paramf = finally;
      throw paramf;
    }
  }
  
  final int pingCount()
  {
    try
    {
      int i = this.pingCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  final boolean pong(f paramf)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 193	io/intercom/okhttp3/internal/ws/RealWebSocket:failed	Z
    //   6: ifne +22 -> 28
    //   9: aload_0
    //   10: getfield 195	io/intercom/okhttp3/internal/ws/RealWebSocket:enqueuedClose	Z
    //   13: ifeq +21 -> 34
    //   16: aload_0
    //   17: getfield 111	io/intercom/okhttp3/internal/ws/RealWebSocket:messageAndCloseQueue	Ljava/util/ArrayDeque;
    //   20: invokevirtual 435	java/util/ArrayDeque:isEmpty	()Z
    //   23: istore_2
    //   24: iload_2
    //   25: ifeq +9 -> 34
    //   28: iconst_0
    //   29: istore_2
    //   30: aload_0
    //   31: monitorexit
    //   32: iload_2
    //   33: ireturn
    //   34: aload_0
    //   35: getfield 109	io/intercom/okhttp3/internal/ws/RealWebSocket:pongQueue	Ljava/util/ArrayDeque;
    //   38: aload_1
    //   39: invokevirtual 211	java/util/ArrayDeque:add	(Ljava/lang/Object;)Z
    //   42: pop
    //   43: aload_0
    //   44: invokespecial 213	io/intercom/okhttp3/internal/ws/RealWebSocket:runWriter	()V
    //   47: iconst_1
    //   48: istore_2
    //   49: goto -19 -> 30
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	RealWebSocket
    //   0	57	1	paramf	f
    //   23	26	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	24	52	finally
    //   34	47	52	finally
  }
  
  final int pongCount()
  {
    try
    {
      int i = this.pongCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final boolean processNextFrame()
    throws IOException
  {
    boolean bool = false;
    try
    {
      this.reader.processNextFrame();
      int i = this.receivedCloseCode;
      if (i == -1) {
        bool = true;
      }
      return bool;
    }
    catch (Exception localException)
    {
      failWebSocket(localException, null);
    }
    return false;
  }
  
  public final long queueSize()
  {
    try
    {
      long l = this.queueSize;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final Request request()
  {
    return this.originalRequest;
  }
  
  public final boolean send(f paramf)
  {
    if (paramf == null) {
      throw new NullPointerException("bytes == null");
    }
    return send(paramf, 2);
  }
  
  public final boolean send(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("text == null");
    }
    return send(f.fh(paramString), 1);
  }
  
  final void tearDown()
    throws InterruptedException
  {
    if (this.cancelFuture != null) {
      this.cancelFuture.cancel(false);
    }
    this.executor.shutdown();
    this.executor.awaitTermination(10L, TimeUnit.SECONDS);
  }
  
  final boolean writeOneFrame()
    throws IOException
  {
    for (;;)
    {
      WebSocketWriter localWebSocketWriter;
      f localf;
      int i;
      Object localObject7;
      try
      {
        if (this.failed) {
          return false;
        }
        localWebSocketWriter = this.writer;
        localf = (f)this.pongQueue.poll();
        if (localf != null) {
          break label323;
        }
        localObject1 = this.messageAndCloseQueue.poll();
        if ((localObject1 instanceof Close))
        {
          i = this.receivedCloseCode;
          localObject7 = this.receivedCloseReason;
          if (i != -1)
          {
            localObject3 = this.streams;
            this.streams = null;
            this.executor.shutdown();
            localObject8 = localObject1;
            localObject1 = localObject3;
            localObject3 = localObject8;
            if (localf == null) {
              break label169;
            }
          }
        }
      }
      finally {}
      try
      {
        localWebSocketWriter.writePong(localf);
        Util.closeQuietly((Closeable)localObject1);
        return true;
      }
      finally
      {
        Util.closeQuietly(localCloseable);
      }
      this.cancelFuture = this.executor.schedule(new CancelRunnable(), ((Close)localObject1).cancelAfterCloseMillis, TimeUnit.MILLISECONDS);
      Object localObject8 = null;
      Object localObject3 = localObject1;
      Object localObject1 = localObject8;
      continue;
      label169:
      Object localObject6;
      if (localObject1 == null)
      {
        return false;
        if ((localObject3 instanceof Message))
        {
          localObject7 = ((Message)localObject3).data;
          localObject3 = l.b(localWebSocketWriter.newMessageSink(((Message)localObject3).formatOpcode, ((f)localObject7).size()));
          ((d)localObject3).c((f)localObject7);
          ((d)localObject3).close();
          try
          {
            this.queueSize -= ((f)localObject7).size();
            continue;
          }
          finally {}
        }
        else if ((localObject5 instanceof Close))
        {
          localObject6 = (Close)localObject5;
          localWebSocketWriter.writeClose(((Close)localObject6).code, ((Close)localObject6).reason);
          if (localCloseable != null) {
            this.listener.onClosed(this, i, (String)localObject7);
          }
        }
        else
        {
          throw new AssertionError();
        }
      }
      else
      {
        localObject8 = null;
        localObject7 = null;
        i = 0;
        localObject6 = localCloseable;
        Object localObject2 = localObject8;
        continue;
        label323:
        localObject2 = null;
        localObject7 = null;
        i = 0;
        localObject6 = null;
      }
    }
  }
  
  /* Error */
  final void writePingFrame()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 193	io/intercom/okhttp3/internal/ws/RealWebSocket:failed	Z
    //   6: ifeq +6 -> 12
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: aload_0
    //   13: getfield 412	io/intercom/okhttp3/internal/ws/RealWebSocket:writer	Lio/intercom/okhttp3/internal/ws/WebSocketWriter;
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: getstatic 558	io/intercom/b/f:cTY	Lio/intercom/b/f;
    //   23: invokevirtual 561	io/intercom/okhttp3/internal/ws/WebSocketWriter:writePing	(Lio/intercom/b/f;)V
    //   26: return
    //   27: astore_1
    //   28: aload_0
    //   29: aload_1
    //   30: aconst_null
    //   31: invokevirtual 488	io/intercom/okhttp3/internal/ws/RealWebSocket:failWebSocket	(Ljava/lang/Exception;Lio/intercom/okhttp3/Response;)V
    //   34: return
    //   35: astore_1
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_1
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	RealWebSocket
    //   16	4	1	localWebSocketWriter	WebSocketWriter
    //   27	3	1	localIOException	IOException
    //   35	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   19	26	27	java/io/IOException
    //   2	11	35	finally
    //   12	19	35	finally
    //   36	38	35	finally
  }
  
  final class CancelRunnable
    implements Runnable
  {
    CancelRunnable() {}
    
    public final void run()
    {
      RealWebSocket.this.cancel();
    }
  }
  
  static final class Close
  {
    final long cancelAfterCloseMillis;
    final int code;
    final f reason;
    
    Close(int paramInt, f paramf, long paramLong)
    {
      this.code = paramInt;
      this.reason = paramf;
      this.cancelAfterCloseMillis = paramLong;
    }
  }
  
  static final class Message
  {
    final f data;
    final int formatOpcode;
    
    Message(int paramInt, f paramf)
    {
      this.formatOpcode = paramInt;
      this.data = paramf;
    }
  }
  
  private final class PingRunnable
    implements Runnable
  {
    PingRunnable() {}
    
    public final void run()
    {
      RealWebSocket.this.writePingFrame();
    }
  }
  
  public static abstract class Streams
    implements Closeable
  {
    public final boolean client;
    public final d sink;
    public final e source;
    
    public Streams(boolean paramBoolean, e parame, d paramd)
    {
      this.client = paramBoolean;
      this.source = parame;
      this.sink = paramd;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/ws/RealWebSocket.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */