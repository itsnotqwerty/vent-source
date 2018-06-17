.class Lio/intercom/android/sdk/nexus/NexusSocket;
.super Ljava/lang/Object;


# static fields
.field private static final CLOSED_SOCKET:Lio/intercom/okhttp3/WebSocket;

.field private static final HEADER:Ljava/lang/String; = "?X-Nexus-Version=android.5.2.0"

.field private static final MAX_RECONNECT_TIME_SECONDS:I = 0x384

.field private static final N_TIMEOUT_DISCONNECT:I = 0xfa1

.field private static final OK_CLIENT_DISCONNECT:I = 0xfa0


# instance fields
.field private final client:Lio/intercom/okhttp3/OkHttpClient;

.field private final connectionTimeoutSeconds:J

.field private lastReconnectAt:J

.field private final listener:Lio/intercom/android/sdk/nexus/NexusListener;

.field private reconnectAttempts:I

.field private reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final shouldSendPresence:Z

.field private socket:Lio/intercom/okhttp3/WebSocket;

.field private final timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final timeoutRunnable:Ljava/lang/Runnable;

.field private final topicProvider:Lio/intercom/android/sdk/nexus/NexusTopicProvider;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;

.field private final url:Ljava/lang/String;

.field private final webSocketListener:Lio/intercom/okhttp3/WebSocketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusSocket$4;

    invoke-direct {v0}, Lio/intercom/android/sdk/nexus/NexusSocket$4;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusSocket;->CLOSED_SOCKET:Lio/intercom/okhttp3/WebSocket;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZLio/intercom/android/sdk/twig/Twig;Ljava/util/concurrent/ScheduledExecutorService;Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/android/sdk/nexus/NexusListener;Lio/intercom/android/sdk/nexus/NexusTopicProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/intercom/android/sdk/nexus/NexusSocket;->CLOSED_SOCKET:Lio/intercom/okhttp3/WebSocket;

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->socket:Lio/intercom/okhttp3/WebSocket;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusSocket$1;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/nexus/NexusSocket$1;-><init>(Lio/intercom/android/sdk/nexus/NexusSocket;)V

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->lastReconnectAt:J

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->reconnectAttempts:I

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusSocket$3;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/nexus/NexusSocket$3;-><init>(Lio/intercom/android/sdk/nexus/NexusSocket;)V

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->webSocketListener:Lio/intercom/okhttp3/WebSocketListener;

    iput-object p1, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->url:Ljava/lang/String;

    int-to-long v0, p2

    iput-wide v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->connectionTimeoutSeconds:J

    iput-boolean p3, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->shouldSendPresence:Z

    iput-object p4, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p7, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->listener:Lio/intercom/android/sdk/nexus/NexusListener;

    iput-object p8, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->topicProvider:Lio/intercom/android/sdk/nexus/NexusTopicProvider;

    iput-object p6, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->client:Lio/intercom/okhttp3/OkHttpClient;

    iput-object p5, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/nexus/NexusSocket;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/nexus/NexusSocket;->timedOut()V

    return-void
.end method

.method static synthetic access$102(Lio/intercom/android/sdk/nexus/NexusSocket;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$200(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/twig/Twig;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-object v0
.end method

.method static synthetic access$302(Lio/intercom/android/sdk/nexus/NexusSocket;Lio/intercom/okhttp3/WebSocket;)Lio/intercom/okhttp3/WebSocket;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->socket:Lio/intercom/okhttp3/WebSocket;

    return-object p1
.end method

.method static synthetic access$400(Lio/intercom/android/sdk/nexus/NexusSocket;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/nexus/NexusSocket;->resetTimeout()V

    return-void
.end method

.method static synthetic access$500(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/nexus/NexusTopicProvider;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->topicProvider:Lio/intercom/android/sdk/nexus/NexusTopicProvider;

    return-object v0
.end method

.method static synthetic access$600(Lio/intercom/android/sdk/nexus/NexusSocket;)Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->shouldSendPresence:Z

    return v0
.end method

.method static synthetic access$700(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/nexus/NexusListener;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->listener:Lio/intercom/android/sdk/nexus/NexusListener;

    return-object v0
.end method

.method static synthetic access$800(Lio/intercom/android/sdk/nexus/NexusSocket;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/nexus/NexusSocket;->shutdown()V

    return-void
.end method

.method static synthetic access$900(Lio/intercom/android/sdk/nexus/NexusSocket;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/nexus/NexusSocket;->scheduleReconnect()V

    return-void
.end method

.method static calculateReconnectTimerInSeconds(I)J
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x408c200000000000L    # 900.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method private disconnect(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->socket:Lio/intercom/okhttp3/WebSocket;

    invoke-interface {v0, p1, p2}, Lio/intercom/okhttp3/WebSocket;->close(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Could not close socket while disconnecting, it may be already closed"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private modifyReconnectAttempts()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->lastReconnectAt:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x384

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "resetting reconnection attempts"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->reconnectAttempts:I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->lastReconnectAt:J

    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "incrementing reconnection attempts"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->reconnectAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->reconnectAttempts:I

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->connectionTimeoutSeconds:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private scheduleReconnect()V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lio/intercom/android/sdk/nexus/NexusSocket;->modifyReconnectAttempts()V

    iget v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->reconnectAttempts:I

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->calculateReconnectTimerInSeconds(I)J

    move-result-wide v0

    iget-object v2, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling reconnect in: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for attempt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->reconnectAttempts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/intercom/android/sdk/nexus/NexusSocket$2;

    invoke-direct {v3, p0}, Lio/intercom/android/sdk/nexus/NexusSocket$2;-><init>(Lio/intercom/android/sdk/nexus/NexusSocket;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method static shouldReconnectFromFailure(Lio/intercom/okhttp3/Response;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_1

    const/16 v2, 0x257

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shutdown()V
    .locals 2

    sget-object v0, Lio/intercom/android/sdk/nexus/NexusSocket;->CLOSED_SOCKET:Lio/intercom/okhttp3/WebSocket;

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->socket:Lio/intercom/okhttp3/WebSocket;

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->listener:Lio/intercom/android/sdk/nexus/NexusListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/nexus/NexusListener;->onShutdown()V

    return-void
.end method

.method private timedOut()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->socket:Lio/intercom/okhttp3/WebSocket;

    sget-object v1, Lio/intercom/android/sdk/nexus/NexusSocket;->CLOSED_SOCKET:Lio/intercom/okhttp3/WebSocket;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/nexus/NexusSocket;->scheduleReconnect()V

    :goto_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->listener:Lio/intercom/android/sdk/nexus/NexusListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/nexus/NexusListener;->onConnectFailed()V

    return-void

    :cond_0
    const/16 v0, 0xfa1

    const-string v1, "Socket timed out"

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/nexus/NexusSocket;->disconnect(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method connect()V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "connecting to a socket..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lio/intercom/okhttp3/Request$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Request$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?X-Nexus-Version=android.5.2.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->client:Lio/intercom/okhttp3/OkHttpClient;

    iget-object v2, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->webSocketListener:Lio/intercom/okhttp3/WebSocketListener;

    invoke-virtual {v1, v0, v2}, Lio/intercom/okhttp3/OkHttpClient;->newWebSocket(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/WebSocketListener;)Lio/intercom/okhttp3/WebSocket;

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->connectionTimeoutSeconds:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method disconnect()V
    .locals 2

    const/16 v0, 0xfa0

    const-string v1, "Disconnect called by client"

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/nexus/NexusSocket;->disconnect(ILjava/lang/String;)V

    return-void
.end method

.method fire(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "firing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->socket:Lio/intercom/okhttp3/WebSocket;

    invoke-interface {v0, p1}, Lio/intercom/okhttp3/WebSocket;->send(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error when firing \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isConnected()Z
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket;->socket:Lio/intercom/okhttp3/WebSocket;

    sget-object v1, Lio/intercom/android/sdk/nexus/NexusSocket;->CLOSED_SOCKET:Lio/intercom/okhttp3/WebSocket;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
