.class Lio/intercom/android/sdk/inbox/InboxAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$x;",
        ">;"
    }
.end annotation


# static fields
.field static final CONVERSATION:I = 0x0

.field static final LOADING:I = 0x1


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

.field private final conversationClickListener:Lio/intercom/android/sdk/inbox/ConversationClickListener;

.field private inboxState:Lio/intercom/android/sdk/state/InboxState;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final requestManager:Lio/intercom/a/a/a/j;

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

.field private final timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

.field private userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;Lio/intercom/android/sdk/inbox/ConversationClickListener;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/utilities/TimeFormatter;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/a/a/a/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Lio/intercom/android/sdk/inbox/ConversationClickListener;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Lio/intercom/android/sdk/utilities/TimeFormatter;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->conversationClickListener:Lio/intercom/android/sdk/inbox/ConversationClickListener;

    iput-object p3, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->store:Lio/intercom/android/sdk/store/Store;

    iput-object p4, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    iput-object p5, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p6, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    iput-object p7, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->requestManager:Lio/intercom/a/a/a/j;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/inbox/InboxAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method private conversationCount()I
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->inboxState:Lio/intercom/android/sdk/state/InboxState;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxAdapter;->conversationCount()I

    move-result v1

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->inboxState:Lio/intercom/android/sdk/state/InboxState;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/InboxState;->status()Lio/intercom/android/sdk/state/InboxState$Status;

    move-result-object v0

    sget-object v2, Lio/intercom/android/sdk/state/InboxState$Status;->LOADING:Lio/intercom/android/sdk/state/InboxState$Status;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxAdapter;->conversationCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->inboxState:Lio/intercom/android/sdk/state/InboxState;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/inbox/InboxAdapter;->conversationCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 5

    instance-of v0, p1, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->inboxState:Lio/intercom/android/sdk/state/InboxState;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    iget-object v3, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v1}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v2, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v4, Lio/intercom/android/sdk/store/Selectors;->TEAM_PRESENCE:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v2, v4}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/intercom/android/sdk/models/TeamPresence;

    invoke-virtual {p1, v0, v3, v1, v2}, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;->bindData(Lio/intercom/android/sdk/models/Conversation;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/android/sdk/models/TeamPresence;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    new-instance v0, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;

    iget-object v1, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_row_inbox:I

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->conversationClickListener:Lio/intercom/android/sdk/inbox/ConversationClickListener;

    iget-object v3, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    iget-object v4, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/intercom/android/sdk/inbox/InboxRowViewHolder;-><init>(Landroid/view/View;Lio/intercom/android/sdk/inbox/ConversationClickListener;Lio/intercom/android/sdk/utilities/TimeFormatter;Lio/intercom/a/a/a/j;)V

    :goto_0
    return-object v0

    :cond_0
    if-ne p2, v3, :cond_1

    new-instance v1, Lio/intercom/android/sdk/inbox/LoadingViewHolder;

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_row_loading:I

    invoke-virtual {v0, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lio/intercom/android/sdk/inbox/LoadingViewHolder;-><init>(Landroid/view/View;I)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "View type %d not supported"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setInboxState(Lio/intercom/android/sdk/state/InboxState;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/inbox/InboxAdapter;->inboxState:Lio/intercom/android/sdk/state/InboxState;

    return-void
.end method
