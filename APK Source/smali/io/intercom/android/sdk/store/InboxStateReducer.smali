.class Lio/intercom/android/sdk/store/InboxStateReducer;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$Reducer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/android/sdk/store/Store$Reducer",
        "<",
        "Lio/intercom/android/sdk/state/InboxState;",
        ">;"
    }
.end annotation


# static fields
.field static final INITIAL_STATE:Lio/intercom/android/sdk/state/InboxState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/state/InboxState$Status;->INITIAL:Lio/intercom/android/sdk/state/InboxState$Status;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/state/InboxState;->create(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;Z)Lio/intercom/android/sdk/state/InboxState;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/store/InboxStateReducer;->INITIAL_STATE:Lio/intercom/android/sdk/state/InboxState;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addConversationAtTop(Ljava/util/List;Lio/intercom/android/sdk/models/Conversation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Lio/intercom/android/sdk/models/Conversation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private markConversationAsRead(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/models/Conversation;->withRead(Z)Lio/intercom/android/sdk/models/Conversation;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mergeConversationLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private sortByLastPartDate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/store/InboxStateReducer$1;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/store/InboxStateReducer$1;-><init>(Lio/intercom/android/sdk/store/InboxStateReducer;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateOrAddConversation(Lio/intercom/android/sdk/models/Conversation;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/Conversation;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p1}, Lio/intercom/android/sdk/store/InboxStateReducer;->addConversationAtTop(Ljava/util/List;Lio/intercom/android/sdk/models/Conversation;)V

    goto :goto_1
.end method

.method private updateRepliedConversationAndMoveToTop(Lio/intercom/android/sdk/state/ReplyPart;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/state/ReplyPart;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/ReplyPart;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getParts()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/ReplyPart;->getPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p2, v0}, Lio/intercom/android/sdk/store/InboxStateReducer;->addConversationAtTop(Ljava/util/List;Lio/intercom/android/sdk/models/Conversation;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public reduce(Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/state/InboxState;)Lio/intercom/android/sdk/state/InboxState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;",
            "Lio/intercom/android/sdk/state/InboxState;",
            ")",
            "Lio/intercom/android/sdk/state/InboxState;"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/store/InboxStateReducer$2;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->type()Lio/intercom/android/sdk/actions/Action$Type;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-object p2

    :pswitch_0
    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->status()Lio/intercom/android/sdk/state/InboxState$Status;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/state/InboxState$Status;->LOADING:Lio/intercom/android/sdk/state/InboxState$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/state/InboxState$Status;->LOADING:Lio/intercom/android/sdk/state/InboxState$Status;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->hasMorePages()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/state/InboxState;->create(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;Z)Lio/intercom/android/sdk/state/InboxState;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/ConversationsResponse;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ConversationsResponse;->getConversationPage()Lio/intercom/android/sdk/models/ConversationList;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/ConversationList;->getConversations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lio/intercom/android/sdk/store/InboxStateReducer;->mergeConversationLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/store/InboxStateReducer;->sortByLastPartDate(Ljava/util/List;)V

    sget-object v2, Lio/intercom/android/sdk/state/InboxState$Status;->SUCCESS:Lio/intercom/android/sdk/state/InboxState$Status;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ConversationsResponse;->getConversationPage()Lio/intercom/android/sdk/models/ConversationList;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ConversationList;->hasMorePages()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lio/intercom/android/sdk/state/InboxState;->create(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;Z)Lio/intercom/android/sdk/state/InboxState;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/state/InboxState$Status;->FAILED:Lio/intercom/android/sdk/state/InboxState$Status;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->hasMorePages()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/state/InboxState;->create(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;Z)Lio/intercom/android/sdk/state/InboxState;

    move-result-object p2

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/store/InboxStateReducer;->markConversationAsRead(Ljava/lang/String;Ljava/util/List;)V

    sget-object v0, Lio/intercom/android/sdk/state/InboxState$Status;->SUCCESS:Lio/intercom/android/sdk/state/InboxState$Status;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->hasMorePages()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lio/intercom/android/sdk/state/InboxState;->create(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;Z)Lio/intercom/android/sdk/state/InboxState;

    move-result-object p2

    goto :goto_0

    :pswitch_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/ReplyPart;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/store/InboxStateReducer;->updateRepliedConversationAndMoveToTop(Lio/intercom/android/sdk/state/ReplyPart;Ljava/util/List;)V

    sget-object v0, Lio/intercom/android/sdk/state/InboxState$Status;->SUCCESS:Lio/intercom/android/sdk/state/InboxState$Status;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->hasMorePages()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lio/intercom/android/sdk/state/InboxState;->create(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;Z)Lio/intercom/android/sdk/state/InboxState;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/store/InboxStateReducer;->updateOrAddConversation(Lio/intercom/android/sdk/models/Conversation;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/store/InboxStateReducer;->sortByLastPartDate(Ljava/util/List;)V

    sget-object v0, Lio/intercom/android/sdk/state/InboxState$Status;->SUCCESS:Lio/intercom/android/sdk/state/InboxState$Status;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->hasMorePages()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lio/intercom/android/sdk/state/InboxState;->create(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;Z)Lio/intercom/android/sdk/state/InboxState;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-direct {p0, v1, v0}, Lio/intercom/android/sdk/store/InboxStateReducer;->addConversationAtTop(Ljava/util/List;Lio/intercom/android/sdk/models/Conversation;)V

    sget-object v0, Lio/intercom/android/sdk/state/InboxState$Status;->SUCCESS:Lio/intercom/android/sdk/state/InboxState$Status;

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/InboxState;->hasMorePages()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lio/intercom/android/sdk/state/InboxState;->create(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;Z)Lio/intercom/android/sdk/state/InboxState;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_7
    sget-object p2, Lio/intercom/android/sdk/store/InboxStateReducer;->INITIAL_STATE:Lio/intercom/android/sdk/state/InboxState;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public bridge synthetic reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lio/intercom/android/sdk/state/InboxState;

    invoke-virtual {p0, p1, p2}, Lio/intercom/android/sdk/store/InboxStateReducer;->reduce(Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/state/InboxState;)Lio/intercom/android/sdk/state/InboxState;

    move-result-object v0

    return-object v0
.end method
