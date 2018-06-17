.class final Landroid/support/v7/widget/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ah;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;
    .locals 1

    invoke-interface {p0}, Landroid/support/v7/widget/ag;->gt()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bd;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bd;->ags:F

    return v0
.end method

.method public final a(Landroid/support/v7/widget/ag;F)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/bd;->agp:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    iput p2, v0, Landroid/support/v7/widget/bd;->agp:F

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bd;->f(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/bd;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ag;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    new-instance v0, Landroid/support/v7/widget/bd;

    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/bd;-><init>(Landroid/content/res/ColorStateList;F)V

    invoke-interface {p1, v0}, Landroid/support/v7/widget/ag;->j(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->gu()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {v0, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Landroid/support/v7/widget/ae;->b(Landroid/support/v7/widget/ag;F)V

    return-void
.end method

.method public final a(Landroid/support/v7/widget/ag;Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/bd;->e(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/bd;->invalidateSelf()V

    return-void
.end method

.method public final b(Landroid/support/v7/widget/ag;)F
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bd;->agp:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final b(Landroid/support/v7/widget/ag;F)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->getPreventCornerOverlap()Z

    move-result v2

    iget v3, v0, Landroid/support/v7/widget/bd;->ags:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/support/v7/widget/bd;->agt:Z

    if-ne v3, v1, :cond_0

    iget-boolean v3, v0, Landroid/support/v7/widget/bd;->agu:Z

    if-eq v3, v2, :cond_1

    :cond_0
    iput p2, v0, Landroid/support/v7/widget/bd;->ags:F

    iput-boolean v1, v0, Landroid/support/v7/widget/bd;->agt:Z

    iput-boolean v2, v0, Landroid/support/v7/widget/bd;->agu:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bd;->f(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/bd;->invalidateSelf()V

    :cond_1
    invoke-interface {p1}, Landroid/support/v7/widget/ag;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, v4, v4, v4, v4}, Landroid/support/v7/widget/ag;->c(IIII)V

    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bd;->ags:F

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v1

    iget v1, v1, Landroid/support/v7/widget/bd;->agp:F

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/be;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->getPreventCornerOverlap()Z

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/support/v7/widget/be;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1, v2, v0, v2, v0}, Landroid/support/v7/widget/ag;->c(IIII)V

    goto :goto_0
.end method

.method public final c(Landroid/support/v7/widget/ag;)F
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bd;->agp:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final c(Landroid/support/v7/widget/ag;F)V
    .locals 1

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->gu()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public final d(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bd;->agp:F

    return v0
.end method

.method public final e(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->gu()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public final f(Landroid/support/v7/widget/ag;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bd;->ags:F

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/ae;->b(Landroid/support/v7/widget/ag;F)V

    return-void
.end method

.method public final g(Landroid/support/v7/widget/ag;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bd;->ags:F

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/ae;->b(Landroid/support/v7/widget/ag;F)V

    return-void
.end method

.method public final gv()V
    .locals 0

    return-void
.end method

.method public final h(Landroid/support/v7/widget/ag;)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bd;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/bd;->agv:Landroid/content/res/ColorStateList;

    return-object v0
.end method
