.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$b;,
        Landroid/support/v7/widget/GridLayoutManager$a;,
        Landroid/support/v7/widget/GridLayoutManager$c;
    }
.end annotation


# instance fields
.field final abA:Landroid/graphics/Rect;

.field abt:Z

.field abu:I

.field abv:[I

.field abw:[Landroid/view/View;

.field final abx:Landroid/util/SparseIntArray;

.field final aby:Landroid/util/SparseIntArray;

.field abz:Landroid/support/v7/widget/GridLayoutManager$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abt:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abx:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->aby:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abz:Landroid/support/v7/widget/GridLayoutManager$c;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abA:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->bw(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abt:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abx:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->aby:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abz:Landroid/support/v7/widget/GridLayoutManager$c;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abA:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->bw(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abt:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abx:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->aby:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abz:Landroid/support/v7/widget/GridLayoutManager$c;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abA:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$i$b;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i$b;->spanCount:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->bw(I)V

    return-void
.end method

.method private M(II)I
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->gF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I
    .locals 3

    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    invoke-static {p3, v0}, Landroid/support/v7/widget/GridLayoutManager$c;->P(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$p;->bL(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find span size for pre layout position. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayoutManager$c;->P(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;IZ)V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    move v1, v0

    move v2, v3

    :goto_0
    if-eq v2, p3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abw:[Landroid/view/View;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-static {v4}, Landroid/support/v7/widget/GridLayoutManager;->aT(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v4

    iput v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    iput v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    add-int/2addr v3, v0

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, -0x1

    move v1, v0

    move p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    if-eqz p4, :cond_3

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$i;->afi:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$j;->width:I

    invoke-static {v1, p2, v2}, Landroid/support/v7/widget/RecyclerView$i;->h(III)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->height:I

    invoke-static {v1, p3, v0}, Landroid/support/v7/widget/RecyclerView$i;->h(III)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I
    .locals 3

    const/4 v1, -0x1

    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abz:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$c;->O(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->aby:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$p;->bL(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abz:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$c;->O(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/view/View;IZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v1, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abA:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    invoke-direct {p0, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->M(II)I

    move-result v1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->hE:I

    if-ne v4, v5, :cond_0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    invoke-static {v1, p2, v3, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->b(IIIIZ)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v3}, Landroid/support/v7/widget/az;->hA()I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView$i;->afn:I

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    invoke-static {v3, v4, v2, v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->b(IIIIZ)I

    move-result v0

    move v2, v1

    :goto_0
    invoke-direct {p0, p1, v2, v0, p3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void

    :cond_0
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    invoke-static {v1, p2, v2, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->b(IIIIZ)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hA()I

    move-result v2

    iget v4, p0, Landroid/support/v7/widget/RecyclerView$i;->afm:I

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    invoke-static {v2, v4, v3, v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->b(IIIIZ)I

    move-result v2

    move v0, v1

    goto :goto_0
.end method

.method private bv(I)V
    .locals 9

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    if-eqz v0, :cond_0

    array-length v1, v0

    add-int/lit8 v2, v7, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    if-eq v1, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v7, 0x1

    new-array v0, v0, [I

    :cond_1
    aput v5, v0, v5

    div-int v2, p1, v7

    rem-int v8, p1, v7

    const/4 v1, 0x1

    move v4, v1

    move v3, v5

    move v6, v5

    :goto_0
    if-gt v4, v7, :cond_2

    add-int/2addr v3, v8

    if-lez v3, :cond_3

    sub-int v1, v7, v3

    if-ge v1, v8, :cond_3

    add-int/lit8 v1, v2, 0x1

    sub-int/2addr v3, v7

    :goto_1
    add-int v5, v6, v1

    aput v5, v0, v4

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v6, v5

    goto :goto_0

    :cond_2
    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    return-void

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private bw(I)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abt:Z

    if-gtz p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Span count should be at least 1. Provided "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abz:Landroid/support/v7/widget/GridLayoutManager$c;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v2, -0x1

    iget-boolean v1, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abx:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$p;->bL(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "GridLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hc()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->bv(I)V

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hd()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abw:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abw:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abw:[Landroid/view/View;

    :cond_1
    return-void
.end method


# virtual methods
.method public final I(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abz:Landroid/support/v7/widget/GridLayoutManager$c;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final J(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abz:Landroid/support/v7/widget/GridLayoutManager$c;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final K(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abz:Landroid/support/v7/widget/GridLayoutManager$c;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final L(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abz:Landroid/support/v7/widget/GridLayoutManager$c;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final W(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->W(Z)V

    return-void
.end method

.method public final a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->hc()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->hd()V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->hE:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method final a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;III)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->hj()V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v5

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v6

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v2, v3

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_3

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v4, :cond_6

    move-object v0, v2

    move-object v4, v3

    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method public final a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 25

    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->aM(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_1

    const/4 v12, 0x0

    :cond_0
    :goto_0
    return-object v12

    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayoutManager$b;

    iget v0, v4, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    move/from16 v19, v0

    iget v5, v4, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    iget v4, v4, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    add-int v20, v5, v4

    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->bB(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/widget/GridLayoutManager;->ace:Z

    if-eq v4, v5, :cond_5

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    const/4 v6, -0x1

    const/4 v4, -0x1

    move v5, v4

    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->hE:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->gF()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v8, v4

    :goto_4
    const/4 v15, 0x0

    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v7}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v21

    move/from16 v17, v7

    :goto_5
    move/from16 v0, v17

    if-eq v0, v5, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, v18

    if-eq v12, v0, :cond_3

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_8

    move/from16 v0, v21

    if-eq v4, v0, :cond_8

    if-eqz v15, :cond_17

    :cond_3
    if-eqz v15, :cond_16

    move-object v12, v15

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    move v5, v4

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    move v8, v4

    goto :goto_4

    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayoutManager$b;

    iget v0, v4, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    move/from16 v22, v0

    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    iget v0, v4, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    move/from16 v16, v0

    add-int v23, v7, v16

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_9

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    :cond_9
    const/4 v7, 0x0

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-eqz v16, :cond_a

    if-eqz v15, :cond_b

    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_d

    if-nez v11, :cond_d

    :cond_b
    const/4 v7, 0x1

    :cond_c
    :goto_6
    if-eqz v7, :cond_17

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_15

    iget v14, v4, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v13, v4, v7

    move v4, v9

    move v7, v10

    move-object v15, v12

    :goto_7
    add-int v12, v17, v6

    move v9, v4

    move v10, v7

    move/from16 v17, v12

    goto/16 :goto_5

    :cond_d
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    sub-int v24, v24, v16

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-eqz v16, :cond_10

    move/from16 v0, v24

    if-le v0, v13, :cond_e

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    move/from16 v0, v24

    if-ne v0, v13, :cond_c

    move/from16 v0, v22

    if-le v0, v14, :cond_f

    const/16 v16, 0x1

    :goto_8
    move/from16 v0, v16

    if-ne v8, v0, :cond_c

    const/4 v7, 0x1

    goto :goto_6

    :cond_f
    const/16 v16, 0x0

    goto :goto_8

    :cond_10
    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->afd:Landroid/support/v7/widget/bu;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/bu;->bi(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->afe:Landroid/support/v7/widget/bu;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/bu;->bi(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/16 v16, 0x1

    :goto_9
    if-nez v16, :cond_12

    const/16 v16, 0x1

    :goto_a
    if-eqz v16, :cond_c

    move/from16 v0, v24

    if-le v0, v9, :cond_13

    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_11
    const/16 v16, 0x0

    goto :goto_9

    :cond_12
    const/16 v16, 0x0

    goto :goto_a

    :cond_13
    move/from16 v0, v24

    if-ne v0, v9, :cond_c

    move/from16 v0, v22

    if-le v0, v10, :cond_14

    const/16 v16, 0x1

    :goto_b
    move/from16 v0, v16

    if-ne v8, v0, :cond_c

    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_14
    const/16 v16, 0x0

    goto :goto_b

    :cond_15
    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int/2addr v4, v9

    move-object v11, v12

    goto/16 :goto_7

    :cond_16
    move-object v12, v11

    goto/16 :goto_0

    :cond_17
    move v4, v9

    move v7, v10

    goto/16 :goto_7
.end method

.method public final a(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->hE:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->g(III)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/r;->Q(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->g(III)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setMeasuredDimension(II)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/r;->Q(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->g(III)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->g(III)I

    move-result v0

    goto :goto_0
.end method

.method final a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->hc()V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v1, :cond_3

    if-ne p4, v0, :cond_0

    :goto_0
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v1

    if-eqz v0, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->mPosition:I

    if-lez v0, :cond_3

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->mPosition:I

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->mPosition:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->mPosition:I

    :goto_2
    if-ge v0, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v2

    if-le v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_2
    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->mPosition:I

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->hd()V

    return-void
.end method

.method final a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 13

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hB()I

    move-result v9

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_2

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    aget v1, v1, v3

    move v8, v1

    :goto_1
    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->hc()V

    :cond_0
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    move v3, v1

    :goto_2
    const/4 v4, 0x0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    if-nez v3, :cond_1

    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v1

    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    invoke-direct {p0, p1, p2, v5}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v5

    add-int/2addr v1, v5

    :cond_1
    :goto_3
    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    if-ge v4, v5, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/LinearLayoutManager$c;->b(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-lez v1, :cond_6

    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    invoke-direct {p0, p1, p2, v5}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    if-le v6, v7, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spans."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    move v8, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    move v3, v1

    goto :goto_2

    :cond_5
    sub-int/2addr v1, v6

    if-ltz v1, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->abw:[Landroid/view/View;

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->Pw:Z

    :goto_4
    return-void

    :cond_7
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v4, v3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;IZ)V

    const/4 v1, 0x0

    move v7, v1

    :goto_5
    if-ge v7, v4, :cond_c

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abw:[Landroid/view/View;

    aget-object v10, v1, v7

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->acy:Ljava/util/List;

    if-nez v1, :cond_a

    if-eqz v3, :cond_9

    const/4 v1, -0x1

    const/4 v11, 0x0

    invoke-super {p0, v10, v1, v11}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;IZ)V

    :goto_6
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abA:Landroid/graphics/Rect;

    invoke-virtual {p0, v10, v1}, Landroid/support/v7/widget/GridLayoutManager;->f(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v10, v9, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IZ)V

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v10}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v1

    if-le v1, v6, :cond_8

    move v6, v1

    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$b;

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v12, v10}, Landroid/support/v7/widget/az;->aL(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v11

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    int-to-float v1, v1

    div-float v1, v10, v1

    cmpl-float v10, v1, v5

    if-lez v10, :cond_1b

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move v5, v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    const/4 v11, 0x0

    invoke-super {p0, v10, v1, v11}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;IZ)V

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_b

    const/4 v1, -0x1

    const/4 v11, 0x1

    invoke-super {p0, v10, v1, v11}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;IZ)V

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    const/4 v11, 0x1

    invoke-super {p0, v10, v1, v11}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;IZ)V

    goto :goto_6

    :cond_c
    if-eqz v2, :cond_d

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->bv(I)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v1

    :goto_8
    if-ge v3, v4, :cond_e

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abw:[Landroid/view/View;

    aget-object v1, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    invoke-direct {p0, v1, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IZ)V

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_1a

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_8

    :cond_d
    move v2, v6

    :cond_e
    const/4 v1, 0x0

    move v6, v1

    :goto_a
    if-ge v6, v4, :cond_11

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abw:[Landroid/view/View;

    aget-object v7, v1, v6

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_f

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v3, v1, Landroid/support/v7/widget/GridLayoutManager$b;->abA:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v5, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->bottomMargin:I

    add-int/2addr v5, v8

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v3, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->rightMargin:I

    add-int/2addr v3, v8

    iget v8, v1, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    iget v9, v1, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    invoke-direct {p0, v8, v9}, Landroid/support/v7/widget/GridLayoutManager;->M(II)I

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/GridLayoutManager;->hE:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    const/high16 v9, 0x40000000    # 2.0f

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v3, v1, v10}, Landroid/support/v7/widget/GridLayoutManager;->b(IIIIZ)I

    move-result v1

    sub-int v3, v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v5, v3

    :goto_b
    const/4 v3, 0x1

    invoke-direct {p0, v7, v1, v5, v3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    :cond_f
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_a

    :cond_10
    sub-int v3, v2, v3

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v9, 0x40000000    # 2.0f

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v5, v1, v10}, Landroid/support/v7/widget/GridLayoutManager;->b(IIIIZ)I

    move-result v5

    move v1, v3

    goto :goto_b

    :cond_11
    move-object/from16 v0, p4

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->acs:I

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->hE:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_15

    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->oO:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_14

    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    sub-int v5, v3, v2

    move v2, v3

    :goto_c
    const/4 v10, 0x0

    move v3, v1

    move v7, v2

    move v8, v5

    move v9, v6

    :goto_d
    if-ge v10, v4, :cond_19

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abw:[Landroid/view/View;

    aget-object v11, v1, v10

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$b;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->hE:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_18

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->gF()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    iget v6, v1, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    sub-int/2addr v5, v6

    aget v3, v3, v5

    add-int/2addr v3, v2

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2, v11}, Landroid/support/v7/widget/az;->aL(Landroid/view/View;)I

    move-result v2

    sub-int v2, v3, v2

    move v5, v7

    move v6, v8

    move v9, v3

    :goto_e
    invoke-static {v11, v2, v6, v9, v5}, Landroid/support/v7/widget/GridLayoutManager;->h(Landroid/view/View;IIII)V

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->act:Z

    :cond_13
    move-object/from16 v0, p4

    iget-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->Px:Z

    invoke-virtual {v11}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    or-int/2addr v1, v3

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->Px:Z

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move v3, v2

    move v7, v5

    move v8, v6

    goto :goto_d

    :cond_14
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    add-int/2addr v2, v3

    move v5, v3

    goto :goto_c

    :cond_15
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->oO:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_16

    move-object/from16 v0, p3

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    sub-int v1, v6, v2

    move v2, v3

    goto :goto_c

    :cond_16
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    add-int v6, v1, v2

    move v2, v3

    goto :goto_c

    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    iget v5, v1, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    aget v3, v3, v5

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v3, v11}, Landroid/support/v7/widget/az;->aL(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    move v5, v7

    move v6, v8

    move v9, v3

    goto :goto_e

    :cond_18
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager;->abv:[I

    iget v6, v1, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    aget v5, v5, v6

    add-int v6, v2, v5

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2, v11}, Landroid/support/v7/widget/az;->aL(Landroid/view/View;)I

    move-result v2

    add-int v5, v6, v2

    move v2, v3

    goto :goto_e

    :cond_19
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->abw:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1a
    move v1, v2

    goto/16 :goto_9

    :cond_1b
    move v1, v5

    goto/16 :goto_7
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/support/v7/widget/GridLayoutManager$b;

    if-nez v3, :cond_0

    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    :goto_0
    return-void

    :cond_0
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v3

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->hE:I

    if-nez v4, :cond_2

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    if-le v6, v1, :cond_1

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    if-ne v0, v6, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v4, v5, v3, v1, v0}, Landroid/support/v4/view/a/a$b;->a(IIIIZ)Landroid/support/v4/view/a/a$b;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/a;->G(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    if-le v6, v1, :cond_3

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    if-ne v0, v6, :cond_3

    move v2, v1

    :cond_3
    invoke-static {v3, v1, v4, v5, v2}, Landroid/support/v4/view/a/a$b;->a(IIIIZ)Landroid/support/v4/view/a/a$b;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/a;->G(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abt:Z

    return-void
.end method

.method final a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    move v0, v1

    :goto_0
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->b(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroid/support/v7/widget/RecyclerView$i$a;->C(II)V

    add-int/lit8 v2, v2, -0x1

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$j;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$b;

    return v0
.end method

.method public final b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->hc()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->hd()V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abu:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 6

    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->abx:Landroid/util/SparseIntArray;

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abC:I

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->aby:Landroid/util/SparseIntArray;

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->abB:I

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abx:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->aby:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final d(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final ha()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abz:Landroid/support/v7/widget/GridLayoutManager$c;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final hb()Landroid/support/v7/widget/RecyclerView$j;
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->hE:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    goto :goto_0
.end method

.method public final he()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->abt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
