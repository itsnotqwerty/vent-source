.class public final Lcom/intercom/input/gallery/j;
.super Landroid/support/v7/widget/RecyclerView$h;


# instance fields
.field private final bmk:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    iput p1, p0, Lcom/intercom/input/gallery/j;->bmk:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/intercom/input/gallery/m$e;->intercom_composer_expanded_column_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->aO(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/intercom/input/gallery/j;->bmk:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method
