.class final Landroid/support/design/widget/TabLayout$d;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic oI:Landroid/support/design/widget/TabLayout;

.field private oK:I

.field private final oL:Landroid/graphics/Paint;

.field oM:I

.field oN:F

.field private oO:I

.field private oP:I

.field private oQ:I

.field oR:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$d;->oI:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Landroid/support/design/widget/TabLayout$d;->oM:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$d;->oO:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$d;->oP:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$d;->oQ:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$d;->setWillNotDraw(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oL:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method final N(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oL:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oL:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method final O(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->oK:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/TabLayout$d;->oK:I

    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method final bU()V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->oM:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/TabLayout$d;->oN:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Landroid/support/design/widget/TabLayout$d;->oM:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    iget v2, p0, Landroid/support/design/widget/TabLayout$d;->oM:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/support/design/widget/TabLayout$d;->oN:F

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/support/design/widget/TabLayout$d;->oN:F

    sub-float v4, v5, v4

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget v3, p0, Landroid/support/design/widget/TabLayout$d;->oN:F

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/support/design/widget/TabLayout$d;->oN:F

    sub-float v3, v5, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/support/design/widget/TabLayout$d;->h(II)V

    return-void

    :cond_0
    const/4 v1, -0x1

    move v0, v1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->oP:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->oQ:I

    iget v1, p0, Landroid/support/design/widget/TabLayout$d;->oP:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->oP:I

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$d;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/TabLayout$d;->oK:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->oQ:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$d;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$d;->oL:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method final h(II)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->oP:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->oQ:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$d;->oP:I

    iput p2, p0, Landroid/support/design/widget/TabLayout$d;->oQ:I

    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method final i(II)V
    .locals 7

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$d;->bU()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iget v2, p0, Landroid/support/design/widget/TabLayout$d;->oM:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_5

    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->oP:I

    iget v4, p0, Landroid/support/design/widget/TabLayout$d;->oQ:I

    move v2, v0

    :goto_2
    if-ne v2, v3, :cond_4

    if-eq v4, v5, :cond_1

    :cond_4
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    sget-object v0, Landroid/support/design/widget/a;->iB:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance v0, Landroid/support/design/widget/TabLayout$d$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/TabLayout$d$1;-><init>(Landroid/support/design/widget/TabLayout$d;IIII)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/support/design/widget/TabLayout$d$2;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$d$2;-><init>(Landroid/support/design/widget/TabLayout$d;I)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$d;->oI:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->L(I)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/TabLayout$d;->oM:I

    if-ge p1, v2, :cond_6

    if-nez v0, :cond_7

    add-int v0, v5, v1

    move v4, v0

    move v2, v0

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    add-int v0, v5, v1

    move v4, v0

    move v2, v0

    goto :goto_2

    :cond_7
    sub-int v0, v3, v1

    move v4, v0

    move v2, v0

    goto :goto_2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected final onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    iget v2, p0, Landroid/support/design/widget/TabLayout$d;->oM:I

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    sub-float/2addr v3, v4

    long-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/support/design/widget/TabLayout$d;->i(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$d;->bU()V

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oI:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->ow:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oI:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->ov:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v6

    move v2, v5

    move v1, v5

    :goto_1
    if-ge v2, v6, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    if-lez v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oI:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->L(I)I

    move-result v0

    mul-int v2, v1, v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$d;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    if-gt v2, v0, :cond_4

    move v4, v5

    move v2, v5

    :goto_3
    if-ge v4, v6, :cond_5

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v5, v1, :cond_3

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_6

    :cond_3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v0, v3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oI:Landroid/support/design/widget/TabLayout;

    iput v5, v0, Landroid/support/design/widget/TabLayout;->ov:I

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->oI:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/TabLayout;->i(Z)V

    move v2, v3

    :cond_5
    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->oO:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$d;->requestLayout()V

    iput p1, p0, Landroid/support/design/widget/TabLayout$d;->oO:I

    :cond_0
    return-void
.end method
