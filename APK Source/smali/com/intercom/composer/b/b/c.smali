.class public final Lcom/intercom/composer/b/b/c;
.super Landroid/support/v7/widget/RecyclerView$h;


# instance fields
.field final blA:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/intercom/composer/g$c;->intercom_composer_icon_bar_left_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/intercom/composer/b/b/c;->blA:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->aP(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/intercom/composer/b/b/c;->blA:I

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method
