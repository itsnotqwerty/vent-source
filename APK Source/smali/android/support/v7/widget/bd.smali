.class final Landroid/support/v7/widget/bd;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field agp:F

.field private final agq:Landroid/graphics/RectF;

.field private final agr:Landroid/graphics/Rect;

.field ags:F

.field agt:Z

.field agu:Z

.field agv:Landroid/content/res/ColorStateList;

.field private final jT:Landroid/graphics/Paint;

.field private qQ:Landroid/graphics/PorterDuffColorFilter;

.field private rN:Landroid/content/res/ColorStateList;

.field private rO:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;F)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bd;->agt:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bd;->agu:Z

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/v7/widget/bd;->rO:Landroid/graphics/PorterDuff$Mode;

    iput p2, p0, Landroid/support/v7/widget/bd;->agp:F

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/bd;->jT:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bd;->e(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bd;->agq:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bd;->agr:Landroid/graphics/Rect;

    return-void
.end method

.method private b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/bd;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v1, p0, Landroid/support/v7/widget/bd;->jT:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v7/widget/bd;->qQ:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bd;->qQ:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/bd;->agq:Landroid/graphics/RectF;

    iget v3, p0, Landroid/support/v7/widget/bd;->agp:F

    iget v4, p0, Landroid/support/v7/widget/bd;->agp:F

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e(Landroid/content/res/ColorStateList;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/bd;->agv:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/bd;->jT:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/bd;->agv:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/v7/widget/bd;->getState()[I

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/bd;->agv:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method final f(Landroid/graphics/Rect;)V
    .locals 6

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bd;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bd;->agq:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroid/support/v7/widget/bd;->agr:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/bd;->agt:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/bd;->ags:F

    iget v1, p0, Landroid/support/v7/widget/bd;->agp:F

    iget-boolean v2, p0, Landroid/support/v7/widget/bd;->agu:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/be;->a(FFZ)F

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/bd;->ags:F

    iget v2, p0, Landroid/support/v7/widget/bd;->agp:F

    iget-boolean v3, p0, Landroid/support/v7/widget/bd;->agu:Z

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/be;->b(FFZ)F

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/bd;->agr:Landroid/graphics/Rect;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Landroid/support/v7/widget/bd;->agq:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/v7/widget/bd;->agr:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bd;->agr:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/widget/bd;->agp:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bd;->rN:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bd;->rN:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bd;->agv:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bd;->agv:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bd;->f(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/bd;->agv:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/bd;->agv:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-object v1, p0, Landroid/support/v7/widget/bd;->jT:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v2, v1, :cond_1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/bd;->jT:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/bd;->rN:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/bd;->rO:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/bd;->rN:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/bd;->rO:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/bd;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/bd;->qQ:Landroid/graphics/PorterDuffColorFilter;

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bd;->jT:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bd;->jT:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/bd;->rN:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/bd;->rN:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/v7/widget/bd;->rO:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/bd;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bd;->qQ:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/support/v7/widget/bd;->invalidateSelf()V

    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/bd;->rO:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/bd;->rN:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/v7/widget/bd;->rO:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/bd;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bd;->qQ:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/support/v7/widget/bd;->invalidateSelf()V

    return-void
.end method
