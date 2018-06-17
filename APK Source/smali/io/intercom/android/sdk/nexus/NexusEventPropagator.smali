.class Lio/intercom/android/sdk/nexus/NexusEventPropagator;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/nexus/NexusListener;


# instance fields
.field private final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/nexus/NexusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/twig/Twig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->cache:Landroid/util/LruCache;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->listeners:Ljava/util/List;

    iput-object p1, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method


# virtual methods
.method addListener(Lio/intercom/android/sdk/nexus/NexusListener;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method cacheEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->cache:Landroid/util/LruCache;

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getGuid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifyEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V
    .locals 4

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventType()Lio/intercom/android/sdk/nexus/NexusEventType;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/nexus/NexusEventType;->UNKNOWN:Lio/intercom/android/sdk/nexus/NexusEventType;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->cache:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->cache:Landroid/util/LruCache;

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->cache:Landroid/util/LruCache;

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getGuid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifying listeners of event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventType()Lio/intercom/android/sdk/nexus/NexusEventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/nexus/NexusListener;

    invoke-interface {v0, p1}, Lio/intercom/android/sdk/nexus/NexusListener;->notifyEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dropping event, already in cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->toStringEncodedJsonObject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void
.end method

.method public onConnect()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "notifying listeners that a connection opened"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/nexus/NexusListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/nexus/NexusListener;->onConnect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectFailed()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "notifying listeners that a connection failed to open"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/nexus/NexusListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/nexus/NexusListener;->onConnectFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onShutdown()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "notifying listeners that a connection has shutdown"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/nexus/NexusListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/nexus/NexusListener;->onShutdown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeListener(Lio/intercom/android/sdk/nexus/NexusListener;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusEventPropagator;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
