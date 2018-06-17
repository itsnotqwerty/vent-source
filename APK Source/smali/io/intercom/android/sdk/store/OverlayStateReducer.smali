.class Lio/intercom/android/sdk/store/OverlayStateReducer;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$Reducer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/android/sdk/store/Store$Reducer",
        "<",
        "Lio/intercom/android/sdk/state/OverlayState;",
        ">;"
    }
.end annotation


# static fields
.field static final INITIAL_STATE:Lio/intercom/android/sdk/state/OverlayState;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lio/intercom/android/sdk/Intercom$Visibility;->VISIBLE:Lio/intercom/android/sdk/Intercom$Visibility;

    sget-object v3, Lio/intercom/android/sdk/Intercom$Visibility;->GONE:Lio/intercom/android/sdk/Intercom$Visibility;

    const/4 v6, 0x0

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lio/intercom/android/sdk/state/OverlayState;->create(Ljava/util/List;Ljava/util/Set;Lio/intercom/android/sdk/Intercom$Visibility;Lio/intercom/android/sdk/Intercom$Visibility;Landroid/app/Activity;Landroid/app/Activity;I)Lio/intercom/android/sdk/state/OverlayState;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer;->INITIAL_STATE:Lio/intercom/android/sdk/state/OverlayState;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static newStateIfNewHostActivity(Lio/intercom/android/sdk/state/OverlayState;Landroid/app/Activity;Landroid/app/Activity;)Lio/intercom/android/sdk/state/OverlayState;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/state/OverlayState;->resumedHostActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/state/OverlayState;->pausedHostActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/state/OverlayState;->toBuilder()Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/state/OverlayState$Builder;->resumedHostActivity(Landroid/app/Activity;)Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/intercom/android/sdk/state/OverlayState$Builder;->pausedHostActivity(Landroid/app/Activity;)Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState$Builder;->build()Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p0

    goto :goto_0
.end method

.method private static removeBadgeConversations(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getDeliveryOption()Lio/intercom/android/sdk/models/Part$DeliveryOption;

    move-result-object v0

    sget-object v2, Lio/intercom/android/sdk/models/Part$DeliveryOption;->BADGE:Lio/intercom/android/sdk/models/Part$DeliveryOption;

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static removeConversationWithId(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static removeDismissedConversations(Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public reduce(Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/state/OverlayState;)Lio/intercom/android/sdk/state/OverlayState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;",
            "Lio/intercom/android/sdk/state/OverlayState;",
            ")",
            "Lio/intercom/android/sdk/state/OverlayState;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->type()Lio/intercom/android/sdk/actions/Action$Type;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p2

    :pswitch_0
    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->toBuilder()Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/Intercom$Visibility;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/state/OverlayState$Builder;->notificationVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState$Builder;->build()Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->toBuilder()Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/Intercom$Visibility;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/state/OverlayState$Builder;->launcherVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState$Builder;->build()Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->toBuilder()Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/state/OverlayState$Builder;->bottomPadding(I)Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState$Builder;->build()Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->toBuilder()Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/state/OverlayState$Builder;->conversations(Ljava/util/List;)Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/state/OverlayState$Builder;->dismissedPartIds(Ljava/util/Set;)Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState$Builder;->build()Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p2

    goto :goto_0

    :pswitch_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lio/intercom/android/sdk/store/OverlayStateReducer;->removeConversationWithId(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->toBuilder()Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/state/OverlayState$Builder;->conversations(Ljava/util/List;)Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState$Builder;->build()Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p2

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->conversations()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->dismissedPartIds()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Lio/intercom/android/sdk/store/OverlayStateReducer;->removeDismissedConversations(Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->toBuilder()Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/state/OverlayState$Builder;->conversations(Ljava/util/List;)Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/state/OverlayState$Builder;->dismissedPartIds(Ljava/util/Set;)Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState$Builder;->build()Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/UsersResponse;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/UsersResponse;->getUnreadConversations()Lio/intercom/android/sdk/models/ConversationList;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ConversationList;->getConversations()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->dismissedPartIds()Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v0}, Lio/intercom/android/sdk/store/OverlayStateReducer;->removeDismissedConversations(Ljava/util/List;Ljava/util/Set;)V

    invoke-static {v1}, Lio/intercom/android/sdk/store/OverlayStateReducer;->removeBadgeConversations(Ljava/util/List;)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->toBuilder()Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/state/OverlayState$Builder;->conversations(Ljava/util/List;)Lio/intercom/android/sdk/state/OverlayState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState$Builder;->build()Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ActivityUtils;->isHostActivity(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ActivityUtils;->isFullScreenHelpCenter(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    invoke-static {p2, v0, v1}, Lio/intercom/android/sdk/store/OverlayStateReducer;->newStateIfNewHostActivity(Lio/intercom/android/sdk/state/OverlayState;Landroid/app/Activity;Landroid/app/Activity;)Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p2

    goto/16 :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :pswitch_8
    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p2, v1, v0}, Lio/intercom/android/sdk/store/OverlayStateReducer;->newStateIfNewHostActivity(Lio/intercom/android/sdk/state/OverlayState;Landroid/app/Activity;Landroid/app/Activity;)Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->pausedHostActivity()Landroid/app/Activity;

    move-result-object v2

    if-ne v0, v2, :cond_2

    :goto_2
    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->resumedHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p2, v0, v1}, Lio/intercom/android/sdk/store/OverlayStateReducer;->newStateIfNewHostActivity(Lio/intercom/android/sdk/state/OverlayState;Landroid/app/Activity;Landroid/app/Activity;)Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Lio/intercom/android/sdk/state/OverlayState;->pausedHostActivity()Landroid/app/Activity;

    move-result-object v1

    goto :goto_2

    :pswitch_a
    invoke-static {p2, v1, v1}, Lio/intercom/android/sdk/store/OverlayStateReducer;->newStateIfNewHostActivity(Lio/intercom/android/sdk/state/OverlayState;Landroid/app/Activity;Landroid/app/Activity;)Lio/intercom/android/sdk/state/OverlayState;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public bridge synthetic reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lio/intercom/android/sdk/state/OverlayState;

    invoke-virtual {p0, p1, p2}, Lio/intercom/android/sdk/store/OverlayStateReducer;->reduce(Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/state/OverlayState;)Lio/intercom/android/sdk/state/OverlayState;

    move-result-object v0

    return-object v0
.end method
