.class public final Lcom/layer/atlas/AtlasMessagesRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;


# instance fields
.field public bnm:Lcom/layer/atlas/a/a;

.field private bnn:Landroid/support/v7/widget/LinearLayoutManager;

.field private bno:Lcom/layer/atlas/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/layer/atlas/AtlasMessagesRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v3, Lcom/layer/atlas/b$j;->AtlasMessagesRecyclerView:[I

    sget v4, Lcom/layer/atlas/b$b;->AtlasMessagesRecyclerView:I

    invoke-virtual {v0, p2, v3, v4, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    new-instance v4, Lcom/layer/atlas/b/d$a;

    invoke-direct {v4}, Lcom/layer/atlas/b/d$a;-><init>()V

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessagesRecyclerView_myTextColor:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/layer/atlas/b$c;->atlas_text_black:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v4, Lcom/layer/atlas/b/d$a;->myTextColor:I

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessagesRecyclerView_myTextStyle:I

    invoke-virtual {v3, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v4, Lcom/layer/atlas/b/d$a;->myTextStyle:I

    sget v5, Lcom/layer/atlas/b$j;->AtlasMessagesRecyclerView_myTextTypeface:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    iput-object v0, v4, Lcom/layer/atlas/b/d$a;->boH:Landroid/graphics/Typeface;

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessagesRecyclerView_myTextSize:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/layer/atlas/b$d;->atlas_text_size_message_item:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, v4, Lcom/layer/atlas/b/d$a;->boG:F

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessagesRecyclerView_theirTextColor:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/layer/atlas/b$c;->atlas_color_primary_blue:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v4, Lcom/layer/atlas/b/d$a;->boJ:I

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessagesRecyclerView_theirTextStyle:I

    invoke-virtual {v3, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v4, Lcom/layer/atlas/b/d$a;->boK:I

    sget v5, Lcom/layer/atlas/b$j;->AtlasMessagesRecyclerView_theirTextTypeface:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    :cond_0
    iput-object v1, v4, Lcom/layer/atlas/b/d$a;->boM:Landroid/graphics/Typeface;

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessagesRecyclerView_theirTextSize:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/layer/atlas/b$d;->atlas_text_size_message_item:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, v4, Lcom/layer/atlas/b/d$a;->boL:F

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessagesRecyclerView_myBubbleColor:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/layer/atlas/b$c;->atlas_color_primary_blue:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v4, Lcom/layer/atlas/b/d$a;->myBubbleColor:I

    sget v0, Lcom/layer/atlas/b$j;->AtlasMessagesRecyclerView_theirBubbleColor:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/layer/atlas/b$c;->atlas_color_primary_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v4, Lcom/layer/atlas/b/d$a;->boI:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/layer/atlas/b/d;

    invoke-direct {v0, v4, v7}, Lcom/layer/atlas/b/d;-><init>(Lcom/layer/atlas/b/d$a;B)V

    iput-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bno:Lcom/layer/atlas/b/d;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/layer/sdk/LayerClient;Lcom/c/a/t;)Lcom/layer/atlas/AtlasMessagesRecyclerView;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnn:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnn:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->W(Z)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnn:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    new-instance v0, Lcom/layer/atlas/a/a;

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/layer/atlas/a/a;-><init>(Landroid/content/Context;Lcom/layer/sdk/LayerClient;Lcom/c/a/t;)V

    iput-object p0, v0, Lcom/layer/atlas/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/layer/atlas/AtlasMessagesRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/layer/atlas/AtlasMessagesRecyclerView$1;-><init>(Lcom/layer/atlas/AtlasMessagesRecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/layer/atlas/a/a;->a(Lcom/layer/atlas/a/a$f;)Lcom/layer/atlas/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    iget-object v1, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bno:Lcom/layer/atlas/b/d;

    iput-object v1, v0, Lcom/layer/atlas/a/a;->bno:Lcom/layer/atlas/b/d;

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    new-instance v0, Lcom/layer/atlas/util/a/a;

    invoke-direct {v0}, Lcom/layer/atlas/util/a/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$f;)V

    new-instance v0, Lcom/layer/atlas/AtlasMessagesRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/layer/atlas/AtlasMessagesRecyclerView$2;-><init>(Lcom/layer/atlas/AtlasMessagesRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    return-object p0
.end method

.method public final getFooterView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    iget-object v0, v0, Lcom/layer/atlas/a/a;->bnH:Landroid/view/View;

    return-object v0
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    invoke-virtual {v0}, Lcom/layer/atlas/a/a;->refresh()V

    goto :goto_0
.end method

.method public final setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AtlasMessagesRecyclerView sets its own Adapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final wg()V
    .locals 3

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    invoke-virtual {v0}, Lcom/layer/atlas/a/a;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnn:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->hs()I

    move-result v1

    add-int/lit8 v2, v0, -0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bA(I)V

    goto :goto_0
.end method
