.class public final Landroid/support/v7/widget/au;
.super Landroid/support/v7/widget/RecyclerView$t;


# instance fields
.field protected final Kg:Landroid/view/animation/DecelerateInterpolator;

.field protected final acC:Landroid/view/animation/LinearInterpolator;

.field protected acD:Landroid/graphics/PointF;

.field private final acE:F

.field protected acF:I

.field protected acG:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$t;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/au;->acC:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/au;->Kg:Landroid/view/animation/DecelerateInterpolator;

    iput v1, p0, Landroid/support/v7/widget/au;->acF:I

    iput v1, p0, Landroid/support/v7/widget/au;->acG:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41c80000    # 25.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/au;->acE:F

    return-void
.end method

.method private static V(II)I
    .locals 2

    sub-int v0, p0, p1

    mul-int v1, p0, v0

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private bC(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/au;->acE:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private static d(IIIII)I
    .locals 2

    packed-switch p4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sub-int v0, p2, p0

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    sub-int v0, p3, p1

    goto :goto_0

    :pswitch_2
    sub-int v0, p2, p0

    if-gtz v0, :cond_0

    sub-int v0, p3, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final a(IILandroid/support/v7/widget/RecyclerView$t$a;)V
    .locals 6

    const v5, 0x461c4000    # 10000.0f

    const/4 v3, 0x0

    const v4, 0x3f99999a    # 1.2f

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/au;->stop()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/au;->acF:I

    invoke-static {v0, p1}, Landroid/support/v7/widget/au;->V(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/au;->acF:I

    iget v0, p0, Landroid/support/v7/widget/au;->acG:I

    invoke-static {v0, p2}, Landroid/support/v7/widget/au;->V(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/au;->acG:I

    iget v0, p0, Landroid/support/v7/widget/au;->acF:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/au;->acG:I

    if-nez v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->adr:Landroid/support/v7/widget/RecyclerView$i;

    instance-of v2, v0, Landroid/support/v7/widget/RecyclerView$t$b;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/support/v7/widget/RecyclerView$t$b;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/RecyclerView$t$b;->bz(I)Landroid/graphics/PointF;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    iput v0, p3, Landroid/support/v7/widget/RecyclerView$t$a;->afQ:I

    invoke-virtual {p0}, Landroid/support/v7/widget/au;->stop()V

    goto :goto_0

    :cond_3
    const-string v0, "LinearSmoothScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Landroid/support/v7/widget/RecyclerView$t$b;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    iget v2, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    div-float v1, v2, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iput-object v0, p0, Landroid/support/v7/widget/au;->acD:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/au;->acF:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/au;->acG:I

    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Landroid/support/v7/widget/au;->bC(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/au;->acF:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget v2, p0, Landroid/support/v7/widget/au;->acG:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/au;->acC:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p3, v1, v2, v0, v3}, Landroid/support/v7/widget/RecyclerView$t$a;->a(IIILandroid/view/animation/Interpolator;)V

    goto/16 :goto_0
.end method

.method protected final a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$t$a;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/au;->acD:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->acD:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_6

    :cond_0
    move v1, v4

    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$t;->adr:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$i;->hg()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_1
    move v1, v4

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/au;->acD:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/au;->acD:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_9

    :cond_2
    move v2, v4

    :cond_3
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$t;->adr:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$i;->hh()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    :goto_3
    mul-int v0, v1, v1

    mul-int v2, v4, v4

    add-int/2addr v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-direct {p0, v0}, Landroid/support/v7/widget/au;->bC(I)I

    move-result v0

    int-to-double v2, v0

    const-wide v6, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-lez v0, :cond_5

    neg-int v1, v1

    neg-int v2, v4

    iget-object v3, p0, Landroid/support/v7/widget/au;->Kg:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, v1, v2, v0, v3}, Landroid/support/v7/widget/RecyclerView$t$a;->a(IIILandroid/view/animation/Interpolator;)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/au;->acD:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    move v1, v3

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$i;->aW(Landroid/view/View;)I

    move-result v6

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$j;->leftMargin:I

    sub-int/2addr v6, v7

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$i;->aY(Landroid/view/View;)I

    move-result v7

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v0, v7

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v7

    iget v8, v5, Landroid/support/v7/widget/RecyclerView$i;->db:I

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingRight()I

    move-result v5

    sub-int v5, v8, v5

    invoke-static {v6, v0, v7, v5, v1}, Landroid/support/v7/widget/au;->d(IIIII)I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/au;->acD:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v9

    if-gtz v0, :cond_3

    move v2, v3

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$i;->aX(Landroid/view/View;)I

    move-result v4

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$j;->topMargin:I

    sub-int/2addr v4, v5

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$i;->aZ(Landroid/view/View;)I

    move-result v5

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v0, v5

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingTop()I

    move-result v5

    iget v6, v3, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v3

    sub-int v3, v6, v3

    invoke-static {v4, v0, v5, v3, v2}, Landroid/support/v7/widget/au;->d(IIIII)I

    move-result v4

    goto/16 :goto_3
.end method

.method protected final onStop()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/au;->acG:I

    iput v0, p0, Landroid/support/v7/widget/au;->acF:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/au;->acD:Landroid/graphics/PointF;

    return-void
.end method
