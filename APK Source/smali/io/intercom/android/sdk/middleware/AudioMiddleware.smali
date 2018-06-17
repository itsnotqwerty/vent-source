.class public Lio/intercom/android/sdk/middleware/AudioMiddleware;
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
.field private final playedPartIdsForConversations:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

.field private final userIdentityProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/conversation/SoundPlayer;Lio/intercom/android/sdk/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/conversation/SoundPlayer;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/m;

    invoke-direct {v0}, Landroid/support/v4/g/m;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/middleware/AudioMiddleware;->playedPartIdsForConversations:Landroid/support/v4/g/m;

    iput-object p1, p0, Lio/intercom/android/sdk/middleware/AudioMiddleware;->soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

    iput-object p2, p0, Lio/intercom/android/sdk/middleware/AudioMiddleware;->userIdentityProvider:Lio/intercom/android/sdk/Provider;

    return-void
.end method

.method private neverPlayedAudioFor(Lio/intercom/android/sdk/models/Conversation;Lio/intercom/android/sdk/models/Part;)Z
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/AudioMiddleware;->playedPartIdsForConversations:Landroid/support/v4/g/m;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static noActivityForOverlays(Lio/intercom/android/sdk/state/OverlayState;)Z
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/state/OverlayState;->resumedHostActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static notificationsDisabled(Lio/intercom/android/sdk/state/OverlayState;)Z
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/state/OverlayState;->notificationVisibility()Lio/intercom/android/sdk/Intercom$Visibility;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/Intercom$Visibility;->VISIBLE:Lio/intercom/android/sdk/Intercom$Visibility;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatch(Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/store/Store$NextDispatcher;)V
    .locals 7
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

    const/4 v2, 0x0

    invoke-interface {p3, p2}, Lio/intercom/android/sdk/store/Store$NextDispatcher;->dispatch(Lio/intercom/android/sdk/actions/Action;)V

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/AudioMiddleware;->userIdentityProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->isSoftReset()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lio/intercom/android/sdk/middleware/AudioMiddleware$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    invoke-virtual {p2}, Lio/intercom/android/sdk/actions/Action;->type()Lio/intercom/android/sdk/actions/Action$Type;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lio/intercom/android/sdk/store/Selectors;->OVERLAY:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/OverlayState;

    invoke-static {v0}, Lio/intercom/android/sdk/middleware/AudioMiddleware;->notificationsDisabled(Lio/intercom/android/sdk/state/OverlayState;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/intercom/android/sdk/middleware/AudioMiddleware;->noActivityForOverlays(Lio/intercom/android/sdk/state/OverlayState;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState;->dismissedPartIds()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v5

    sget-object v6, Lio/intercom/android/sdk/models/Part;->NULL:Lio/intercom/android/sdk/models/Part;

    if-eq v5, v6, :cond_2

    invoke-virtual {v5}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v1, :cond_3

    invoke-direct {p0, v0, v5}, Lio/intercom/android/sdk/middleware/AudioMiddleware;->neverPlayedAudioFor(Lio/intercom/android/sdk/models/Conversation;Lio/intercom/android/sdk/models/Part;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_2
    iget-object v6, p0, Lio/intercom/android/sdk/middleware/AudioMiddleware;->playedPartIdsForConversations:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/AudioMiddleware;->soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/SoundPlayer;->playMessageReceivedSound()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lio/intercom/android/sdk/middleware/AudioMiddleware;->playedPartIdsForConversations:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->clear()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
