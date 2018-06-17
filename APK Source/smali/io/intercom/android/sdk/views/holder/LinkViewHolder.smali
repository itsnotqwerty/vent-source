.class public Lio/intercom/android/sdk/views/holder/LinkViewHolder;
.super Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;


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

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final viewType:I


# direct methods
.method public constructor <init>(Landroid/view/View;ILio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lio/intercom/android/sdk/views/holder/ConversationListener;",
            "Landroid/content/ClipboardManager;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;-><init>(Landroid/view/View;Lio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;)V

    iput p2, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->viewType:I

    iput-object p5, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p6, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->cellLayout:Landroid/view/ViewGroup;

    const-string v1, "link_background"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTransitionName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V
    .locals 6

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->cellLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->bubble:Lio/intercom/android/sdk/views/ExpandableLayout;

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->setUpHolderBlocks(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v5

    iget v1, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->viewType:I

    iget-object v3, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->networkAvatar:Landroid/widget/ImageView;

    iget-object v4, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->cellLayout:Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->checkForEntranceAnimation(ILio/intercom/android/sdk/models/Part;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->networkAvatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->networkAvatar:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v3, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {p0, v1, v2, v0, v3}, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->showAvatar(Lio/intercom/android/sdk/models/Participant;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;->cellLayout:Landroid/view/ViewGroup;

    invoke-interface {v1, v0, v2}, Lio/intercom/android/sdk/views/holder/ConversationListener;->onLinkClicked(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-super {p0, p1}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
