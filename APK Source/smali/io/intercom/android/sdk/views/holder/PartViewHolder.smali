.class public Lio/intercom/android/sdk/views/holder/PartViewHolder;
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

.field private final attribution:Landroid/widget/TextView;

.field private blocks:Landroid/view/ViewGroup;

.field private final metaData:Landroid/widget/TextView;

.field private final partMetadataFormatter:Lio/intercom/android/sdk/views/PartMetadataFormatter;

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final viewType:I


# direct methods
.method public constructor <init>(Landroid/view/View;ILio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;Lio/intercom/android/sdk/views/PartMetadataFormatter;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lio/intercom/android/sdk/views/holder/ConversationListener;",
            "Landroid/content/ClipboardManager;",
            "Lio/intercom/android/sdk/views/PartMetadataFormatter;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;-><init>(Landroid/view/View;Lio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;)V

    iput p2, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->viewType:I

    iput-object p5, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->partMetadataFormatter:Lio/intercom/android/sdk/views/PartMetadataFormatter;

    iput-object p6, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p7, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    sget v0, Lio/intercom/android/sdk/R$id;->metadata:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->metaData:Landroid/widget/TextView;

    sget v0, Lio/intercom/android/sdk/R$id;->attribution:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->attribution:Landroid/widget/TextView;

    return-void
.end method

.method private isSingleImagePart(Lio/intercom/android/sdk/models/Part;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getType()Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v0

    sget-object v3, Lio/intercom/android/sdk/blocks/BlockType;->LOCALIMAGE:Lio/intercom/android/sdk/blocks/BlockType;

    if-eq v0, v3, :cond_1

    sget-object v3, Lio/intercom/android/sdk/blocks/BlockType;->IMAGE:Lio/intercom/android/sdk/blocks/BlockType;

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private setBubbleBackground(Lio/intercom/android/sdk/models/Part;Landroid/view/View;I)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->isSingleImagePart(Lio/intercom/android/sdk/models/Part;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->isSingleCardPart(Lio/intercom/android/sdk/models/Part;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->cellLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->cellLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    move v0, v2

    move v3, v2

    :goto_0
    invoke-virtual {p2, v4, v3, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->cellLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/intercom/android/sdk/R$dimen;->intercom_cell_horizontal_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->cellLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6, v2, v6, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    sget v2, Lio/intercom/android/sdk/R$drawable;->intercom_bubble_background:I

    invoke-static {v0, v2}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->isAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->cellLayout:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto :goto_0
.end method

.method private setupAttribution(Lio/intercom/android/sdk/models/Part;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->attribution:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->shouldShowAttribution(Lio/intercom/android/sdk/models/Part;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->metaData:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_gif_attribution:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v1

    const-string v2, "providername"

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getAttribution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->attribution:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->attribution:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->attribution:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupHolderBackground(ILio/intercom/android/sdk/models/Part;ZLio/intercom/a/a/a/j;)V
    .locals 3

    const/4 v1, 0x4

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->blocks:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, v0, p1}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->setBubbleBackground(Lio/intercom/android/sdk/models/Part;Landroid/view/View;I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->networkAvatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->networkAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_0

    :cond_2
    invoke-virtual {p2}, Lio/intercom/android/sdk/models/Part;->getParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->networkAvatar:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {p0, v1, v2, v0, p4}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->showAvatar(Lio/intercom/android/sdk/models/Participant;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    goto :goto_0
.end method

.method private setupMetaData(ILio/intercom/android/sdk/models/Part;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->metaData:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    invoke-interface {v2}, Lio/intercom/android/sdk/views/holder/ConversationListener;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Lio/intercom/android/sdk/views/holder/ConversationListener;->getPart(I)Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->metaData:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->metaData:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->metaData:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->metaData:Landroid/widget/TextView;

    iget-object v3, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->partMetadataFormatter:Lio/intercom/android/sdk/views/PartMetadataFormatter;

    iget-object v4, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->metaData:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, p2, v0, v4}, Lio/intercom/android/sdk/views/PartMetadataFormatter;->getMetadataString(Lio/intercom/android/sdk/models/Part;ZLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lio/intercom/android/sdk/models/Part$MessageState;->UPLOAD_FAILED:Lio/intercom/android/sdk/models/Part$MessageState;

    invoke-virtual {p2}, Lio/intercom/android/sdk/models/Part;->getMessageState()Lio/intercom/android/sdk/models/Part$MessageState;

    move-result-object v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->metaData:Landroid/widget/TextView;

    sget v2, Lio/intercom/android/sdk/R$drawable;->intercom_message_error:I

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->metaData:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method private shouldConcatenate(Lio/intercom/android/sdk/models/Part;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    invoke-interface {v2}, Lio/intercom/android/sdk/views/holder/ConversationListener;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0, v1}, Lio/intercom/android/sdk/views/holder/ConversationListener;->getPart(I)Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    invoke-static {p1, v0}, Lio/intercom/android/sdk/models/Part;->shouldConcatenate(Lio/intercom/android/sdk/models/Part;Lio/intercom/android/sdk/models/Part;)Z

    move-result v0

    goto :goto_0
.end method

.method private shouldExpand(Lio/intercom/android/sdk/models/Part;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->isSelectedPart(Lio/intercom/android/sdk/models/Part;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->isLastPart(Lio/intercom/android/sdk/models/Part;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->isNextPartTyping(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowAttribution(Lio/intercom/android/sdk/models/Part;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->isSingleImagePart(Lio/intercom/android/sdk/models/Part;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getAttribution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getMessageState()Lio/intercom/android/sdk/models/Part$MessageState;

    move-result-object v0

    sget-object v2, Lio/intercom/android/sdk/models/Part$MessageState;->NORMAL:Lio/intercom/android/sdk/models/Part$MessageState;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/models/Part$MessageState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bind(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V
    .locals 6

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->shouldConcatenate(Lio/intercom/android/sdk/models/Part;I)Z

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->cellLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->bubble:Lio/intercom/android/sdk/views/ExpandableLayout;

    invoke-virtual {p0, p1, v1, v2, p2}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->setUpHolderBlocks(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->blocks:Landroid/view/ViewGroup;

    iget v1, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->viewType:I

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {p0, v1, p1, v0, v2}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->setupHolderBackground(ILio/intercom/android/sdk/models/Part;ZLio/intercom/a/a/a/j;)V

    iget v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->viewType:I

    invoke-direct {p0, v0, p1}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->setupMetaData(ILio/intercom/android/sdk/models/Part;)V

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->setupAttribution(Lio/intercom/android/sdk/models/Part;)V

    iget v1, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->viewType:I

    iget-object v3, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->networkAvatar:Landroid/widget/ImageView;

    iget-object v4, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->cellLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->blocks:Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->checkForEntranceAnimation(ILio/intercom/android/sdk/models/Part;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->bubble:Lio/intercom/android/sdk/views/ExpandableLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->bubble:Lio/intercom/android/sdk/views/ExpandableLayout;

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->shouldExpand(Lio/intercom/android/sdk/models/Part;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/views/ExpandableLayout;->setExpanded(ZZ)Z

    :cond_0
    return-void
.end method

.method isLastPart(Lio/intercom/android/sdk/models/Part;)Z
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    invoke-interface {v1}, Lio/intercom/android/sdk/views/holder/ConversationListener;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lio/intercom/android/sdk/views/holder/ConversationListener;->getPart(I)Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const-string v0, "admin_is_typing_style"

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNextPartTyping(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    invoke-interface {v2}, Lio/intercom/android/sdk/views/holder/ConversationListener;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    const-string v2, "admin_is_typing_style"

    iget-object v3, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    invoke-interface {v3, v1}, Lio/intercom/android/sdk/views/holder/ConversationListener;->getPart(I)Lio/intercom/android/sdk/models/Part;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isSelectedPart(Lio/intercom/android/sdk/models/Part;)Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/views/holder/ConversationListener;->getSelectedPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSingleCardPart(Lio/intercom/android/sdk/models/Part;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getType()Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v3

    sget-object v4, Lio/intercom/android/sdk/blocks/BlockType;->MESSENGERCARD:Lio/intercom/android/sdk/blocks/BlockType;

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getFallbackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    invoke-interface {v1, v0, p0}, Lio/intercom/android/sdk/views/holder/ConversationListener;->onPartClicked(ILio/intercom/android/sdk/views/holder/PartViewHolder;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-super {p0, p1}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public setExpanded(Z)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->bubble:Lio/intercom/android/sdk/views/ExpandableLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/PartViewHolder;->bubble:Lio/intercom/android/sdk/views/ExpandableLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/intercom/android/sdk/views/ExpandableLayout;->setExpanded(ZZ)Z

    :cond_0
    return-void
.end method
