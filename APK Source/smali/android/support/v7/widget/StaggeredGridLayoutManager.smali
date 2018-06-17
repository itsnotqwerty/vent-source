.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$i;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$t$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$a;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$d;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$c;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$e;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$b;
    }
.end annotation


# instance fields
.field private abu:I

.field acd:Z

.field ace:Z

.field private acg:Z

.field ach:I

.field aci:I

.field aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

.field aie:Landroid/support/v7/widget/az;

.field aif:Landroid/support/v7/widget/az;

.field private aig:I

.field private final aih:Landroid/support/v7/widget/as;

.field private aii:Ljava/util/BitSet;

.field aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

.field private aik:I

.field private ail:Z

.field private aim:Z

.field private ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

.field private aio:I

.field private final aip:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

.field private aiq:Z

.field private air:[I

.field private final ais:Ljava/lang/Runnable;

.field private hE:I

.field private final lg:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$i;-><init>()V

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aci:I

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aik:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->lg:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aip:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aiq:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acg:Z

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ais:Ljava/lang/Runnable;

    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bw(I)V

    new-instance v0, Landroid/support/v7/widget/as;

    invoke-direct {v0}, Landroid/support/v7/widget/as;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iI()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$i;-><init>()V

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aci:I

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aik:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->lg:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aip:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aiq:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acg:Z

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ais:Ljava/lang/Runnable;

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$i$b;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$i$b;->orientation:I

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    iput-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_1
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$i$b;->spanCount:I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bw(I)V

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$i$b;->afp:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->X(Z)V

    new-instance v0, Landroid/support/v7/widget/as;

    invoke-direct {v0}, Landroid/support/v7/widget/as;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iI()V

    return-void
.end method

.method private X(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acd:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iput-boolean p1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acd:Z

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/as;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 15

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aii:Ljava/util/BitSet;

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget-boolean v1, v1, Landroid/support/v7/widget/as;->abM:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/as;->oO:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const v1, 0x7fffffff

    move v2, v1

    :goto_0
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/as;->oO:I

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ak(II)V

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hz()I

    move-result v1

    move v3, v1

    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p3}, Landroid/support/v7/widget/as;->b(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget-boolean v4, v4, Landroid/support/v7/widget/as;->abM:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aii:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    :cond_0
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/as;->abH:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$p;->bM(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/as;->abH:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/as;->abI:I

    add-int/2addr v1, v4

    move-object/from16 v0, p2

    iput v1, v0, Landroid/support/v7/widget/as;->abH:I

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v13

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v5, v5

    if-lt v13, v5, :cond_7

    :cond_1
    const/4 v4, -0x1

    move v5, v4

    :goto_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_8

    const/4 v4, 0x1

    move v11, v4

    :goto_4
    if-eqz v11, :cond_c

    iget-boolean v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v5, 0x0

    aget-object v7, v4, v5

    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v4, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->ca(I)V

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    iget v5, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    aput v5, v4, v13

    :goto_5
    iput-object v7, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/as;->oO:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-super {p0, v12, v4, v5}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;IZ)V

    :goto_6
    iget-boolean v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v4, :cond_f

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aio:I

    iget v5, p0, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    iget v6, p0, Landroid/support/v7/widget/RecyclerView$i;->afn:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->height:I

    const/4 v10, 0x1

    invoke-static {v5, v6, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(IIIIZ)I

    move-result v5

    invoke-direct {p0, v12, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Landroid/view/View;II)V

    :goto_7
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/as;->oO:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    iget-boolean v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v4, :cond_11

    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bV(I)I

    move-result v4

    :goto_8
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v5, v12}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v5

    add-int v6, v4, v5

    if-eqz v11, :cond_2f

    iget-boolean v5, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v5, :cond_2f

    new-instance v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;-><init>()V

    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    new-array v5, v5, [I

    iput-object v5, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->aiA:[I

    const/4 v5, 0x0

    :goto_9
    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v5, v9, :cond_12

    iget-object v9, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->aiA:[I

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v10, v10, v5

    invoke-virtual {v10, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v10

    sub-int v10, v4, v10

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_3
    const/high16 v1, -0x80000000

    move v2, v1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/as;->oO:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/as;->abK:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/as;->abG:I

    add-int/2addr v1, v2

    move v2, v1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/as;->abJ:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/as;->abG:I

    sub-int/2addr v1, v2

    move v2, v1

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hy()I

    move-result v1

    move v3, v1

    goto/16 :goto_1

    :cond_7
    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    aget v4, v4, v13

    move v5, v4

    goto/16 :goto_3

    :cond_8
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/as;->oO:I

    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bW(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    add-int/lit8 v5, v4, -0x1

    const/4 v6, -0x1

    const/4 v4, -0x1

    :goto_a
    move-object/from16 v0, p2

    iget v7, v0, Landroid/support/v7/widget/as;->oO:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    const/4 v7, 0x0

    const v9, 0x7fffffff

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v8}, Landroid/support/v7/widget/az;->hy()I

    move-result v14

    move v10, v5

    :goto_b
    if-eq v10, v6, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v5, v5, v10

    invoke-virtual {v5, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v8

    if-ge v8, v9, :cond_31

    :goto_c
    add-int/2addr v10, v4

    move-object v7, v5

    move v9, v8

    goto :goto_b

    :cond_a
    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    const/4 v4, 0x1

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    const/high16 v9, -0x80000000

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v8}, Landroid/support/v7/widget/az;->hz()I

    move-result v14

    move v10, v5

    :goto_d
    if-eq v10, v6, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v5, v5, v10

    invoke-virtual {v5, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v8

    if-le v8, v9, :cond_30

    :goto_e
    add-int/2addr v10, v4

    move-object v7, v5

    move v9, v8

    goto :goto_d

    :cond_c
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v7, v4, v5

    goto/16 :goto_5

    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-super {p0, v12, v4, v5}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;IZ)V

    goto/16 :goto_6

    :cond_e
    iget v4, p0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    iget v5, p0, Landroid/support/v7/widget/RecyclerView$i;->afm:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    iget v8, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    const/4 v9, 0x1

    invoke-static {v4, v5, v6, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(IIIIZ)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aio:I

    invoke-direct {p0, v12, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Landroid/view/View;II)V

    goto/16 :goto_7

    :cond_f
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aig:I

    iget v5, p0, Landroid/support/v7/widget/RecyclerView$i;->afm:I

    const/4 v6, 0x0

    iget v8, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    const/4 v9, 0x0

    invoke-static {v4, v5, v6, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(IIIIZ)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    iget v6, p0, Landroid/support/v7/widget/RecyclerView$i;->afn:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->height:I

    const/4 v10, 0x1

    invoke-static {v5, v6, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(IIIIZ)I

    move-result v5

    invoke-direct {p0, v12, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Landroid/view/View;II)V

    goto/16 :goto_7

    :cond_10
    iget v4, p0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    iget v5, p0, Landroid/support/v7/widget/RecyclerView$i;->afm:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    iget v8, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    const/4 v9, 0x1

    invoke-static {v4, v5, v6, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(IIIIZ)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aig:I

    iget v6, p0, Landroid/support/v7/widget/RecyclerView$i;->afn:I

    const/4 v8, 0x0

    iget v9, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->height:I

    const/4 v10, 0x0

    invoke-static {v5, v6, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(IIIIZ)I

    move-result v5

    invoke-direct {p0, v12, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Landroid/view/View;II)V

    goto/16 :goto_7

    :cond_11
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v4

    goto/16 :goto_8

    :cond_12
    const/4 v5, -0x1

    iput v5, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->aiz:I

    iput v13, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;)V

    move v5, v6

    move v8, v4

    :goto_f
    iget-boolean v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/as;->abI:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_14

    if-nez v11, :cond_13

    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/as;->oO:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1c

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/high16 v6, -0x80000000

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v6

    const/4 v4, 0x1

    :goto_10
    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v4, v9, :cond_1a

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v9, v9, v4

    const/high16 v10, -0x80000000

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v9

    if-eq v9, v6, :cond_19

    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_1b

    const/4 v4, 0x1

    :goto_12
    if-eqz v4, :cond_14

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v4, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->cb(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v4

    if-eqz v4, :cond_13

    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->aiB:Z

    :cond_13
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aiq:Z

    :cond_14
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/as;->oO:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_23

    iget-boolean v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v4, :cond_20

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    add-int/lit8 v4, v4, -0x1

    :goto_13
    if-ltz v4, :cond_21

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v6, v6, v4

    invoke-virtual {v6, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->bh(Landroid/view/View;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_13

    :cond_15
    iget-boolean v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v4, :cond_16

    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bU(I)I

    move-result v4

    :goto_14
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v5, v12}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v5

    sub-int v6, v4, v5

    if-eqz v11, :cond_18

    iget-boolean v5, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v5, :cond_18

    new-instance v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;-><init>()V

    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    new-array v5, v5, [I

    iput-object v5, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->aiA:[I

    const/4 v5, 0x0

    :goto_15
    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v5, v9, :cond_17

    iget-object v9, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->aiA:[I

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v10, v10, v5

    invoke-virtual {v10, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v10

    sub-int/2addr v10, v4

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_16
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v4

    goto :goto_14

    :cond_17
    const/4 v5, 0x1

    iput v5, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->aiz:I

    iput v13, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;)V

    :cond_18
    move v5, v4

    move v8, v6

    goto/16 :goto_f

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    :cond_1a
    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    const/4 v4, 0x0

    goto :goto_12

    :cond_1c
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/high16 v6, -0x80000000

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v6

    const/4 v4, 0x1

    :goto_16
    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v4, v9, :cond_1e

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v9, v9, v4

    const/high16 v10, -0x80000000

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v9

    if-eq v9, v6, :cond_1d

    const/4 v4, 0x0

    :goto_17
    if-nez v4, :cond_1f

    const/4 v4, 0x1

    goto/16 :goto_12

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_1e
    const/4 v4, 0x1

    goto :goto_17

    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_20
    iget-object v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v4, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->bh(Landroid/view/View;)V

    :cond_21
    :goto_18
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->gF()Z

    move-result v4

    if-eqz v4, :cond_26

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_26

    iget-boolean v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v4, :cond_25

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v4}, Landroid/support/v7/widget/az;->hz()I

    move-result v4

    :goto_19
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v6, v12}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v6

    sub-int v6, v4, v6

    move v9, v4

    :goto_1a
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_28

    invoke-static {v12, v6, v8, v9, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/view/View;IIII)V

    :goto_1b
    iget-boolean v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v4, :cond_29

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v4, v4, Landroid/support/v7/widget/as;->oO:I

    invoke-direct {p0, v4, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ak(II)V

    :goto_1c
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/as;)V

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget-boolean v4, v4, Landroid/support/v7/widget/as;->abL:Z

    if-eqz v4, :cond_22

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-boolean v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aii:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    :cond_22
    :goto_1d
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_23
    iget-boolean v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v4, :cond_24

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    add-int/lit8 v4, v4, -0x1

    :goto_1e
    if-ltz v4, :cond_21

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v6, v6, v4

    invoke-virtual {v6, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->bg(Landroid/view/View;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1e

    :cond_24
    iget-object v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v4, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->bg(Landroid/view/View;)V

    goto :goto_18

    :cond_25
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v4}, Landroid/support/v7/widget/az;->hz()I

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    add-int/lit8 v6, v6, -0x1

    iget v9, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    sub-int/2addr v6, v9

    iget v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aig:I

    mul-int/2addr v6, v9

    sub-int/2addr v4, v6

    goto :goto_19

    :cond_26
    iget-boolean v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v4, :cond_27

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v4}, Landroid/support/v7/widget/az;->hy()I

    move-result v4

    :goto_1f
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v6, v12}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v6

    add-int v9, v4, v6

    move v6, v4

    goto :goto_1a

    :cond_27
    iget v4, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aig:I

    mul-int/2addr v4, v6

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v6}, Landroid/support/v7/widget/az;->hy()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_1f

    :cond_28
    invoke-static {v12, v8, v6, v5, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/view/View;IIII)V

    goto :goto_1b

    :cond_29
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v4, v4, Landroid/support/v7/widget/as;->oO:I

    invoke-direct {p0, v7, v4, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$e;II)V

    goto :goto_1c

    :cond_2a
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aii:Ljava/util/BitSet;

    iget v4, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_1d

    :cond_2b
    if-nez v1, :cond_2c

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/as;)V

    :cond_2c
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v1, v1, Landroid/support/v7/widget/as;->oO:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hy()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bU(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hy()I

    move-result v2

    sub-int v1, v2, v1

    :goto_20
    if-lez v1, :cond_2e

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/as;->abG:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_21
    return v1

    :cond_2d
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hz()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bV(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hz()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_20

    :cond_2e
    const/4 v1, 0x0

    goto :goto_21

    :cond_2f
    move v5, v6

    move v8, v4

    goto/16 :goto_f

    :cond_30
    move-object v5, v7

    move v8, v9

    goto/16 :goto_e

    :cond_31
    move-object v5, v7

    move v8, v9

    goto/16 :goto_c
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$u;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iput v1, v0, Landroid/support/v7/widget/as;->abG:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iput p1, v0, Landroid/support/v7/widget/as;->abH:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ii()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p2, Landroid/support/v7/widget/RecyclerView$u;->afJ:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-ge v0, p1, :cond_1

    move v0, v3

    :goto_0
    if-ne v2, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hA()I

    move-result v0

    move v2, v1

    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView;->adM:Z

    if-eqz v4, :cond_3

    move v4, v3

    :goto_2
    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v5}, Landroid/support/v7/widget/az;->hy()I

    move-result v5

    sub-int v2, v5, v2

    iput v2, v4, Landroid/support/v7/widget/as;->abJ:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v4}, Landroid/support/v7/widget/az;->hz()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v2, Landroid/support/v7/widget/as;->abK:I

    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iput-boolean v1, v0, Landroid/support/v7/widget/as;->abL:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iput-boolean v3, v0, Landroid/support/v7/widget/as;->abF:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->getMode()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->getEnd()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, v0, Landroid/support/v7/widget/as;->abM:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hA()I

    move-result v2

    move v0, v1

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v5}, Landroid/support/v7/widget/az;->getEnd()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v4, Landroid/support/v7/widget/as;->abK:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    neg-int v2, v2

    iput v2, v0, Landroid/support/v7/widget/as;->abJ:I

    goto :goto_3

    :cond_5
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/az;->aI(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v3, :cond_3

    move v0, v1

    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iT()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iT()V

    :cond_4
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$p;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)V
    .locals 2

    const/high16 v1, -0x80000000

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bV(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hz()I

    move-result v1

    sub-int v0, v1, v0

    if-lez v0, :cond_0

    neg-int v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v1

    neg-int v1, v1

    sub-int/2addr v0, v1

    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/az;->bD(I)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/as;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v2, -0x1

    iget-boolean v1, p2, Landroid/support/v7/widget/as;->abF:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/support/v7/widget/as;->abM:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p2, Landroid/support/v7/widget/as;->abG:I

    if-nez v1, :cond_3

    iget v0, p2, Landroid/support/v7/widget/as;->oO:I

    if-ne v0, v2, :cond_2

    iget v0, p2, Landroid/support/v7/widget/as;->abK:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;I)V

    goto :goto_0

    :cond_2
    iget v0, p2, Landroid/support/v7/widget/as;->abJ:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;I)V

    goto :goto_0

    :cond_3
    iget v1, p2, Landroid/support/v7/widget/as;->oO:I

    if-ne v1, v2, :cond_7

    iget v3, p2, Landroid/support/v7/widget/as;->abJ:I

    iget v4, p2, Landroid/support/v7/widget/as;->abJ:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v5

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v1

    :goto_1
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v2

    if-le v2, v1, :cond_4

    move v1, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sub-int v0, v3, v1

    if-gez v0, :cond_6

    iget v0, p2, Landroid/support/v7/widget/as;->abK:I

    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;I)V

    goto :goto_0

    :cond_6
    iget v1, p2, Landroid/support/v7/widget/as;->abK:I

    iget v2, p2, Landroid/support/v7/widget/as;->abG:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_2

    :cond_7
    iget v3, p2, Landroid/support/v7/widget/as;->abK:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v5

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v1

    :goto_3
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v2

    if-ge v2, v1, :cond_8

    move v1, v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iget v0, p2, Landroid/support/v7/widget/as;->abK:I

    sub-int v0, v1, v0

    if-gez v0, :cond_a

    iget v0, p2, Landroid/support/v7/widget/as;->abJ:I

    :goto_4
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;I)V

    goto :goto_0

    :cond_a
    iget v1, p2, Landroid/support/v7/widget/as;->abJ:I

    iget v2, p2, Landroid/support/v7/widget/as;->abG:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_4
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$e;II)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiK:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iP()I

    move-result v1

    add-int/2addr v0, v1

    if-gt v0, p3, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aii:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iR()I

    move-result v1

    sub-int v0, v1, v0

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aii:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private ah(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v7

    if-le v7, v3, :cond_3

    if-ge v6, v4, :cond_3

    if-ge v6, v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    if-nez v1, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private ai(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v6

    if-le v6, v3, :cond_3

    if-ge v5, v4, :cond_3

    if-le v6, v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    if-nez v1, :cond_3

    :goto_2
    add-int/lit8 v2, v2, -0x1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private ak(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$e;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$u;)V
    .locals 4

    const/4 v1, 0x1

    if-lez p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iL()I

    move-result v2

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iput-boolean v1, v3, Landroid/support/v7/widget/as;->abF:Z

    invoke-direct {p0, v2, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$u;)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bT(I)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v1, v1, Landroid/support/v7/widget/as;->abI:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/as;->abH:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/as;->abG:I

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iM()I

    move-result v2

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/az;->aJ(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v4, :cond_3

    move v0, v1

    :goto_1
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iS()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v5, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iS()V

    :cond_4
    invoke-virtual {p0, v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$p;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)V
    .locals 2

    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bU(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hy()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/az;->bD(I)V

    goto :goto_0
.end method

.method private bS(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aig:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->getMode()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aio:I

    return-void
.end method

.method private bT(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iput p1, v2, Landroid/support/v7/widget/as;->oO:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Landroid/support/v7/widget/as;->abI:I

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private bU(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v2

    if-ge v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private bV(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private bW(I)Z
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-nez v0, :cond_3

    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eq v0, v3, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->gF()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private bX(I)I
    .locals 4

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iM()I

    move-result v0

    if-ge p1, v0, :cond_3

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private bw(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aii:Ljava/util/BitSet;

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    new-array v0, v0, [Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    invoke-direct {v2, p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method private c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v1

    :goto_0
    return p1

    :cond_1
    invoke-direct {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$u;)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/as;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v2, v2, Landroid/support/v7/widget/as;->abG:I

    if-lt v2, v0, :cond_2

    if-gez p1, :cond_3

    neg-int p1, v0

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    neg-int v2, p1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/az;->bD(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ail:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iput v1, v0, Landroid/support/v7/widget/as;->abG:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    invoke-direct {p0, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/as;)V

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1
.end method

.method private g(Landroid/view/View;II)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->lg:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->lg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->lg:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(III)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->topMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->lg:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->bottomMargin:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->lg:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-static {p3, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(III)I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method private gF()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hi()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->gF()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    return-void

    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iI()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/az;->a(Landroid/support/v7/widget/RecyclerView$i;I)Landroid/support/v7/widget/az;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/az;->a(Landroid/support/v7/widget/RecyclerView$i;I)Landroid/support/v7/widget/az;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    return-void
.end method

.method private iK()Landroid/view/View;
    .locals 12

    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v9, Ljava/util/BitSet;

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    invoke-direct {v9, v2}, Ljava/util/BitSet;-><init>(I)V

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    invoke-virtual {v9, v5, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->gF()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v4, :cond_1

    move v8, v0

    :goto_1
    if-ge v1, v8, :cond_2

    move v4, v3

    :goto_2
    move v7, v1

    :goto_3
    if-eq v7, v8, :cond_f

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget-boolean v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v10, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iR()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v11}, Landroid/support/v7/widget/az;->hz()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v10, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-nez v1, :cond_3

    move v1, v3

    :goto_4
    if-eqz v1, :cond_7

    move-object v0, v6

    :goto_5
    return-object v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, 0x1

    move v1, v5

    move v8, v4

    goto :goto_1

    :cond_2
    move v4, v0

    goto :goto_2

    :cond_3
    move v1, v5

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iP()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v11}, Landroid/support/v7/widget/az;->hy()I

    move-result v11

    if-le v10, v11, :cond_6

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiH:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-nez v1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v5

    goto :goto_4

    :cond_6
    move v1, v5

    goto :goto_4

    :cond_7
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->clear(I)V

    :cond_8
    iget-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-nez v1, :cond_e

    add-int v1, v7, v4

    if-eq v1, v8, :cond_e

    add-int v1, v7, v4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v1

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v11

    if-ge v1, v11, :cond_9

    move-object v0, v6

    goto :goto_5

    :cond_9
    if-ne v1, v11, :cond_10

    move v1, v3

    :goto_6
    if-eqz v1, :cond_e

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_c

    move v1, v3

    :goto_7
    if-gez v2, :cond_d

    move v0, v3

    :goto_8
    if-eq v1, v0, :cond_e

    move-object v0, v6

    goto :goto_5

    :cond_a
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v1

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v11

    if-le v1, v11, :cond_b

    move-object v0, v6

    goto/16 :goto_5

    :cond_b
    if-ne v1, v11, :cond_10

    move v1, v3

    goto :goto_6

    :cond_c
    move v1, v5

    goto :goto_7

    :cond_d
    move v0, v5

    goto :goto_8

    :cond_e
    add-int v0, v7, v4

    move v7, v0

    goto/16 :goto_3

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_10
    move v1, v5

    goto :goto_6
.end method

.method private iL()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private iM()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private static j(III)I
    .locals 3

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acg:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ah(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acg:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ai(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acg:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/bg;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/az;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private k(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acg:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ah(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acg:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ai(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acg:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/bg;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/az;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private k(III)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iL()I

    move-result v0

    move v2, v0

    :goto_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    if-ge p1, p2, :cond_2

    add-int/lit8 v1, p2, 0x1

    move v0, p1

    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->bZ(I)I

    sparse-switch p3, :sswitch_data_0

    :goto_2
    if-gt v1, v2, :cond_4

    :cond_0
    :goto_3
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iM()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p1, 0x1

    move v0, p2

    goto :goto_1

    :cond_3
    add-int v1, p1, p2

    move v0, p1

    goto :goto_1

    :sswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->am(II)V

    goto :goto_2

    :sswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->al(II)V

    goto :goto_2

    :sswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3, p1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->al(II)V

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->am(II)V

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iM()I

    move-result v1

    :goto_4
    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iL()I

    move-result v1

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private l(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acg:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ah(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acg:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ai(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acg:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/bg;->b(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/az;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method public final F(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->F(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final I(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(III)V

    return-void
.end method

.method public final J(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(III)V

    return-void
.end method

.method public final K(II)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(III)V

    return-void
.end method

.method public final L(II)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(III)V

    return-void
.end method

.method public final a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aM(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hi()V

    sparse-switch p2, :sswitch_data_0

    const/high16 v0, -0x80000000

    move v3, v0

    :goto_1
    const/high16 v0, -0x80000000

    if-ne v3, v0, :cond_b

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->gF()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    move v3, v0

    goto :goto_1

    :sswitch_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->gF()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    move v3, v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    move v3, v0

    goto :goto_1

    :sswitch_2
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, -0x1

    move v3, v0

    goto :goto_1

    :cond_7
    const/high16 v0, -0x80000000

    move v3, v0

    goto :goto_1

    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    move v3, v0

    goto :goto_1

    :cond_8
    const/high16 v0, -0x80000000

    move v3, v0

    goto :goto_1

    :sswitch_4
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-nez v0, :cond_9

    const/4 v0, -0x1

    move v3, v0

    goto :goto_1

    :cond_9
    const/high16 v0, -0x80000000

    move v3, v0

    goto :goto_1

    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    move v3, v0

    goto :goto_1

    :cond_a
    const/high16 v0, -0x80000000

    move v3, v0

    goto :goto_1

    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    const/4 v0, 0x1

    if-ne v3, v0, :cond_c

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iL()I

    move-result v0

    :goto_2
    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$u;)V

    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bT(I)V

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v2, v2, Landroid/support/v7/widget/as;->abI:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/as;->abH:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    const v2, 0x3eaaaaab

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v7}, Landroid/support/v7/widget/az;->hA()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Landroid/support/v7/widget/as;->abG:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/as;->abL:Z

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/as;->abF:Z

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    invoke-direct {p0, p3, v1, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/as;Landroid/support/v7/widget/RecyclerView$u;)I

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ail:Z

    if-nez v5, :cond_d

    invoke-virtual {v6, v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ao(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    if-eq v1, v4, :cond_d

    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iM()I

    move-result v0

    goto :goto_2

    :cond_d
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bW(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_3
    if-ltz v2, :cond_11

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ao(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    if-eq v1, v4, :cond_e

    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3

    :cond_f
    const/4 v1, 0x0

    :goto_4
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v1, v2, :cond_11

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ao(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    if-eq v2, v4, :cond_10

    move-object v0, v2

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    move v1, v0

    :goto_5
    const/4 v0, -0x1

    if-ne v3, v0, :cond_15

    const/4 v0, 0x1

    :goto_6
    if-ne v1, v0, :cond_16

    const/4 v0, 0x1

    move v2, v0

    :goto_7
    if-nez v5, :cond_12

    if-eqz v2, :cond_17

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iU()I

    move-result v0

    :goto_8
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->by(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    if-ne v0, v4, :cond_0

    :cond_12
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bW(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1c

    iget v0, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    if-eq v1, v0, :cond_13

    if-eqz v2, :cond_18

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iU()I

    move-result v0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->by(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    if-ne v0, v4, :cond_0

    :cond_13
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    :cond_15
    const/4 v0, 0x0

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    move v2, v0

    goto :goto_7

    :cond_17
    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iV()I

    move-result v0

    goto :goto_8

    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iV()I

    move-result v0

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    :goto_b
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v1, :cond_1c

    if-eqz v2, :cond_1a

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iU()I

    move-result v1

    :goto_c
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->by(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    if-eq v1, v4, :cond_1b

    move-object v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->iV()I

    move-result v1

    goto :goto_c

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(IILandroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    return-void

    :cond_1
    move p1, p2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$u;)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->air:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->air:[I

    array-length v0, v0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v2, :cond_4

    :cond_3
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->air:[I

    :cond_4
    move v0, v1

    move v2, v1

    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v3, v3, Landroid/support/v7/widget/as;->abI:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v3, v3, Landroid/support/v7/widget/as;->abJ:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v5, v5, Landroid/support/v7/widget/as;->abJ:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v4

    sub-int/2addr v3, v4

    :goto_2
    if-ltz v3, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->air:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v4, v4, Landroid/support/v7/widget/as;->abK:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v4, v4, Landroid/support/v7/widget/as;->abK:I

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->air:[I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    :goto_3
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/as;->b(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v0, v0, Landroid/support/v7/widget/as;->abH:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->air:[I

    aget v3, v3, v1

    invoke-interface {p4, v0, v3}, Landroid/support/v7/widget/RecyclerView$i$a;->C(II)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v3, v0, Landroid/support/v7/widget/as;->abH:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v4, v4, Landroid/support/v7/widget/as;->abI:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/support/v7/widget/as;->abH:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public final a(Landroid/graphics/Rect;II)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(III)I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aig:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/r;->Q(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(III)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/r;->Q(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(III)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aig:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(III)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v3, -0x1

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    if-nez v2, :cond_0

    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/RecyclerView$i;->b(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    :goto_0
    return-void

    :cond_0
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->iN()I

    move-result v6

    iget-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v2, :cond_1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    :cond_1
    move v2, v3

    move v4, v3

    move v5, v1

    :goto_1
    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    invoke-static {v6, v5, v4, v2, v0}, Landroid/support/v4/view/a/a$b;->a(IIIIZ)Landroid/support/v4/view/a/a$b;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/a;->G(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->iN()I

    move-result v4

    iget-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v2, :cond_3

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    move v2, v1

    move v5, v3

    move v6, v3

    goto :goto_1

    :cond_3
    move v2, v1

    move v5, v3

    move v6, v3

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aci:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aip:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->reset()V

    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    new-instance v0, Landroid/support/v7/widget/au;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/au;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ais:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$j;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    return v0
.end method

.method public final b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method public final bA(I)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiE:[I

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiC:I

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aci:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public final bH(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->bH(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bI(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->bI(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bJ(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iJ()Z

    :cond_0
    return-void
.end method

.method public final bz(I)Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bX(I)I

    move-result v1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-nez v2, :cond_1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    iput v3, v0, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public final c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 10

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aip:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/support/v7/widget/RecyclerView$p;)V

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->reset()V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acr:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    move v3, v0

    :goto_1
    if-eqz v3, :cond_d

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->reset()V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    if-lez v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ne v0, v2, :cond_7

    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->clear()V

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiE:[I

    aget v2, v2, v0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acB:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v4}, Landroid/support/v7/widget/az;->hz()I

    move-result v4

    add-int/2addr v2, v4

    :cond_4
    :goto_3
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cf(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    :cond_6
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v4}, Landroid/support/v7/widget/az;->hy()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_3

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiE:[I

    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiF:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiG:[I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiy:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiC:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aim:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aim:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acd:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->X(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hi()V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acB:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiF:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiG:[I

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiy:Ljava/util/List;

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    :cond_9
    :goto_5
    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v0, :cond_a

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_14

    :cond_a
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ail:Z

    if-eqz v0, :cond_27

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_7
    if-ltz v2, :cond_26

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_25

    if-ge v0, v4, :cond_25

    :cond_b
    :goto_8
    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->mPosition:I

    const/high16 v0, -0x80000000

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acr:Z

    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-nez v0, :cond_f

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ail:Z

    if-ne v0, v2, :cond_e

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->gF()Z

    move-result v0

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aim:Z

    if-eq v0, v2, :cond_f

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiu:Z

    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_35

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    if-gtz v0, :cond_35

    :cond_10
    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiu:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    :goto_9
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v2, :cond_35

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->clear()V

    iget v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_11

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    iget v3, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cf(I)V

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_12
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    goto/16 :goto_4

    :cond_13
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hi()V

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    goto/16 :goto_5

    :cond_14
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    if-ltz v0, :cond_15

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_16

    :cond_15
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aci:I

    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    if-gtz v0, :cond_24

    :cond_17
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->by(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iL()I

    move-result v0

    :goto_a
    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->mPosition:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aci:I

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_1a

    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aci:I

    sub-int/2addr v0, v4

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    :goto_b
    const/4 v0, 0x1

    goto/16 :goto_6

    :cond_18
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iM()I

    move-result v0

    goto :goto_a

    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aci:I

    add-int/2addr v0, v4

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    goto :goto_b

    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v4}, Landroid/support/v7/widget/az;->hA()I

    move-result v4

    if-le v0, v4, :cond_1c

    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v0

    :goto_c
    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_6

    :cond_1b
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v0

    goto :goto_c

    :cond_1c
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v4}, Landroid/support/v7/widget/az;->hy()I

    move-result v4

    sub-int/2addr v0, v4

    if-gez v0, :cond_1d

    neg-int v0, v0

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    goto :goto_d

    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_1e

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    goto :goto_d

    :cond_1e
    const/high16 v0, -0x80000000

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    goto :goto_d

    :cond_1f
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->mPosition:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aci:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_22

    iget v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->mPosition:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bX(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    if-eqz v0, :cond_21

    iget-object v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v0

    :goto_f
    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    :goto_10
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiu:Z

    goto :goto_d

    :cond_20
    const/4 v0, 0x0

    goto :goto_e

    :cond_21
    iget-object v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v0

    goto :goto_f

    :cond_22
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aci:I

    iget-boolean v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    if-eqz v2, :cond_23

    iget-object v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hz()I

    move-result v2

    sub-int v0, v2, v0

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    goto :goto_10

    :cond_23
    iget-object v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hy()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    goto :goto_10

    :cond_24
    const/high16 v0, -0x80000000

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ach:I

    iput v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->mPosition:I

    goto/16 :goto_d

    :cond_25
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_7

    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_27
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    const/4 v0, 0x0

    move v2, v0

    :goto_11
    if-ge v2, v6, :cond_29

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_28

    if-lt v0, v4, :cond_b

    :cond_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_29
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_2a
    if-nez v3, :cond_2b

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aip:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiv:[I

    if-nez v0, :cond_34

    :cond_2b
    const/4 v0, 0x0

    :goto_12
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v2, :cond_31

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v2, v0

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    iget v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->EK:I

    if-eqz v4, :cond_2e

    const/high16 v2, -0x80000000

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v2

    :goto_13
    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->clear()V

    const/high16 v7, -0x80000000

    if-eq v2, v7, :cond_2d

    if-eqz v4, :cond_2c

    iget-object v7, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v7}, Landroid/support/v7/widget/az;->hz()I

    move-result v7

    if-lt v2, v7, :cond_2d

    :cond_2c
    if-nez v4, :cond_2f

    iget-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v4}, Landroid/support/v7/widget/az;->hy()I

    move-result v4

    if-le v2, v4, :cond_2f

    :cond_2d
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2e
    const/high16 v2, -0x80000000

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v2

    goto :goto_13

    :cond_2f
    const/high16 v4, -0x80000000

    if-eq v6, v4, :cond_30

    add-int/2addr v2, v6

    :cond_30
    iput v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiJ:I

    iput v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->aiI:I

    goto :goto_14

    :cond_31
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aip:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    array-length v4, v3

    iget-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiv:[I

    if-eqz v0, :cond_32

    iget-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiv:[I

    array-length v0, v0

    if-ge v0, v4, :cond_33

    :cond_32
    iget-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->ait:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiv:[I

    :cond_33
    const/4 v0, 0x0

    :goto_15
    if-ge v0, v4, :cond_35

    iget-object v6, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiv:[I

    aget-object v7, v3, v0

    const/high16 v8, -0x80000000

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v7

    aput v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_34
    const/4 v0, 0x0

    :goto_16
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v2, :cond_35

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->clear()V

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aip:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->aiv:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cf(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_35
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v7/widget/as;->abF:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aiq:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hA()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bS(I)V

    iget v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->mPosition:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$u;)V

    iget-boolean v0, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    if-eqz v0, :cond_36

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bT(I)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/as;Landroid/support/v7/widget/RecyclerView$u;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bT(I)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->mPosition:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v3, v3, Landroid/support/v7/widget/as;->abI:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/as;->abH:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/as;Landroid/support/v7/widget/RecyclerView$u;)I

    :goto_17
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->getMode()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_3c

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    const/4 v0, 0x0

    move v4, v0

    :goto_18
    if-ge v4, v6, :cond_37

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v7, v2, v3

    if-ltz v7, :cond_44

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-eqz v0, :cond_43

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_19
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_1a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v0

    goto :goto_18

    :cond_36
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bT(I)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/as;Landroid/support/v7/widget/RecyclerView$u;)I

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bT(I)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->mPosition:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    iget v3, v3, Landroid/support/v7/widget/as;->abI:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/as;->abH:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aih:Landroid/support/v7/widget/as;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/as;Landroid/support/v7/widget/RecyclerView$u;)I

    goto :goto_17

    :cond_37
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aig:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->getMode()I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_38

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aif:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hA()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_38
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->bS(I)V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aig:I

    if-eq v0, v4, :cond_3c

    const/4 v0, 0x0

    move v2, v0

    :goto_1b
    if-ge v2, v6, :cond_3c

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    iget-boolean v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aix:Z

    if-nez v7, :cond_39

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->gF()Z

    move-result v7

    if-eqz v7, :cond_3a

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3a

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    add-int/lit8 v7, v7, -0x1

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    sub-int/2addr v7, v8

    neg-int v7, v7

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aig:I

    mul-int/2addr v7, v8

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    add-int/lit8 v8, v8, -0x1

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    sub-int v0, v8, v0

    neg-int v0, v0

    mul-int/2addr v0, v4

    sub-int v0, v7, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_39
    :goto_1c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_3a
    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aig:I

    mul-int/2addr v7, v8

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->aiw:Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->mIndex:I

    mul-int/2addr v0, v4

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3b

    sub-int v0, v7, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1c

    :cond_3b
    sub-int v0, v7, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1c

    :cond_3c
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3d

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)V

    :cond_3d
    :goto_1d
    const/4 v0, 0x0

    if-eqz v1, :cond_3f

    iget-boolean v1, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v1, :cond_3f

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aik:I

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_42

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aiq:Z

    if-nez v1, :cond_3e

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iK()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_42

    :cond_3e
    const/4 v1, 0x1

    :goto_1e
    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ais:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iJ()Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v0, 0x1

    :cond_3f
    iget-boolean v1, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-eqz v1, :cond_40

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aip:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->reset()V

    :cond_40
    iget-boolean v1, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->acq:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ail:Z

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->gF()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aip:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->reset()V

    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :cond_41
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)V

    goto :goto_1d

    :cond_42
    const/4 v1, 0x0

    goto :goto_1e

    :cond_43
    move v0, v2

    goto/16 :goto_19

    :cond_44
    move v0, v3

    goto/16 :goto_1a
.end method

.method public final d(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final e(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final f(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final g(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final h(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final ha()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public final hb()Landroid/support/v7/widget/RecyclerView$j;
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    goto :goto_0
.end method

.method public final he()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hf()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aik:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hg()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hh()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hE:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method final iJ()Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aik:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->lH:Z

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iL()I

    move-result v4

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iM()I

    move-result v0

    move v3, v0

    :goto_1
    if-nez v4, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iK()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->clear()V

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$i;->afg:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iM()I

    move-result v4

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iL()I

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aiq:Z

    if-nez v0, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v4, v6, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->l(III)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v5

    if-nez v5, :cond_6

    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aiq:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->bY(I)I

    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v3, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v4, v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->l(III)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->bY(I)I

    :goto_3
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$i;->afg:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->bY(I)I

    goto :goto_3
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ah(Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ai(Z)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v4, -0x80000000

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ain:Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$d;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;

    invoke-direct {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;-><init>()V

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->acd:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acd:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ail:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acB:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aim:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aim:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiG:[I

    iget-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiG:[I

    array-length v0, v0

    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiF:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aij:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiy:Ljava/util/List;

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ail:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iL()I

    move-result v0

    :goto_2
    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ace:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ai(Z)Landroid/view/View;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiC:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    new-array v0, v0, [I

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiE:[I

    move v0, v2

    :goto_5
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->abu:I

    if-ge v0, v1, :cond_8

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ail:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->ce(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hz()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_1
    :goto_6
    iget-object v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiE:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2
    iput v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiF:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->iM()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-direct {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ah(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    goto :goto_4

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aid:[Landroid/support/v7/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$e;->cd(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->aie:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hy()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_6

    :cond_7
    iput v1, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->acz:I

    iput v1, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiC:I

    iput v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$d;->aiD:I

    :cond_8
    move-object v0, v3

    goto/16 :goto_0
.end method
