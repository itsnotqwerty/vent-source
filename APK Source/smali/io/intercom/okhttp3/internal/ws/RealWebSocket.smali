.class public final Lio/intercom/okhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/WebSocket;
.implements Lio/intercom/okhttp3/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/internal/ws/RealWebSocket$CancelRunnable;,
        Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;,
        Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;,
        Lio/intercom/okhttp3/internal/ws/RealWebSocket$Message;,
        Lio/intercom/okhttp3/internal/ws/RealWebSocket$PingRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CANCEL_AFTER_CLOSE_MILLIS:J = 0xea60L

.field private static final MAX_QUEUE_SIZE:J = 0x1000000L

.field private static final ONLY_HTTP1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private call:Lio/intercom/okhttp3/Call;

.field private cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private enqueuedClose:Z

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private failed:Z

.field private final key:Ljava/lang/String;

.field final listener:Lio/intercom/okhttp3/WebSocketListener;

.field private final messageAndCloseQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRequest:Lio/intercom/okhttp3/Request;

.field pingCount:I

.field pongCount:I

.field private final pongQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lio/intercom/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:J

.field private final random:Ljava/util/Random;

.field private reader:Lio/intercom/okhttp3/internal/ws/WebSocketReader;

.field private receivedCloseCode:I

.field private receivedCloseReason:Ljava/lang/String;

.field private streams:Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;

.field private writer:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

.field private final writerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->$assertionsDisabled:Z

    sget-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/WebSocketListener;Ljava/util/Random;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    const/4 v0, -0x1

    iput v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const-string v0, "GET"

    invoke-virtual {p1}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request must be GET: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->originalRequest:Lio/intercom/okhttp3/Request;

    iput-object p2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->listener:Lio/intercom/okhttp3/WebSocketListener;

    iput-object p3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p3, v0}, Ljava/util/Random;->nextBytes([B)V

    invoke-static {v0}, Lio/intercom/b/f;->H([B)Lio/intercom/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/b/f;->KF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    new-instance v0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$1;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/internal/ws/RealWebSocket$1;-><init>(Lio/intercom/okhttp3/internal/ws/RealWebSocket;)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private runWriter()V
    .locals 2

    sget-boolean v0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized send(Lio/intercom/b/f;I)Z
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-wide v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lio/intercom/b/f;->size()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-wide v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lio/intercom/b/f;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Message;

    invoke-direct {v1, p2, p1}, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Message;-><init>(ILio/intercom/b/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final awaitTermination(ILjava/util/concurrent/TimeUnit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3, p2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->call:Lio/intercom/okhttp3/Call;

    invoke-interface {v0}, Lio/intercom/okhttp3/Call;->cancel()V

    return-void
.end method

.method final checkResponse(Lio/intercom/okhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected HTTP 101 response but was \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "Upgrade"

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/b/f;->KH()Lio/intercom/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/b/f;->KF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' but was \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-void
.end method

.method public final close(ILjava/lang/String;)Z
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method final declared-synchronized close(ILjava/lang/String;J)Z
    .locals 7

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lio/intercom/okhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/b/f;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x7b

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reason.size() > 123: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    iget-object v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v3, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;

    invoke-direct {v3, p1, v1, p3, p4}, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;-><init>(ILio/intercom/b/f;J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final connect(Lio/intercom/okhttp3/OkHttpClient;)V
    .locals 5

    invoke-virtual {p1}, Lio/intercom/okhttp3/OkHttpClient;->newBuilder()Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lio/intercom/okhttp3/EventListener;->NONE:Lio/intercom/okhttp3/EventListener;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->eventListener(Lio/intercom/okhttp3/EventListener;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient$Builder;->build()Lio/intercom/okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v1

    iget-object v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->originalRequest:Lio/intercom/okhttp3/Request;

    invoke-virtual {v2}, Lio/intercom/okhttp3/Request;->newBuilder()Lio/intercom/okhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Upgrade"

    const-string v4, "websocket"

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Connection"

    const-string v4, "Upgrade"

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Key"

    iget-object v4, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Version"

    const-string v4, "13"

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v2

    sget-object v3, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    invoke-virtual {v3, v0, v2}, Lio/intercom/okhttp3/internal/Internal;->newWebSocketCall(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->call:Lio/intercom/okhttp3/Call;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->call:Lio/intercom/okhttp3/Call;

    new-instance v3, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;

    invoke-direct {v3, p0, v2, v1}, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;-><init>(Lio/intercom/okhttp3/internal/ws/RealWebSocket;Lio/intercom/okhttp3/Request;I)V

    invoke-interface {v0, v3}, Lio/intercom/okhttp3/Call;->enqueue(Lio/intercom/okhttp3/Callback;)V

    return-void
.end method

.method public final failWebSocket(Ljava/lang/Exception;Lio/intercom/okhttp3/Response;)V
    .locals 3
    .param p2    # Lio/intercom/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failed:Z

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->streams:Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->streams:Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->listener:Lio/intercom/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lio/intercom/okhttp3/WebSocketListener;->onFailure(Lio/intercom/okhttp3/WebSocket;Ljava/lang/Throwable;Lio/intercom/okhttp3/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final initReaderAndWriter(Ljava/lang/String;JLio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p4, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->streams:Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;

    new-instance v0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    iget-boolean v1, p4, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p4, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;->sink:Lio/intercom/b/d;

    iget-object v3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;-><init>(ZLio/intercom/b/d;Ljava/util/Random;)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->writer:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lio/intercom/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/intercom/okhttp3/internal/ws/RealWebSocket$PingRunnable;

    invoke-direct {v1, p0}, Lio/intercom/okhttp3/internal/ws/RealWebSocket$PingRunnable;-><init>(Lio/intercom/okhttp3/internal/ws/RealWebSocket;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p2

    move-wide v4, p2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->runWriter()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lio/intercom/okhttp3/internal/ws/WebSocketReader;

    iget-boolean v1, p4, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p4, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;->source:Lio/intercom/b/e;

    invoke-direct {v0, v1, v2, p0}, Lio/intercom/okhttp3/internal/ws/WebSocketReader;-><init>(ZLio/intercom/b/e;Lio/intercom/okhttp3/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->reader:Lio/intercom/okhttp3/internal/ws/WebSocketReader;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final loopReader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->reader:Lio/intercom/okhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onReadClose(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iput p1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    iput-object p2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    iget-boolean v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->streams:Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->streams:Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    move-object v1, v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->listener:Lio/intercom/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lio/intercom/okhttp3/WebSocketListener;->onClosing(Lio/intercom/okhttp3/WebSocket;ILjava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->listener:Lio/intercom/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lio/intercom/okhttp3/WebSocketListener;->onClosed(Lio/intercom/okhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public final onReadMessage(Lio/intercom/b/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->listener:Lio/intercom/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lio/intercom/okhttp3/WebSocketListener;->onMessage(Lio/intercom/okhttp3/WebSocket;Lio/intercom/b/f;)V

    return-void
.end method

.method public final onReadMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->listener:Lio/intercom/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lio/intercom/okhttp3/WebSocketListener;->onMessage(Lio/intercom/okhttp3/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized onReadPing(Lio/intercom/b/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->runWriter()V

    iget v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->pingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->pingCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onReadPong(Lio/intercom/b/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->pongCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->pongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized pingCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->pingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized pong(Lio/intercom/b/f;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized pongCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->pongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final processNextFrame()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->reader:Lio/intercom/okhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v1}, Lio/intercom/okhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    iget v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lio/intercom/okhttp3/Response;)V

    goto :goto_0
.end method

.method public final declared-synchronized queueSize()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->queueSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final request()Lio/intercom/okhttp3/Request;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->originalRequest:Lio/intercom/okhttp3/Request;

    return-object v0
.end method

.method public final send(Lio/intercom/b/f;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->send(Lio/intercom/b/f;I)Z

    move-result v0

    return v0
.end method

.method public final send(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->send(Lio/intercom/b/f;I)Z

    move-result v0

    return v0
.end method

.method final tearDown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method final writeOneFrame()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v2, :cond_0

    monitor-exit p0

    move v2, v5

    :goto_0
    return v2

    :cond_0
    iget-object v10, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->writer:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/intercom/b/f;

    if-nez v2, :cond_8

    iget-object v3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    instance-of v3, v4, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v3, :cond_3

    iget v9, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    iget-object v8, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    const/4 v3, -0x1

    if-eq v9, v3, :cond_2

    iget-object v5, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->streams:Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;

    const/4 v3, 0x0

    iput-object v3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->streams:Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;

    iget-object v3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    move-object v6, v5

    move-object v3, v4

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v10, v2}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writePong(Lio/intercom/b/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    :goto_2
    invoke-static {v6}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v5, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lio/intercom/okhttp3/internal/ws/RealWebSocket$CancelRunnable;

    invoke-direct {v6, p0}, Lio/intercom/okhttp3/internal/ws/RealWebSocket$CancelRunnable;-><init>(Lio/intercom/okhttp3/internal/ws/RealWebSocket;)V

    move-object v0, v4

    check-cast v0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;

    move-object v3, v0

    iget-wide v12, v3, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v12, v13, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    move-object v6, v7

    move-object v3, v4

    goto :goto_1

    :cond_3
    if-nez v4, :cond_7

    monitor-exit p0

    move v2, v5

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_4
    :try_start_3
    instance-of v2, v3, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Message;

    if-eqz v2, :cond_5

    move-object v0, v3

    check-cast v0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Message;

    move-object v2, v0

    iget-object v2, v2, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Message;->data:Lio/intercom/b/f;

    check-cast v3, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Message;

    iget v3, v3, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    invoke-virtual {v2}, Lio/intercom/b/f;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v10, v3, v4, v5}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->newMessageSink(IJ)Lio/intercom/b/r;

    move-result-object v3

    invoke-static {v3}, Lio/intercom/b/l;->b(Lio/intercom/b/r;)Lio/intercom/b/d;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/intercom/b/d;->c(Lio/intercom/b/f;)Lio/intercom/b/d;

    invoke-interface {v3}, Lio/intercom/b/d;->close()V

    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-wide v4, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {v2}, Lio/intercom/b/f;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v4, v2

    iput-wide v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v6}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :cond_5
    :try_start_6
    instance-of v2, v3, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v2, :cond_6

    check-cast v3, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;

    iget v2, v3, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;->code:I

    iget-object v3, v3, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;->reason:Lio/intercom/b/f;

    invoke-virtual {v10, v2, v3}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writeClose(ILio/intercom/b/f;)V

    if-eqz v6, :cond_1

    iget-object v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->listener:Lio/intercom/okhttp3/WebSocketListener;

    invoke-virtual {v2, p0, v9, v8}, Lio/intercom/okhttp3/WebSocketListener;->onClosed(Lio/intercom/okhttp3/WebSocket;ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_7
    move-object v6, v7

    move-object v8, v7

    move v9, v5

    move-object v3, v4

    goto/16 :goto_1

    :cond_8
    move-object v6, v7

    move-object v8, v7

    move v9, v5

    move-object v3, v7

    goto/16 :goto_1
.end method

.method final writePingFrame()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->writer:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lio/intercom/b/f;->cTY:Lio/intercom/b/f;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writePing(Lio/intercom/b/f;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lio/intercom/okhttp3/Response;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
