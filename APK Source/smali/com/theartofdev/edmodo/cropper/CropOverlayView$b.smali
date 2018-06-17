.class final Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic bSE:Lcom/theartofdev/edmodo/cropper/CropOverlayView;


# direct methods
.method private constructor <init>(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;->bSE:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/theartofdev/edmodo/cropper/CropOverlayView;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;-><init>(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;->bSE:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/g;->AR()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    div-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v4

    div-float/2addr v4, v5

    sub-float v5, v2, v3

    sub-float v6, v1, v4

    add-float/2addr v1, v4

    add-float/2addr v2, v3

    cmpg-float v3, v6, v1

    if-gez v3, :cond_0

    cmpg-float v3, v5, v2

    if-gtz v3, :cond_0

    cmpl-float v3, v6, v7

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;->bSE:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/g;->AU()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    cmpl-float v3, v5, v7

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;->bSE:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/g;->AV()F

    move-result v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v6, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;->bSE:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/theartofdev/edmodo/cropper/g;->c(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;->bSE:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
