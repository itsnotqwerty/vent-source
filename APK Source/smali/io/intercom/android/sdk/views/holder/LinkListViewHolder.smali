.class public Lio/intercom/android/sdk/views/holder/LinkListViewHolder;
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


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/intercom/android/sdk/views/holder/ConversationListener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/intercom/android/sdk/views/holder/ConversationListener;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;-><init>(Landroid/view/View;Lio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;)V

    iput-object p3, p0, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p4, p0, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method


# virtual methods
.method public bind(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;->cellLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;->bubble:Lio/intercom/android/sdk/views/ExpandableLayout;

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;->setUpHolderBlocks(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;->networkAvatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;->networkAvatar:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v3, p0, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {p0, v1, v2, v0, v3}, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;->showAvatar(Lio/intercom/android/sdk/models/Participant;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-super {p0, p1}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
