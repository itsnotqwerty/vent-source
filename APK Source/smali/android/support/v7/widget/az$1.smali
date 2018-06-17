.class final Landroid/support/v7/widget/az$1;
.super Landroid/support/v7/widget/az;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/az;-><init>(Landroid/support/v7/widget/RecyclerView$i;B)V

    return-void
.end method


# virtual methods
.method public final aG(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$i;->aW(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->leftMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final aH(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$i;->aY(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final aI(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    iget-object v1, p0, Landroid/support/v7/widget/az$1;->lg:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$i;->e(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->lg:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public final aJ(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    iget-object v1, p0, Landroid/support/v7/widget/az$1;->lg:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$i;->e(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->lg:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public final aK(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$i;->aU(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final aL(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$i;->aV(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final bD(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$i;->bH(I)V

    return-void
.end method

.method public final getEnd()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    return v0
.end method

.method public final getEndPadding()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public final getMode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->afm:I

    return v0
.end method

.method public final hA()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    iget-object v1, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final hB()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->afn:I

    return v0
.end method

.method public final hy()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final hz()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    iget-object v1, p0, Landroid/support/v7/widget/az$1;->adr:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
