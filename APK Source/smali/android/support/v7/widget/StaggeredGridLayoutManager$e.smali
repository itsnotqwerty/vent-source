.class final Landroid/support/v7/widget/StaggeredGridLayoutManager$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field aiH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field aiI:I

.field aiJ:I

.field aiK:I

.field final synthetic ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

.field final mIndex:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V
    .locals 2

    const/high16 v1, -0x80000000

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiK:I

    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    return-void
.end method

.method private an(II)I
    .locals 11

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v7

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v8

    if-le p2, p1, :cond_2

    move v1, v2

    :goto_0
    if-eq p1, p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v9

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v10

    if-gt v9, v8, :cond_3

    move v6, v2

    :goto_1
    if-lt v10, v7, :cond_4

    move v4, v2

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    if-lt v9, v7, :cond_0

    if-le v10, v8, :cond_5

    :cond_0
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v3

    :cond_1
    return v3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    add-int/2addr p1, v1

    goto :goto_0
.end method

.method private iO()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->cb(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->aiz:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->cc(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    :cond_0
    return-void
.end method

.method private iQ()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->cb(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->aiz:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->cc(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final ao(II)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_2

    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    if-eqz v3, :cond_4

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_6

    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    if-nez v3, :cond_5

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_6

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, -0x1

    move-object v1, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method final bg(Landroid/view/View;)V
    .locals 4

    const/high16 v3, -0x80000000

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiK:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiK:I

    :cond_2
    return-void
.end method

.method final bh(Landroid/view/View;)V
    .locals 4

    const/high16 v3, -0x80000000

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiK:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiK:I

    :cond_2
    return-void
.end method

.method final cd(I)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iO()V

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    goto :goto_0
.end method

.method final ce(I)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iQ()V

    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    goto :goto_0
.end method

.method final cf(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    return-void
.end method

.method final cg(I)V
    .locals 2

    const/high16 v1, -0x80000000

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    :cond_1
    return-void
.end method

.method final clear()V
    .locals 2

    const/high16 v1, -0x80000000

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiK:I

    return-void
.end method

.method final iP()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iO()V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    goto :goto_0
.end method

.method final iR()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iQ()V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    goto :goto_0
.end method

.method final iS()V
    .locals 5

    const/high16 v4, -0x80000000

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v3, 0x0

    iput-object v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiK:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiK:I

    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    :cond_2
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    return-void
.end method

.method final iT()V
    .locals 4

    const/high16 v3, -0x80000000

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    :cond_0
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiK:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiK:I

    :cond_2
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    return-void
.end method

.method public final iU()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->an(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->an(II)I

    move-result v0

    goto :goto_0
.end method

.method public final iV()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->an(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->an(II)I

    move-result v0

    goto :goto_0
.end method
