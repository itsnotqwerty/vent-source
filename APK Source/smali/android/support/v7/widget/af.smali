.class Landroid/support/v7/widget/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ah;


# instance fields
.field final Xx:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/af;->Xx:Landroid/graphics/RectF;

    return-void
.end method

.method private j(Landroid/support/v7/widget/ag;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/be;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->b(Landroid/support/v7/widget/ag;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->c(Landroid/support/v7/widget/ag;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1, v1, v2}, Landroid/support/v7/widget/ag;->B(II)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/support/v7/widget/ag;->c(IIII)V

    return-void
.end method

.method private static k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;
    .locals 1

    invoke-interface {p0}, Landroid/support/v7/widget/ag;->gt()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/be;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/be;->nr:F

    return v0
.end method

.method public final a(Landroid/support/v7/widget/ag;F)V
    .locals 3

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v0

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid radius "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, p2

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Landroid/support/v7/widget/be;->no:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    iput v1, v0, Landroid/support/v7/widget/be;->no:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/be;->nu:Z

    invoke-virtual {v0}, Landroid/support/v7/widget/be;->invalidateSelf()V

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)V

    return-void
.end method

.method public final a(Landroid/support/v7/widget/ag;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    new-instance v0, Landroid/support/v7/widget/be;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/be;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/be;->ad(Z)V

    invoke-interface {p1, v0}, Landroid/support/v7/widget/ag;->j(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)V

    return-void
.end method

.method public final a(Landroid/support/v7/widget/ag;Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/be;->e(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/be;->invalidateSelf()V

    return-void
.end method

.method public final b(Landroid/support/v7/widget/ag;)F
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/be;->nr:F

    iget v2, v0, Landroid/support/v7/widget/be;->no:F

    iget v3, v0, Landroid/support/v7/widget/be;->agw:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/be;->nr:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v4

    iget v2, v0, Landroid/support/v7/widget/be;->nr:F

    iget v0, v0, Landroid/support/v7/widget/be;->agw:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    return v0
.end method

.method public final b(Landroid/support/v7/widget/ag;F)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/be;->nt:F

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/widget/be;->c(FF)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)V

    return-void
.end method

.method public final c(Landroid/support/v7/widget/ag;)F
    .locals 6

    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/be;->nr:F

    iget v2, v0, Landroid/support/v7/widget/be;->no:F

    iget v3, v0, Landroid/support/v7/widget/be;->agw:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/be;->nr:F

    mul-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v4

    iget v2, v0, Landroid/support/v7/widget/be;->nr:F

    mul-float/2addr v2, v5

    iget v0, v0, Landroid/support/v7/widget/be;->agw:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    return v0
.end method

.method public final c(Landroid/support/v7/widget/ag;F)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/be;->nr:F

    invoke-virtual {v0, p2, v1}, Landroid/support/v7/widget/be;->c(FF)V

    return-void
.end method

.method public final d(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/be;->no:F

    return v0
.end method

.method public final e(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/be;->nt:F

    return v0
.end method

.method public final f(Landroid/support/v7/widget/ag;)V
    .locals 0

    return-void
.end method

.method public final g(Landroid/support/v7/widget/ag;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/be;->ad(Z)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->j(Landroid/support/v7/widget/ag;)V

    return-void
.end method

.method public gv()V
    .locals 1

    new-instance v0, Landroid/support/v7/widget/af$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/af$1;-><init>(Landroid/support/v7/widget/af;)V

    sput-object v0, Landroid/support/v7/widget/be;->agx:Landroid/support/v7/widget/be$a;

    return-void
.end method

.method public final h(Landroid/support/v7/widget/ag;)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/af;->k(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/be;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/be;->agv:Landroid/content/res/ColorStateList;

    return-object v0
.end method
