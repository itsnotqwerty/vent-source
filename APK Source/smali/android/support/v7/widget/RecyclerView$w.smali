.class final Landroid/support/v7/widget/RecyclerView$w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "w"
.end annotation


# instance fields
.field final synthetic aeU:Landroid/support/v7/widget/RecyclerView;

.field agj:I

.field agk:I

.field private agl:Z

.field private agm:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mZ:Landroid/widget/OverScroller;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->aeS:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$w;->agl:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$w;->agm:Z

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/RecyclerView;->aeS:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->mZ:Landroid/widget/OverScroller;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$w;)Landroid/widget/OverScroller;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->mZ:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method final ah(II)I
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    :goto_1
    div-int/lit8 v6, v1, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v10

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v7, v6

    int-to-float v6, v6

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    const v8, 0x3ef1463b

    mul-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    if-lez v4, :cond_2

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v10

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3
.end method

.method public final b(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$w;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->mZ:Landroid/widget/OverScroller;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$w;->agk:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$w;->agj:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->mZ:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->mZ:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->is()V

    return-void
.end method

.method public final i(III)V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->aeS:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$w;->b(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method final is()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->agl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->agm:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/r;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$w;->stop()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$w;->agm:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$w;->agl:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hE()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/RecyclerView$w;->mZ:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    iget-object v15, v2, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v14}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v5

    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v16

    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$w;->agj:I

    sub-int v3, v16, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$w;->agk:I

    sub-int v4, v17, v2

    const/4 v13, 0x0

    const/4 v11, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$w;->agj:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$w;->agk:I

    const/4 v12, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/RecyclerView;->a(II[I[II)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    aget v2, v5, v2

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v5, v2

    sub-int/2addr v4, v2

    move v9, v4

    move v10, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hF()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hP()V

    const-string v2, "RV Scroll"

    invoke-static {v2}, Landroid/support/v4/d/d;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView$u;)V

    if-eqz v10, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2, v10, v3, v4}, Landroid/support/v7/widget/RecyclerView$i;->a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v7

    sub-int v5, v10, v7

    :goto_2
    if-eqz v9, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2, v9, v3, v4}, Landroid/support/v7/widget/RecyclerView$i;->b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v3

    sub-int v2, v9, v3

    move v4, v3

    :goto_3
    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->if()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->ab(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->aa(Z)V

    if-eqz v15, :cond_16

    iget-boolean v3, v15, Landroid/support/v7/widget/RecyclerView$t;->afK:Z

    if-nez v3, :cond_16

    iget-boolean v3, v15, Landroid/support/v7/widget/RecyclerView$t;->afL:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$t;->stop()V

    move v6, v2

    move v3, v7

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v10, v9}, Landroid/support/v7/widget/RecyclerView;->W(II)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/support/v7/widget/RecyclerView;->a(IIII[II)Z

    move-result v2

    if-nez v2, :cond_9

    if-nez v5, :cond_4

    if-eqz v6, :cond_9

    :cond_4
    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v7, v2

    const/4 v2, 0x0

    move/from16 v0, v16

    if-eq v5, v0, :cond_1f

    if-gez v5, :cond_17

    neg-int v2, v7

    :goto_5
    move v8, v2

    :goto_6
    const/4 v2, 0x0

    move/from16 v0, v17

    if-eq v6, v0, :cond_1e

    if-gez v6, :cond_19

    neg-int v7, v7

    :cond_5
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v11, 0x2

    if-eq v2, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v8, v7}, Landroid/support/v7/widget/RecyclerView;->X(II)V

    :cond_6
    if-nez v8, :cond_7

    move/from16 v0, v16

    if-eq v5, v0, :cond_7

    invoke-virtual {v14}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    if-nez v7, :cond_8

    move/from16 v0, v17

    if-eq v6, v0, :cond_8

    invoke-virtual {v14}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    invoke-virtual {v14}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_9
    if-nez v3, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->Z(II)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_c
    if-eqz v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$i;->hh()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-ne v4, v9, :cond_1a

    const/4 v2, 0x1

    move v4, v2

    :goto_8
    if-eqz v10, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$i;->hg()Z

    move-result v2

    if-eqz v2, :cond_1b

    if-ne v3, v10, :cond_1b

    const/4 v2, 0x1

    :goto_9
    if-nez v10, :cond_d

    if-eqz v9, :cond_e

    :cond_d
    if-nez v2, :cond_e

    if-eqz v4, :cond_1c

    :cond_e
    const/4 v2, 0x1

    :goto_a
    invoke-virtual {v14}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_f

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/j;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/j;->at(I)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->ig()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->aeD:Landroid/support/v7/widget/ar$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/ar$a;->gI()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->au(I)V

    :cond_11
    :goto_b
    if-eqz v15, :cond_13

    iget-boolean v2, v15, Landroid/support/v7/widget/RecyclerView$t;->afK:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Landroid/support/v7/widget/RecyclerView$t;->a(Landroid/support/v7/widget/RecyclerView$t;II)V

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$w;->agm:Z

    if-nez v2, :cond_13

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$t;->stop()V

    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$w;->agl:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$w;->agm:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$w;->is()V

    goto/16 :goto_0

    :cond_14
    iget v6, v15, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    if-lt v6, v3, :cond_15

    add-int/lit8 v3, v3, -0x1

    iput v3, v15, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    :cond_15
    sub-int v3, v10, v5

    sub-int v6, v9, v2

    invoke-static {v15, v3, v6}, Landroid/support/v7/widget/RecyclerView$t;->a(Landroid/support/v7/widget/RecyclerView$t;II)V

    :cond_16
    move v6, v2

    move v3, v7

    goto/16 :goto_4

    :cond_17
    if-lez v5, :cond_18

    move v2, v7

    goto/16 :goto_5

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_19
    if-gtz v6, :cond_5

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_1a
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_8

    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$w;->is()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->aeC:Landroid/support/v7/widget/ar;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->aeC:Landroid/support/v7/widget/ar;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3, v10, v9}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_b

    :cond_1e
    move v7, v2

    goto/16 :goto_7

    :cond_1f
    move v8, v2

    goto/16 :goto_6

    :cond_20
    move v2, v8

    move v4, v11

    goto/16 :goto_3

    :cond_21
    move v5, v12

    move v7, v13

    goto/16 :goto_2

    :cond_22
    move v6, v8

    move v5, v12

    move v4, v11

    move v3, v13

    goto/16 :goto_4

    :cond_23
    move v9, v4

    move v10, v3

    goto/16 :goto_1
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->mZ:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method
