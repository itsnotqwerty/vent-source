.class final Lcom/theartofdev/edmodo/cropper/e;
.super Landroid/view/animation/Animation;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

.field final bPV:[F

.field final bPW:[F

.field final bPX:Landroid/graphics/RectF;

.field final bPY:Landroid/graphics/RectF;

.field final bPZ:[F

.field final bQa:[F

.field private final bQb:Landroid/graphics/RectF;

.field private final bQc:[F

.field private final bQd:[F

.field private final boV:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V
    .locals 3

    const/16 v2, 0x9

    const/16 v1, 0x8

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bPV:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bPW:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bPX:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bPY:Landroid/graphics/RectF;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bPZ:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bQa:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bQb:Landroid/graphics/RectF;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bQc:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bQd:[F

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/e;->boV:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/e;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/theartofdev/edmodo/cropper/e;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/e;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/e;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p0}, Lcom/theartofdev/edmodo/cropper/e;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bQb:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/e;->bPX:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/e;->bPY:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/e;->bPX:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bQb:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/e;->bPX:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/e;->bPY:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/e;->bPX:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bQb:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/e;->bPX:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/e;->bPY:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/e;->bPX:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bQb:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/e;->bPX:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/e;->bPY:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/e;->bPX:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/e;->bQb:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/e;->bQc:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/e;->bQc:[F

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/e;->bPV:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/e;->bPW:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/e;->bPV:[F

    aget v5, v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/e;->bQc:[F

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/e;->boV:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/e;->boV:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a([FII)V

    :goto_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bQd:[F

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bQd:[F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/e;->bPZ:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/e;->bQa:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/e;->bPZ:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/e;->bQd:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/e;->boV:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
