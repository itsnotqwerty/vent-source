.class public Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;
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

.field private final launcherType:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

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


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;Lio/intercom/android/sdk/metrics/MetricTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->store:Lio/intercom/android/sdk/store/Store;

    iput-object p3, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->launcherType:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    iput-object p4, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    return-void
.end method

.method private hasEmptyInbox()Z
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->store:Lio/intercom/android/sdk/store/Store;

    invoke-virtual {v0}, Lio/intercom/android/sdk/store/Store;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/State;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/State;->hasConversations()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/State;->unreadConversationIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openLastOrDefaultState(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->store:Lio/intercom/android/sdk/store/Store;

    invoke-virtual {v0}, Lio/intercom/android/sdk/store/Store;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/State;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/State;->uiState()Lio/intercom/android/sdk/state/UiState;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$1;->$SwitchMap$io$intercom$android$sdk$state$UiState$Screen:[I

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/UiState;->screen()Lio/intercom/android/sdk/state/UiState$Screen;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/state/UiState$Screen;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->presentInbox(Landroid/content/Context;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {v0}, Lio/intercom/android/sdk/state/UiState;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->presentConversation(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->presentComposer(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->hasEmptyInbox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->isInboundMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->presentComposer(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->presentInbox(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private presentComposer(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->launcherType:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->openedMessengerNewConversation(Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)V

    const-string v0, ""

    invoke-static {p1, v0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->openComposer(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private presentConversation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->launcherType:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    invoke-virtual {v0, p2, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->openedMessengerConversation(Ljava/lang/String;Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)V

    sget-object v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NULL:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-static {p1, p2, v0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->openConversation(Landroid/content/Context;Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private presentInbox(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->launcherType:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->openedMessengerConversationList(Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)V

    invoke-static {p1}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->openInbox(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public openMessenger(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->store:Lio/intercom/android/sdk/store/Store;

    invoke-virtual {v0}, Lio/intercom/android/sdk/store/Store;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/State;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/State;->unreadConversationIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->presentConversation(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->presentInbox(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->openLastOrDefaultState(Landroid/content/Context;)V

    goto :goto_0
.end method
