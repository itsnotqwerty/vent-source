.class final Landroid/support/design/widget/SwipeDismissBehavior$1;
.super Landroid/support/v4/widget/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private jK:I

.field private nX:I

.field final synthetic nY:Landroid/support/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/r$a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->jK:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;FF)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->jK:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    cmpl-float v0, p2, v6

    if-eqz v0, :cond_a

    invoke-static {p1}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->nT:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    if-ge v0, v2, :cond_d

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    sub-int/2addr v0, v3

    :goto_2
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v2, v2, Landroid/support/design/widget/SwipeDismissBehavior;->jC:Landroid/support/v4/widget/r;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/widget/r;->t(II)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Landroid/support/design/widget/SwipeDismissBehavior$b;

    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {v0, v2, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior$b;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->nT:I

    if-nez v4, :cond_6

    if-eqz v0, :cond_4

    cmpg-float v0, p2, v6

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    cmpl-float v0, p2, v6

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->nT:I

    if-ne v4, v1, :cond_c

    if-eqz v0, :cond_8

    cmpl-float v0, p2, v6

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    cmpg-float v0, p2, v6

    if-gez v0, :cond_9

    move v0, v1

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    sub-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v5, v5, Landroid/support/design/widget/SwipeDismissBehavior;->nU:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v4, :cond_b

    move v0, v1

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_1

    :cond_d
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    add-int/2addr v0, v3

    goto :goto_2

    :cond_e
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    move v1, v2

    goto :goto_2

    :cond_f
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->nP:Landroid/support/design/widget/SwipeDismissBehavior$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->nP:Landroid/support/design/widget/SwipeDismissBehavior$a;

    invoke-interface {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$a;->g(Landroid/view/View;)V

    goto :goto_3
.end method

.method public final a(Landroid/view/View;I)Z
    .locals 2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->jK:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->h(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/View;I)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v2, v2, Landroid/support/design/widget/SwipeDismissBehavior;->nV:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v3, v3, Landroid/support/design/widget/SwipeDismissBehavior;->nW:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, p2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    int-to-float v2, p2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/SwipeDismissBehavior;->b(FFF)F

    move-result v0

    sub-float v0, v4, v0

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->h(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public final c(Landroid/view/View;I)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/View;I)I
    .locals 3

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v2, v2, Landroid/support/design/widget/SwipeDismissBehavior;->nT:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    :goto_1
    invoke-static {v0, p2, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->b(III)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v2, v2, Landroid/support/design/widget/SwipeDismissBehavior;->nT:I

    if-ne v2, v1, :cond_4

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    goto :goto_1

    :cond_4
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method public final j(Landroid/view/View;I)V
    .locals 2

    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->jK:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nX:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final q(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public final y(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->nP:Landroid/support/design/widget/SwipeDismissBehavior$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->nP:Landroid/support/design/widget/SwipeDismissBehavior$a;

    invoke-interface {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$a;->u(I)V

    :cond_0
    return-void
.end method
