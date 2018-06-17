.class Lio/intercom/android/sdk/NexusWrapper;
.super Lio/intercom/android/sdk/nexus/NexusClient;

# interfaces
.implements Lio/intercom/android/sdk/nexus/NexusListener;


# static fields
.field private static final ADMIN_AVATAR:Ljava/lang/String; = "adminAvatar"

.field private static final ADMIN_ID:Ljava/lang/String; = "adminId"

.field private static final ADMIN_NAME:Ljava/lang/String; = "adminName"

.field private static final CONVERSATION_ID:Ljava/lang/String; = "conversationId"


# instance fields
.field private actionFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final bus:Lio/intercom/a/c/a/b;

.field private final debouncePeriodMs:J

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final store:Lio/intercom/android/sdk/store/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation
.end field

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/twig/Twig;Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/store/Store;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/twig/Twig;",
            "Lio/intercom/okhttp3/OkHttpClient;",
            "Lio/intercom/a/c/a/b;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/nexus/NexusClient;-><init>(Lio/intercom/android/sdk/twig/Twig;Lio/intercom/okhttp3/OkHttpClient;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/NexusWrapper;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lio/intercom/android/sdk/NexusWrapper;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p3, p0, Lio/intercom/android/sdk/NexusWrapper;->bus:Lio/intercom/a/c/a/b;

    iput-object p4, p0, Lio/intercom/android/sdk/NexusWrapper;->store:Lio/intercom/android/sdk/store/Store;

    iput-wide p5, p0, Lio/intercom/android/sdk/NexusWrapper;->debouncePeriodMs:J

    return-void
.end method

.method private logKnownEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/NexusWrapper;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Nexus"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventType()Lio/intercom/android/sdk/nexus/NexusEventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeCallbacks()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/NexusWrapper;->actionFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/NexusWrapper;->actionFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Lio/intercom/android/sdk/nexus/NexusConfig;Z)V
    .locals 5

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusConfig;->getEndpoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/NexusWrapper;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "No realtime endpoints present so we can\'t connect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lio/intercom/android/sdk/NexusWrapper;->removeCallbacks()V

    iget-object v0, p0, Lio/intercom/android/sdk/NexusWrapper;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/intercom/android/sdk/NexusWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lio/intercom/android/sdk/NexusWrapper$1;-><init>(Lio/intercom/android/sdk/NexusWrapper;Lio/intercom/android/sdk/nexus/NexusConfig;Z)V

    iget-wide v2, p0, Lio/intercom/android/sdk/NexusWrapper;->debouncePeriodMs:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/NexusWrapper;->actionFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method connectNow(Lio/intercom/android/sdk/nexus/NexusConfig;Z)V
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/NexusWrapper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lio/intercom/android/sdk/nexus/NexusClient;->connect(Lio/intercom/android/sdk/nexus/NexusConfig;Z)V

    const-string v0, "*"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/NexusWrapper;->setTopics(Ljava/util/List;)V

    invoke-virtual {p0, p0}, Lio/intercom/android/sdk/NexusWrapper;->addEventListener(Lio/intercom/android/sdk/nexus/NexusListener;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 5

    invoke-direct {p0}, Lio/intercom/android/sdk/NexusWrapper;->removeCallbacks()V

    iget-object v0, p0, Lio/intercom/android/sdk/NexusWrapper;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/intercom/android/sdk/NexusWrapper$2;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/NexusWrapper$2;-><init>(Lio/intercom/android/sdk/NexusWrapper;)V

    iget-wide v2, p0, Lio/intercom/android/sdk/NexusWrapper;->debouncePeriodMs:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/NexusWrapper;->actionFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method disconnectNow()V
    .locals 0

    invoke-virtual {p0, p0}, Lio/intercom/android/sdk/NexusWrapper;->removeEventListener(Lio/intercom/android/sdk/nexus/NexusListener;)V

    invoke-super {p0}, Lio/intercom/android/sdk/nexus/NexusClient;->disconnect()V

    return-void
.end method

.method public notifyEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V
    .locals 6

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventData()Lio/intercom/android/sdk/nexus/EventData;

    move-result-object v0

    const-string v1, "conversationId"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/nexus/EventData;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/NexusWrapper$3;->$SwitchMap$io$intercom$android$nexus$NexusEventType:[I

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventType()Lio/intercom/android/sdk/nexus/NexusEventType;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/nexus/NexusEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lio/intercom/android/sdk/NexusWrapper;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Nexus"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventType()Lio/intercom/android/sdk/nexus/NexusEventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/NexusWrapper;->logKnownEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventData()Lio/intercom/android/sdk/nexus/EventData;

    move-result-object v1

    const-string v2, "adminId"

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/nexus/EventData;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventData()Lio/intercom/android/sdk/nexus/EventData;

    move-result-object v2

    const-string v3, "adminName"

    invoke-virtual {v2, v3}, Lio/intercom/android/sdk/nexus/EventData;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventData()Lio/intercom/android/sdk/nexus/EventData;

    move-result-object v3

    const-string v4, "adminAvatar"

    invoke-virtual {v3, v4}, Lio/intercom/android/sdk/nexus/EventData;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/NexusWrapper;->bus:Lio/intercom/a/c/a/b;

    new-instance v5, Lio/intercom/android/sdk/conversation/events/AdminIsTypingEvent;

    invoke-direct {v5, v1, v0, v2, v3}, Lio/intercom/android/sdk/conversation/events/AdminIsTypingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lio/intercom/a/c/a/b;->post(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/NexusWrapper;->logKnownEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    iget-object v1, p0, Lio/intercom/android/sdk/NexusWrapper;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->newCommentEventReceived(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/NexusWrapper;->logKnownEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    iget-object v1, p0, Lio/intercom/android/sdk/NexusWrapper;->bus:Lio/intercom/a/c/a/b;

    new-instance v2, Lio/intercom/android/sdk/models/events/realtime/UserContentSeenByAdminEvent;

    invoke-direct {v2, v0}, Lio/intercom/android/sdk/models/events/realtime/UserContentSeenByAdminEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/intercom/a/c/a/b;->post(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/NexusWrapper;->logKnownEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    iget-object v1, p0, Lio/intercom/android/sdk/NexusWrapper;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->conversationMarkedAsRead(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConnect()V
    .locals 0

    return-void
.end method

.method public onConnectFailed()V
    .locals 0

    return-void
.end method

.method public onShutdown()V
    .locals 0

    return-void
.end method
