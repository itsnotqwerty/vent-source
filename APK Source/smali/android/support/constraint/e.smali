.class public final Landroid/support/constraint/e;
.super Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/support/constraint/e;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setGuidelineBegin(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setGuidelineEnd(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setGuidelinePercent(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    iput p1, v0, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    return-void
.end method
