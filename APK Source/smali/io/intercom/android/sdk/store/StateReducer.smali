.class Lio/intercom/android/sdk/store/StateReducer;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$Reducer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/android/sdk/store/Store$Reducer",
        "<",
        "Lio/intercom/android/sdk/state/State;",
        ">;"
    }
.end annotation


# instance fields
.field private final activeConversationStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/state/ActiveConversationState;",
            ">;"
        }
    .end annotation
.end field

.field private final hasConversationsReducer:Lio/intercom/android/sdk/store/Store$Reducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hostAppStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/state/HostAppState;",
            ">;"
        }
    .end annotation
.end field

.field private final inboxStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/state/InboxState;",
            ">;"
        }
    .end annotation
.end field

.field private final overlayStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/state/OverlayState;",
            ">;"
        }
    .end annotation
.end field

.field private final teamPresenceReducer:Lio/intercom/android/sdk/store/Store$Reducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/models/TeamPresence;",
            ">;"
        }
    .end annotation
.end field

.field private final uiStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/state/UiState;",
            ">;"
        }
    .end annotation
.end field

.field private final unreadConversationIdsReducer:Lio/intercom/android/sdk/store/Store$Reducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/state/UiState;",
            ">;",
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/models/TeamPresence;",
            ">;",
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/state/InboxState;",
            ">;",
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/state/HostAppState;",
            ">;",
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/state/OverlayState;",
            ">;",
            "Lio/intercom/android/sdk/store/Store$Reducer",
            "<",
            "Lio/intercom/android/sdk/state/ActiveConversationState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/store/StateReducer;->hasConversationsReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    iput-object p2, p0, Lio/intercom/android/sdk/store/StateReducer;->uiStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    iput-object p3, p0, Lio/intercom/android/sdk/store/StateReducer;->teamPresenceReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    iput-object p4, p0, Lio/intercom/android/sdk/store/StateReducer;->unreadConversationIdsReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    iput-object p5, p0, Lio/intercom/android/sdk/store/StateReducer;->inboxStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    iput-object p6, p0, Lio/intercom/android/sdk/store/StateReducer;->hostAppStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    iput-object p7, p0, Lio/intercom/android/sdk/store/StateReducer;->overlayStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    iput-object p8, p0, Lio/intercom/android/sdk/store/StateReducer;->activeConversationStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    return-void
.end method


# virtual methods
.method public reduce(Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/state/State;)Lio/intercom/android/sdk/state/State;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;",
            "Lio/intercom/android/sdk/state/State;",
            ")",
            "Lio/intercom/android/sdk/state/State;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/store/StateReducer;->hasConversationsReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/State;->hasConversations()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/intercom/android/sdk/store/Store$Reducer;->reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/store/StateReducer;->uiStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/State;->uiState()Lio/intercom/android/sdk/state/UiState;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lio/intercom/android/sdk/store/Store$Reducer;->reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/state/UiState;

    iget-object v2, p0, Lio/intercom/android/sdk/store/StateReducer;->teamPresenceReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/State;->teamPresence()Lio/intercom/android/sdk/models/TeamPresence;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lio/intercom/android/sdk/store/Store$Reducer;->reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/intercom/android/sdk/models/TeamPresence;

    iget-object v3, p0, Lio/intercom/android/sdk/store/StateReducer;->unreadConversationIdsReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/State;->unreadConversationIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lio/intercom/android/sdk/store/Store$Reducer;->reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-object v4, p0, Lio/intercom/android/sdk/store/StateReducer;->inboxStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/State;->inboxState()Lio/intercom/android/sdk/state/InboxState;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lio/intercom/android/sdk/store/Store$Reducer;->reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/intercom/android/sdk/state/InboxState;

    iget-object v5, p0, Lio/intercom/android/sdk/store/StateReducer;->hostAppStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/State;->hostAppState()Lio/intercom/android/sdk/state/HostAppState;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lio/intercom/android/sdk/store/Store$Reducer;->reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/intercom/android/sdk/state/HostAppState;

    iget-object v6, p0, Lio/intercom/android/sdk/store/StateReducer;->overlayStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/State;->overlayState()Lio/intercom/android/sdk/state/OverlayState;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Lio/intercom/android/sdk/store/Store$Reducer;->reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/intercom/android/sdk/state/OverlayState;

    iget-object v7, p0, Lio/intercom/android/sdk/store/StateReducer;->activeConversationStateReducer:Lio/intercom/android/sdk/store/Store$Reducer;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/State;->activeConversationState()Lio/intercom/android/sdk/state/ActiveConversationState;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Lio/intercom/android/sdk/store/Store$Reducer;->reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/intercom/android/sdk/state/ActiveConversationState;

    invoke-static/range {v0 .. v7}, Lio/intercom/android/sdk/state/State;->create(ZLio/intercom/android/sdk/state/UiState;Lio/intercom/android/sdk/models/TeamPresence;Ljava/util/Set;Lio/intercom/android/sdk/state/InboxState;Lio/intercom/android/sdk/state/HostAppState;Lio/intercom/android/sdk/state/OverlayState;Lio/intercom/android/sdk/state/ActiveConversationState;)Lio/intercom/android/sdk/state/State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lio/intercom/android/sdk/state/State;

    invoke-virtual {p0, p1, p2}, Lio/intercom/android/sdk/store/StateReducer;->reduce(Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/state/State;)Lio/intercom/android/sdk/state/State;

    move-result-object v0

    return-object v0
.end method
