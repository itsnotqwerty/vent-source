.class public Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;
.super Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;


# instance fields
.field private appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field arrowExpander:Landroid/widget/ImageView;

.field private final fade:Landroid/view/View;

.field final lockableScrollView:Lio/intercom/android/sdk/views/LockableScrollView;

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final title:Landroid/widget/TextView;

.field private final viewType:I


# direct methods
.method public constructor <init>(Landroid/view/View;ILio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;ZLio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lio/intercom/android/sdk/views/holder/ConversationListener;",
            "Landroid/content/ClipboardManager;",
            "Z",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, p4}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;-><init>(Landroid/view/View;Lio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;)V

    iput p2, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->viewType:I

    iput-object p6, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p7, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_container_card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->title:Landroid/widget/TextView;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_container_fade_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->fade:Landroid/view/View;

    sget v0, Lio/intercom/android/sdk/R$id;->cell_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/LockableScrollView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->lockableScrollView:Lio/intercom/android/sdk/views/LockableScrollView;

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->lockableScrollView:Lio/intercom/android/sdk/views/LockableScrollView;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/LockableScrollView;->setScrollingEnabled(Z)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    if-eqz p5, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->expand_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    :cond_0
    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->lockableScrollView:Lio/intercom/android/sdk/views/LockableScrollView;

    if-nez p5, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/views/LockableScrollView;->setExpanded(Z)V

    :goto_1
    sget v0, Lio/intercom/android/sdk/R$id;->cellLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder$1;

    invoke-direct {v2, p0, v0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder$1;-><init>(Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->lockableScrollView:Lio/intercom/android/sdk/views/LockableScrollView;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/LockableScrollView;->setExpanded(Z)V

    goto :goto_1
.end method

.method private contentIsOverflowing()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->lockableScrollView:Lio/intercom/android/sdk/views/LockableScrollView;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/views/LockableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->lockableScrollView:Lio/intercom/android/sdk/views/LockableScrollView;

    invoke-virtual {v2}, Lio/intercom/android/sdk/views/LockableScrollView;->getMaxHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private layoutForCollapsedNoteWithArrow()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    invoke-direct {p0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->contentIsOverflowing()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->fade:Landroid/view/View;

    invoke-direct {p0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->contentIsOverflowing()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private layoutForExpandedNoteWithArrow()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    invoke-direct {p0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->contentIsOverflowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->fade:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private layoutForExpandedNoteWithoutArrow()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->fade:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private layoutForPost()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->fade:Landroid/view/View;

    invoke-direct {p0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->contentIsOverflowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->lockableScrollView:Lio/intercom/android/sdk/views/LockableScrollView;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/views/LockableScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public bind(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V
    .locals 6

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->cellLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->bubble:Lio/intercom/android/sdk/views/ExpandableLayout;

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->setUpHolderBlocks(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->networkAvatar:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v3, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {p0, v1, v2, v0, v3}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->showAvatar(Lio/intercom/android/sdk/models/Participant;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_teammate_from_company:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Participant;->getForename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v1

    const-string v2, "company"

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->viewType:I

    iget-object v3, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->networkAvatar:Landroid/widget/ImageView;

    iget-object v4, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->cellLayout:Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->checkForEntranceAnimation(ILio/intercom/android/sdk/models/Part;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    invoke-interface {v1, v0, p0}, Lio/intercom/android/sdk/views/holder/ConversationListener;->onContainerCardClicked(ILio/intercom/android/sdk/views/holder/ContainerCardViewHolder;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-super {p0, p1}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method setupViews()V
    .locals 2

    iget v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->viewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->layoutForPost()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->arrowExpander:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->layoutForExpandedNoteWithoutArrow()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->lockableScrollView:Lio/intercom/android/sdk/views/LockableScrollView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/LockableScrollView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->layoutForExpandedNoteWithArrow()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->layoutForCollapsedNoteWithArrow()V

    goto :goto_0
.end method

.method public toggleExpanded()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder$2;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder$2;-><init>(Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;)V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
