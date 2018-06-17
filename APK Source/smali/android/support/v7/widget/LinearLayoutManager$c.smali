.class final Landroid/support/v7/widget/LinearLayoutManager$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field EK:I

.field abF:Z

.field abG:I

.field abH:I

.field abI:I

.field abM:Z

.field acu:I

.field acv:I

.field acw:Z

.field acx:I

.field acy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field oO:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abF:Z

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->acw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->acy:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->acy:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->acy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->acy:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v0

    if-ne v4, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager$c;->aF(Landroid/view/View;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$p;->bM(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    goto :goto_1
.end method

.method public final aF(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->acy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x0

    const v1, 0x7fffffff

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->acy:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    if-eq v2, p1, :cond_3

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    sub-int/2addr v0, v6

    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    mul-int/2addr v0, v6

    if-ltz v0, :cond_3

    if-ge v0, v1, :cond_3

    if-eqz v0, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :cond_1
    if-nez v2, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    goto :goto_2

    :cond_3
    move v0, v1

    move-object v2, v3

    goto :goto_1
.end method

.method final b(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
