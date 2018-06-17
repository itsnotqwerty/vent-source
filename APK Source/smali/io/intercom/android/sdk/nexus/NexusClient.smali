.class public Lio/intercom/android/sdk/nexus/NexusClient;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/nexus/NexusTopicProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/nexus/NexusClient$NexusThreadFactory;
    }
.end annotation


# instance fields
.field private backgroundTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final client:Lio/intercom/okhttp3/OkHttpClient;

.field private final eventPropagator:Lio/intercom/android/sdk/nexus/NexusEventPropagator;

.field private future:Ljava/util/concurrent/ScheduledFuture;

.field private presenceInterval:J

.field private final sockets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/nexus/NexusSocket;",
            ">;"
        }
    .end annotation
.end field

.field private final topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/twig/Twig;)V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/nexus/NexusClient;->defaultOkHttpClientBuilder()Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient$Builder;->build()Lio/intercom/okhttp3/OkHttpClient;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/nexus/NexusClient;-><init>(Lio/intercom/android/sdk/twig/Twig;Lio/intercom/okhttp3/OkHttpClient;)V

    return-void
.end method

.method public constructor <init>(Lio/intercom/android/sdk/twig/Twig;Lio/intercom/okhttp3/OkHttpClient;)V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;

    invoke-direct {v0, p1}, Lio/intercom/android/sdk/nexus/NexusEventPropagator;-><init>(Lio/intercom/android/sdk/twig/Twig;)V

    invoke-direct {p0, p1, p2, v0}, Lio/intercom/android/sdk/nexus/NexusClient;-><init>(Lio/intercom/android/sdk/twig/Twig;Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/android/sdk/nexus/NexusEventPropagator;)V

    return-void
.end method

.method constructor <init>(Lio/intercom/android/sdk/twig/Twig;Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/android/sdk/nexus/NexusEventPropagator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->sockets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;

    iput-object p1, p0, Lio/intercom/android/sdk/nexus/NexusClient;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p3, p0, Lio/intercom/android/sdk/nexus/NexusClient;->eventPropagator:Lio/intercom/android/sdk/nexus/NexusEventPropagator;

    iput-object p2, p0, Lio/intercom/android/sdk/nexus/NexusClient;->client:Lio/intercom/okhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/nexus/NexusClient;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/nexus/NexusClient;->schedulePresence()V

    return-void
.end method

.method public static defaultOkHttpClientBuilder()Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 4

    const-wide/16 v2, 0x82

    new-instance v0, Lio/intercom/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x14

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method private schedulePresence()V
    .locals 5

    iget-wide v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->presenceInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->backgroundTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/intercom/android/sdk/nexus/NexusClient$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/nexus/NexusClient$1;-><init>(Lio/intercom/android/sdk/nexus/NexusClient;)V

    iget-wide v2, p0, Lio/intercom/android/sdk/nexus/NexusClient;->presenceInterval:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->future:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private subscribeToTopics(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getSubscribeEvent(Ljava/util/List;)Lio/intercom/android/sdk/nexus/NexusEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/nexus/NexusClient;->fire(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    :cond_0
    return-void
.end method

.method private unSubscribeFromTopics(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getUnsubscribeEvent(Ljava/util/List;)Lio/intercom/android/sdk/nexus/NexusEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/nexus/NexusClient;->fire(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addEventListener(Lio/intercom/android/sdk/nexus/NexusListener;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->eventPropagator:Lio/intercom/android/sdk/nexus/NexusEventPropagator;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->addListener(Lio/intercom/android/sdk/nexus/NexusListener;)V

    return-void
.end method

.method public declared-synchronized addTopics(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/nexus/NexusClient;->subscribeToTopics(Ljava/util/List;)V

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearTopics()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/nexus/NexusClient;->unSubscribeFromTopics(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Lio/intercom/android/sdk/nexus/NexusConfig;Z)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusConfig;->getEndpoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "No endpoints present"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->backgroundTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_2

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusClient$NexusThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/nexus/NexusClient$NexusThreadFactory;-><init>(Lio/intercom/android/sdk/nexus/NexusClient$1;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusConfig;->getEndpoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->backgroundTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_2
    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusConfig;->getEndpoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "Adding socket"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusConfig;->getConnectionTimeout()I

    move-result v2

    iget-object v4, p0, Lio/intercom/android/sdk/nexus/NexusClient;->twig:Lio/intercom/android/sdk/twig/Twig;

    iget-object v5, p0, Lio/intercom/android/sdk/nexus/NexusClient;->backgroundTaskExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lio/intercom/android/sdk/nexus/NexusClient;->client:Lio/intercom/okhttp3/OkHttpClient;

    iget-object v7, p0, Lio/intercom/android/sdk/nexus/NexusClient;->eventPropagator:Lio/intercom/android/sdk/nexus/NexusEventPropagator;

    move v3, p2

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lio/intercom/android/sdk/nexus/NexusSocket;-><init>(Ljava/lang/String;IZLio/intercom/android/sdk/twig/Twig;Ljava/util/concurrent/ScheduledExecutorService;Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/android/sdk/nexus/NexusListener;Lio/intercom/android/sdk/nexus/NexusTopicProvider;)V

    invoke-virtual {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->connect()V

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusClient;->sockets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusConfig;->getPresenceHeartbeatInterval()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->presenceInterval:J

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/nexus/NexusClient;->schedulePresence()V

    goto :goto_0
.end method

.method public declared-synchronized disconnect()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->sockets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->sockets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/nexus/NexusSocket;

    iget-object v2, p0, Lio/intercom/android/sdk/nexus/NexusClient;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v3, "disconnecting socket"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->sockets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "client disconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized fire(Lio/intercom/android/sdk/nexus/NexusEvent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->eventPropagator:Lio/intercom/android/sdk/nexus/NexusEventPropagator;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->cacheEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->toStringEncodedJsonObject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->sockets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/nexus/NexusSocket;->fire(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->sockets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-virtual {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized localUpdate(Lio/intercom/android/sdk/nexus/NexusEvent;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->eventPropagator:Lio/intercom/android/sdk/nexus/NexusEventPropagator;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->notifyEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeEventListener(Lio/intercom/android/sdk/nexus/NexusListener;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->eventPropagator:Lio/intercom/android/sdk/nexus/NexusEventPropagator;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->removeListener(Lio/intercom/android/sdk/nexus/NexusListener;)V

    return-void
.end method

.method public declared-synchronized removeTopics(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lio/intercom/android/sdk/nexus/NexusClient;->unSubscribeFromTopics(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setTopics(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/nexus/NexusClient;->subscribeToTopics(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/nexus/NexusClient;->unSubscribeFromTopics(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient;->topics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
