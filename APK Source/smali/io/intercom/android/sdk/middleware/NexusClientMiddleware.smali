.class public Lio/intercom/android/sdk/middleware/NexusClientMiddleware;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$Middleware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/android/sdk/store/Store$Middleware",
        "<",
        "Lio/intercom/android/sdk/state/State;",
        ">;"
    }
.end annotation


# instance fields
.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final nexusClient:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/nexus/NexusClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/nexus/NexusClient;",
            ">;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware$1;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/middleware/NexusClientMiddleware$1;-><init>(Lio/intercom/android/sdk/middleware/NexusClientMiddleware;)V

    iput-object v0, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->disconnectRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->nexusClient:Lio/intercom/android/sdk/Provider;

    iput-object p2, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p3, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->handler:Landroid/os/Handler;

    return-void
.end method

.method private connectWithConfig(Lio/intercom/android/sdk/nexus/NexusConfig;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->disconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->client()Lio/intercom/android/sdk/nexus/NexusClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/intercom/android/sdk/nexus/NexusClient;->connect(Lio/intercom/android/sdk/nexus/NexusConfig;Z)V

    return-void
.end method

.method private disconnectImmediately()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->disconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->client()Lio/intercom/android/sdk/nexus/NexusClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/nexus/NexusClient;->disconnect()V

    return-void
.end method

.method private scheduleDisconnect()V
    .locals 6

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->disconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->disconnectRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getNewSessionThresholdMs()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method client()Lio/intercom/android/sdk/nexus/NexusClient;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->nexusClient:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/nexus/NexusClient;

    return-object v0
.end method

.method public dispatch(Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/store/Store$NextDispatcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;",
            "Lio/intercom/android/sdk/store/Store$NextDispatcher;",
            ")V"
        }
    .end annotation

    invoke-interface {p3, p2}, Lio/intercom/android/sdk/store/Store$NextDispatcher;->dispatch(Lio/intercom/android/sdk/actions/Action;)V

    sget-object v0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware$2;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    invoke-virtual {p2}, Lio/intercom/android/sdk/actions/Action;->type()Lio/intercom/android/sdk/actions/Action$Type;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getRealTimeConfig()Lio/intercom/android/sdk/nexus/NexusConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->connectWithConfig(Lio/intercom/android/sdk/nexus/NexusConfig;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->scheduleDisconnect()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->disconnectImmediately()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/BaseResponse;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/BaseResponse;->getConfig()Lio/intercom/android/sdk/models/Config;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Config;->getRealTimeConfig()Lio/intercom/android/sdk/nexus/NexusConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/nexus/NexusConfig;->getEndpoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->disconnectImmediately()V

    goto :goto_0

    :cond_1
    sget-object v0, Lio/intercom/android/sdk/store/Selectors;->APP_IS_BACKGROUNDED:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;->connectWithConfig(Lio/intercom/android/sdk/nexus/NexusConfig;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
