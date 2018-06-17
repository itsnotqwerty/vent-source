.class public Lio/intercom/android/sdk/store/UnreadCountTracker;
.super Ljava/lang/Object;


# instance fields
.field final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/intercom/android/sdk/UnreadConversationCountListener;",
            "Lio/intercom/android/sdk/store/Store$Subscription;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lio/intercom/android/sdk/store/Store;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/store/UnreadCountTracker;->listeners:Ljava/util/Map;

    iput-object p1, p0, Lio/intercom/android/sdk/store/UnreadCountTracker;->store:Lio/intercom/android/sdk/store/Store;

    return-void
.end method


# virtual methods
.method public addListener(Lio/intercom/android/sdk/UnreadConversationCountListener;)V
    .locals 3

    new-instance v0, Lio/intercom/android/sdk/store/UnreadCountTracker$1;

    invoke-direct {v0, p0, p1}, Lio/intercom/android/sdk/store/UnreadCountTracker$1;-><init>(Lio/intercom/android/sdk/store/UnreadCountTracker;Lio/intercom/android/sdk/UnreadConversationCountListener;)V

    iget-object v1, p0, Lio/intercom/android/sdk/store/UnreadCountTracker;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v2, Lio/intercom/android/sdk/store/Selectors;->UNREAD_COUNT:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/store/Store;->subscribeToChanges(Lio/intercom/android/sdk/store/Store$Selector;Lio/intercom/android/sdk/store/Store$Subscriber;)Lio/intercom/android/sdk/store/Store$Subscription;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/store/UnreadCountTracker;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeListener(Lio/intercom/android/sdk/UnreadConversationCountListener;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/store/UnreadCountTracker;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/store/UnreadCountTracker;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/store/Store$Subscription;

    invoke-interface {v0}, Lio/intercom/android/sdk/store/Store$Subscription;->unsubscribe()V

    :cond_0
    return-void
.end method
