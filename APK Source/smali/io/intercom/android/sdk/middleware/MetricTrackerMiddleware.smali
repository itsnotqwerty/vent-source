.class public Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;
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
.field private final trackedPartIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final trackerProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;->trackedPartIds:Ljava/util/Set;

    iput-object p1, p0, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;->trackerProvider:Lio/intercom/android/sdk/Provider;

    return-void
.end method

.method private trackReceivedPart(Lio/intercom/android/sdk/models/Part;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->hasAttachments()Z

    move-result v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->isLinkCard()Z

    move-result v2

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lio/intercom/android/sdk/models/Part$DeliveryOption;->SUMMARY:Lio/intercom/android/sdk/models/Part$DeliveryOption;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getDeliveryOption()Lio/intercom/android/sdk/models/Part$DeliveryOption;

    move-result-object v3

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;->tracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/metrics/MetricTracker;->receivedMessageFromFullWhenClosed(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->isInitialMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;->tracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/metrics/MetricTracker;->receivedMessageFromSnippetWhenClosed(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;->tracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p2, v4}, Lio/intercom/android/sdk/metrics/MetricTracker;->receivedReplyFromSnippetWhenClosed(ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tracker()Lio/intercom/android/sdk/metrics/MetricTracker;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;->trackerProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/metrics/MetricTracker;

    return-object v0
.end method


# virtual methods
.method public dispatch(Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/store/Store$NextDispatcher;)V
    .locals 5
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

    sget-object v0, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    invoke-virtual {p2}, Lio/intercom/android/sdk/actions/Action;->type()Lio/intercom/android/sdk/actions/Action$Type;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-interface {p3, p2}, Lio/intercom/android/sdk/store/Store$NextDispatcher;->dispatch(Lio/intercom/android/sdk/actions/Action;)V

    return-void

    :pswitch_0
    invoke-virtual {p2}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/UsersResponse;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/UsersResponse;->getUnreadConversations()Lio/intercom/android/sdk/models/ConversationList;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ConversationList;->getConversations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;->trackedPartIds:Ljava/util/Set;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;->trackedPartIds:Ljava/util/Set;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;->trackReceivedPart(Lio/intercom/android/sdk/models/Part;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
