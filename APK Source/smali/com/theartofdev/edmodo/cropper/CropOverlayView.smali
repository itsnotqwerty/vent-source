.class public Lcom/theartofdev/edmodo/cropper/CropOverlayView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;,
        Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;
    }
.end annotation


# instance fields
.field bPt:Z

.field private bPu:I

.field private bPv:I

.field private bSA:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

.field private final bSB:Landroid/graphics/Rect;

.field private bSC:Z

.field private bSD:Ljava/lang/Integer;

.field private bSf:Landroid/view/ScaleGestureDetector;

.field private bSg:Z

.field final bSh:Lcom/theartofdev/edmodo/cropper/g;

.field private bSi:Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;

.field private final bSj:Landroid/graphics/RectF;

.field private bSk:Landroid/graphics/Paint;

.field private bSl:Landroid/graphics/Paint;

.field private bSm:Landroid/graphics/Paint;

.field private bSn:Landroid/graphics/Paint;

.field private final bSo:[F

.field private final bSp:Landroid/graphics/RectF;

.field private bSq:I

.field private bSr:I

.field private bSs:F

.field private bSt:F

.field private bSu:F

.field private bSv:F

.field private bSw:F

.field private bSx:Lcom/theartofdev/edmodo/cropper/h;

.field private bSy:F

.field private bSz:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

.field private rx:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/theartofdev/edmodo/cropper/g;

    invoke-direct {v0}, Lcom/theartofdev/edmodo/cropper/g;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSj:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->rx:Landroid/graphics/Path;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPu:I

    int-to-float v0, v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPv:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSB:Landroid/graphics/Rect;

    return-void
.end method

.method private AP()V
    .locals 10

    const/4 v2, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->e([F)F

    move-result v2

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->f([F)F

    move-result v3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float v4, v2, v0

    if-lez v4, :cond_0

    cmpg-float v4, v3, v1

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSC:Z

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSu:F

    sub-float v6, v2, v0

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSu:F

    sub-float v7, v3, v1

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSB:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSB:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSB:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    iget v6, v6, Lcom/theartofdev/edmodo/cropper/g;->bSP:F

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSB:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    iget v6, v6, Lcom/theartofdev/edmodo/cropper/g;->bSQ:F

    div-float/2addr v5, v6

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSB:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    iget v7, v7, Lcom/theartofdev/edmodo/cropper/g;->bSP:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSB:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    iget v7, v7, Lcom/theartofdev/edmodo/cropper/g;->bSQ:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->left:F

    iget v0, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->top:F

    iget v0, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    :goto_1
    invoke-direct {p0, v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v0, v4}, Lcom/theartofdev/edmodo/cropper/g;->c(Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_2
    iget-boolean v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPt:Z

    if-eqz v7, :cond_4

    cmpl-float v7, v2, v0

    if-lez v7, :cond_4

    cmpl-float v7, v3, v1

    if-lez v7, :cond_4

    sub-float v7, v2, v0

    sub-float v8, v3, v1

    div-float/2addr v7, v8

    iget v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    add-float v0, v1, v6

    iput v0, v4, Landroid/graphics/RectF;->top:F

    sub-float v0, v3, v6

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPu:I

    int-to-float v1, v1

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPv:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/g;->AS()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v9

    sub-float v2, v0, v1

    iput v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_3
    add-float/2addr v0, v5

    iput v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, v5

    iput v0, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/g;->AT()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v9

    sub-float v2, v0, v1

    iput v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_4
    add-float/2addr v0, v5

    iput v0, v4, Landroid/graphics/RectF;->left:F

    add-float v0, v1, v6

    iput v0, v4, Landroid/graphics/RectF;->top:F

    sub-float v0, v2, v5

    iput v0, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v3, v6

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method private AQ()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static a(FI)Landroid/graphics/Paint;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/g;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    return-object v0
.end method

.method private a(Landroid/graphics/RectF;)V
    .locals 6

    const/4 v2, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/g;->AS()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/g;->AS()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/g;->AT()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/g;->AT()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/g;->AU()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/g;->AU()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v1, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/g;->AV()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/g;->AV()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v1, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_3
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v0

    if-gez v4, :cond_4

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iput v1, p1, Landroid/graphics/RectF;->top:F

    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    iput v2, p1, Landroid/graphics/RectF;->right:F

    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    :cond_7
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPt:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v5

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v1, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_8
    :goto_0
    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v5

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v1, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private aP(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSi:Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSi:Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;

    invoke-interface {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;->aN(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AIC"

    const-string v2, "Exception in crop window changed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 12

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSm:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSk:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSk:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/g;->AR()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v2, v1, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v7, v1, v3

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSA:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v3, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->bRO:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v1, v3, :cond_2

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    sub-float v8, v1, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v4

    sub-float v9, v1, v0

    iget v0, v6, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v2

    iget v0, v6, Landroid/graphics/RectF;->right:F

    sub-float v10, v0, v2

    float-to-double v4, v9

    sub-float v0, v8, v2

    div-float/2addr v0, v8

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v11, v2

    iget v0, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v9

    sub-float v2, v0, v11

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v9

    add-float v4, v0, v11

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSm:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v9

    sub-float v2, v0, v11

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v9

    add-float v4, v0, v11

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSm:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v10

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v10, v0, v7

    float-to-double v0, v8

    sub-float v3, v9, v7

    div-float/2addr v3, v9

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-float v7, v0

    iget v0, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    sub-float v1, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    add-float v3, v0, v7

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSm:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    sub-float v1, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    add-float v3, v0, v7

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSm:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v10

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    iget v0, v6, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v2

    iget v0, v6, Landroid/graphics/RectF;->right:F

    sub-float v8, v0, v2

    iget v2, v6, Landroid/graphics/RectF;->top:F

    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSm:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v6, Landroid/graphics/RectF;->top:F

    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSm:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v7

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSm:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSm:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private b(Landroid/graphics/RectF;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->e([F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->f([F)F

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AQ()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    invoke-virtual {v1, v7, v9, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x0

    aget v6, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x1

    aget v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x4

    aget v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x5

    aget v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x6

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v11, 0x7

    aget v1, v1, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x6

    aget v6, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x7

    aget v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x2

    aget v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x3

    aget v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x4

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v11, 0x5

    aget v1, v1, v11

    :cond_1
    :goto_1
    sub-float/2addr v1, v5

    sub-float/2addr v2, v6

    div-float v11, v1, v2

    const/high16 v1, -0x40800000    # -1.0f

    div-float v12, v1, v11

    mul-float v1, v11, v6

    sub-float v13, v5, v1

    mul-float v1, v12, v6

    sub-float/2addr v5, v1

    mul-float v1, v11, v4

    sub-float v6, v3, v1

    mul-float v1, v12, v4

    sub-float/2addr v3, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    div-float v4, v1, v2

    neg-float v14, v4

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v4

    sub-float v15, v1, v2

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, v14

    sub-float v16, v1, v2

    sub-float v1, v15, v13

    sub-float v2, v11, v4

    div-float/2addr v1, v2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    sub-float v1, v15, v13

    sub-float v2, v11, v4

    div-float/2addr v1, v2

    :goto_2
    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v1, v15, v5

    sub-float v7, v12, v4

    div-float/2addr v1, v7

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v7

    if-gez v1, :cond_5

    sub-float v1, v15, v5

    sub-float v7, v12, v4

    div-float/2addr v1, v7

    :goto_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v1, v16, v3

    sub-float v7, v12, v14

    div-float/2addr v1, v7

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v7

    if-gez v1, :cond_6

    sub-float v1, v16, v3

    sub-float v7, v12, v14

    div-float/2addr v1, v7

    :goto_4
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-float v1, v16, v5

    sub-float v2, v12, v14

    div-float/2addr v1, v2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    sub-float v1, v16, v5

    sub-float v2, v12, v14

    div-float/2addr v1, v2

    :goto_5
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v1, v16, v6

    sub-float v8, v11, v14

    div-float/2addr v1, v8

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_8

    sub-float v1, v16, v6

    sub-float v8, v11, v14

    div-float/2addr v1, v8

    :goto_6
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v1, v15, v6

    sub-float v8, v11, v4

    div-float/2addr v1, v8

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_9

    sub-float v1, v15, v6

    sub-float v4, v11, v4

    div-float/2addr v1, v4

    :goto_7
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v2, v11, v7

    add-float/2addr v2, v13

    mul-float v4, v12, v1

    add-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v4, v12, v7

    add-float/2addr v3, v4

    mul-float v4, v11, v1

    add-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    iput v7, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    iput v2, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    iput v1, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x4

    aget v6, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x5

    aget v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x0

    aget v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x1

    aget v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x2

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v11, 0x3

    aget v1, v1, v11

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v13, 0x3

    aget v12, v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x2

    aget v6, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x3

    aget v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x6

    aget v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x7

    aget v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v11, 0x1

    aget v1, v1, v11

    goto/16 :goto_1

    :cond_4
    move v1, v7

    goto/16 :goto_2

    :cond_5
    move v1, v2

    goto/16 :goto_3

    :cond_6
    move v1, v2

    goto/16 :goto_4

    :cond_7
    move v1, v8

    goto/16 :goto_5

    :cond_8
    move v1, v2

    goto/16 :goto_6

    :cond_9
    move v1, v2

    goto/16 :goto_7
.end method


# virtual methods
.method public final AN()V
    .locals 2

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1, v0}, Lcom/theartofdev/edmodo/cropper/g;->c(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final AO()V
    .locals 1

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSC:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/theartofdev/edmodo/cropper/c;->bPJ:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AP()V

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final a([FII)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    :goto_0
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSq:I

    iput p3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSr:I

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/g;->AR()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AP()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final aO(Z)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSg:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSg:Z

    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSf:Landroid/view/ScaleGestureDetector;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;

    invoke-direct {v3, p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;-><init>(Lcom/theartofdev/edmodo/cropper/CropOverlayView;B)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSf:Landroid/view/ScaleGestureDetector;

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getAspectRatioX()I
    .locals 1

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPu:I

    return v0
.end method

.method public getAspectRatioY()I
    .locals 1

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPv:I

    return v0
.end method

.method public getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSA:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    return-object v0
.end method

.method public getCropWindowRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/g;->AR()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getGuidelines()Lcom/theartofdev/edmodo/cropper/CropImageView$c;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSz:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    return-object v0
.end method

.method public getInitialCropWindowRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSB:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/16 v5, 0x11

    const/4 v10, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/g;->AR()Landroid/graphics/RectF;

    move-result-object v11

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->e([F)F

    move-result v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->f([F)F

    move-result v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSA:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->bRN:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v0, v4, :cond_6

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AQ()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_5

    :cond_0
    iget v4, v11, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSn:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSn:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v6, v11, Landroid/graphics/RectF;->top:F

    iget v7, v11, Landroid/graphics/RectF;->left:F

    iget v8, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSn:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v11, Landroid/graphics/RectF;->right:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    iget v4, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSn:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/g;->AW()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSz:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->bRS:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    if-ne v0, v1, :cond_8

    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSk:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSk:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/g;->AR()Landroid/graphics/RectF;

    move-result-object v1

    div-float v2, v0, v12

    div-float/2addr v0, v12

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSA:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->bRN:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSk:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSl:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSk:Landroid/graphics/Paint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSk:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    :goto_3
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSl:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v2, v1, v12

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSA:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->bRN:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v3, v4, :cond_3

    iget v10, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSs:F

    :cond_3
    add-float/2addr v2, v10

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/g;->AR()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    sub-float v0, v1, v0

    div-float v7, v0, v12

    div-float v0, v1, v12

    add-float v8, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v8

    iget v0, v6, Landroid/graphics/RectF;->left:F

    sub-float v3, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSt:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v8

    iget v0, v6, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSt:F

    add-float/2addr v3, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v7

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/RectF;->right:F

    add-float v1, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v8

    iget v0, v6, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSt:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/RectF;->right:F

    add-float v1, v0, v8

    iget v0, v6, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSt:F

    sub-float v3, v0, v3

    iget v0, v6, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v7

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    add-float v2, v0, v8

    iget v0, v6, Landroid/graphics/RectF;->left:F

    sub-float v3, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSt:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v8

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    add-float v2, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSt:F

    add-float/2addr v3, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    add-float v4, v0, v7

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/RectF;->right:F

    add-float v1, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    add-float v2, v0, v8

    iget v0, v6, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSt:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Landroid/graphics/RectF;->right:F

    add-float v1, v0, v8

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    add-float v2, v0, v7

    iget v0, v6, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSt:F

    sub-float v3, v0, v3

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    add-float v4, v0, v7

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->rx:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->rx:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->rx:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v7, 0x3

    aget v5, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->rx:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v7, 0x5

    aget v5, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->rx:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSo:[F

    const/4 v7, 0x7

    aget v5, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->rx:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->rx:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    sget-object v0, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSn:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->rx:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_7

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSA:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->bRO:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSj:Landroid/graphics/RectF;

    iget v4, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v12

    iget v5, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v12

    iget v7, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v12

    iget v8, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v12

    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_4
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->rx:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSj:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->rx:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSn:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSj:Landroid/graphics/RectF;

    iget v4, v11, Landroid/graphics/RectF;->left:F

    iget v5, v11, Landroid/graphics/RectF;->top:F

    iget v7, v11, Landroid/graphics/RectF;->right:F

    iget v8, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSz:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->bRR:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSx:Lcom/theartofdev/edmodo/cropper/h;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSk:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_a
    move v0, v10

    goto/16 :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSg:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSf:Landroid/view/ScaleGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSv:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSA:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->bRO:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v3, v4, :cond_a

    iget-object v3, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    iget-object v4, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v3

    iget-object v5, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    iget-object v5, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v5, v6

    iget-object v6, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v5

    iget-object v7, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x40a00000    # 5.0f

    mul-float/2addr v5, v9

    add-float/2addr v5, v7

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    cmpg-float v3, v2, v6

    if-gez v3, :cond_2

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bSZ:I

    :goto_1
    move v4, v3

    :goto_2
    if-eqz v4, :cond_14

    new-instance v3, Lcom/theartofdev/edmodo/cropper/h;

    invoke-direct {v3, v4, v8, v1, v2}, Lcom/theartofdev/edmodo/cropper/h;-><init>(ILcom/theartofdev/edmodo/cropper/g;FF)V

    move-object v1, v3

    :goto_3
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSx:Lcom/theartofdev/edmodo/cropper/h;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSx:Lcom/theartofdev/edmodo/cropper/h;

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    cmpg-float v3, v2, v5

    if-gez v3, :cond_3

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTd:I

    goto :goto_1

    :cond_3
    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTb:I

    goto :goto_1

    :cond_4
    cmpg-float v3, v1, v3

    if-gez v3, :cond_7

    cmpg-float v3, v2, v6

    if-gez v3, :cond_5

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTe:I

    goto :goto_1

    :cond_5
    cmpg-float v3, v2, v5

    if-gez v3, :cond_6

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTh:I

    goto :goto_1

    :cond_6
    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTg:I

    goto :goto_1

    :cond_7
    cmpg-float v3, v2, v6

    if-gez v3, :cond_8

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTa:I

    goto :goto_1

    :cond_8
    cmpg-float v3, v2, v5

    if-gez v3, :cond_9

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTf:I

    goto :goto_1

    :cond_9
    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTc:I

    goto :goto_1

    :cond_a
    const/4 v7, 0x0

    iget-object v3, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2, v3, v4, v9}, Lcom/theartofdev/edmodo/cropper/g;->a(FFFFF)Z

    move-result v3

    if-eqz v3, :cond_b

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bSZ:I

    :goto_4
    move v4, v3

    goto :goto_2

    :cond_b
    iget-object v3, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2, v3, v4, v9}, Lcom/theartofdev/edmodo/cropper/g;->a(FFFFF)Z

    move-result v3

    if-eqz v3, :cond_c

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTa:I

    goto :goto_4

    :cond_c
    iget-object v3, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v3, v4, v9}, Lcom/theartofdev/edmodo/cropper/g;->a(FFFFF)Z

    move-result v3

    if-eqz v3, :cond_d

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTb:I

    goto :goto_4

    :cond_d
    iget-object v3, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v3, v4, v9}, Lcom/theartofdev/edmodo/cropper/g;->a(FFFFF)Z

    move-result v3

    if-eqz v3, :cond_e

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTc:I

    goto :goto_4

    :cond_e
    iget-object v3, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/g;->c(FFFFFF)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v8}, Lcom/theartofdev/edmodo/cropper/g;->AX()Z

    move-result v3

    if-eqz v3, :cond_f

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTh:I

    goto :goto_4

    :cond_f
    iget-object v3, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move v6, v9

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/g;->a(FFFFFF)Z

    move-result v3

    if-eqz v3, :cond_10

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTe:I

    goto :goto_4

    :cond_10
    iget-object v3, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move v6, v9

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/g;->a(FFFFFF)Z

    move-result v3

    if-eqz v3, :cond_11

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTg:I

    goto :goto_4

    :cond_11
    iget-object v3, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move v6, v9

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/g;->b(FFFFFF)Z

    move-result v3

    if-eqz v3, :cond_12

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTd:I

    goto/16 :goto_4

    :cond_12
    iget-object v3, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move v6, v9

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/g;->b(FFFFFF)Z

    move-result v3

    if-eqz v3, :cond_13

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTf:I

    goto/16 :goto_4

    :cond_13
    iget-object v3, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, v8, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/g;->c(FFFFFF)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v8}, Lcom/theartofdev/edmodo/cropper/g;->AX()Z

    move-result v3

    if-nez v3, :cond_23

    sget v3, Lcom/theartofdev/edmodo/cropper/h$a;->bTh:I

    goto/16 :goto_4

    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSx:Lcom/theartofdev/edmodo/cropper/h;

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSx:Lcom/theartofdev/edmodo/cropper/h;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->aP(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_15
    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSx:Lcom/theartofdev/edmodo/cropper/h;

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget v5, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSw:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/g;->AR()Landroid/graphics/RectF;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v5, 0x0

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSx:Lcom/theartofdev/edmodo/cropper/h;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSp:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSq:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSr:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPt:Z

    move-object/from16 v0, p0

    iget v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    iget-object v9, v1, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v3

    iget-object v3, v1, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v7

    iget v7, v1, Lcom/theartofdev/edmodo/cropper/h;->bSW:I

    sget v10, Lcom/theartofdev/edmodo/cropper/h$a;->bTh:I

    if-ne v7, v10, :cond_1a

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float v6, v9, v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float v7, v3, v7

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v6

    const/4 v8, 0x0

    cmpg-float v3, v3, v8

    if-ltz v3, :cond_17

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v6

    int-to-float v8, v11

    cmpl-float v3, v3, v8

    if-gtz v3, :cond_17

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v6

    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v8

    if-ltz v3, :cond_17

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v6

    iget v8, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_22

    :cond_17
    const v3, 0x3f866666    # 1.05f

    div-float v3, v6, v3

    iget-object v6, v1, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v3, v9

    sub-float/2addr v8, v9

    iput v8, v6, Landroid/graphics/PointF;->x:F

    :goto_5
    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    const/4 v8, 0x0

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_18

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    move/from16 v0, v21

    int-to-float v8, v0

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_18

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_18

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_21

    :cond_18
    const v6, 0x3f866666    # 1.05f

    div-float v6, v7, v6

    iget-object v1, v1, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v6, v8

    sub-float/2addr v7, v8

    iput v7, v1, Landroid/graphics/PointF;->y:F

    move v1, v6

    :goto_6
    invoke-virtual {v2, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-static {v2, v4, v5}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v1, v2}, Lcom/theartofdev/edmodo/cropper/g;->c(Landroid/graphics/RectF;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->aP(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_1a
    if-eqz v8, :cond_1f

    sget-object v7, Lcom/theartofdev/edmodo/cropper/h$1;->bSY:[I

    iget v8, v1, Lcom/theartofdev/edmodo/cropper/h;->bSW:I

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto :goto_7

    :pswitch_3
    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9, v3, v7, v8}, Lcom/theartofdev/edmodo/cropper/h;->d(FFFF)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_1b

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-static {v2, v6}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;F)V

    goto :goto_7

    :cond_1b
    const/4 v7, 0x1

    const/4 v8, 0x0

    move v3, v9

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-static {v2, v6}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;F)V

    goto :goto_7

    :pswitch_4
    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7, v3, v9, v8}, Lcom/theartofdev/edmodo/cropper/h;->d(FFFF)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_1c

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-static {v2, v6}, Lcom/theartofdev/edmodo/cropper/h;->c(Landroid/graphics/RectF;F)V

    goto :goto_7

    :cond_1c
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v10, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v15}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-static {v2, v6}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;F)V

    goto :goto_7

    :pswitch_5
    iget v7, v2, Landroid/graphics/RectF;->top:F

    iget v8, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v9, v7, v8, v3}, Lcom/theartofdev/edmodo/cropper/h;->d(FFFF)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_1d

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    move/from16 v11, v21

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v15}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-static {v2, v6}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;F)V

    goto/16 :goto_7

    :cond_1d
    const/4 v7, 0x0

    const/4 v8, 0x1

    move v3, v9

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-static {v2, v6}, Lcom/theartofdev/edmodo/cropper/h;->d(Landroid/graphics/RectF;F)V

    goto/16 :goto_7

    :pswitch_6
    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v7, v8, v9, v3}, Lcom/theartofdev/edmodo/cropper/h;->d(FFFF)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_1e

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    move/from16 v11, v21

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v15}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-static {v2, v6}, Lcom/theartofdev/edmodo/cropper/h;->c(Landroid/graphics/RectF;F)V

    goto/16 :goto_7

    :cond_1e
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v7, v1

    move-object v8, v2

    move-object v10, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v15}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-static {v2, v6}, Lcom/theartofdev/edmodo/cropper/h;->d(Landroid/graphics/RectF;F)V

    goto/16 :goto_7

    :pswitch_7
    const/4 v7, 0x1

    const/4 v8, 0x1

    move v3, v9

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-static {v2, v4, v6}, Lcom/theartofdev/edmodo/cropper/h;->c(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_7

    :pswitch_8
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-static {v2, v4, v6}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_7

    :pswitch_9
    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v7, v1

    move-object v8, v2

    move-object v10, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v15}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-static {v2, v4, v6}, Lcom/theartofdev/edmodo/cropper/h;->c(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_7

    :pswitch_a
    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    move/from16 v11, v21

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v15}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    invoke-static {v2, v4, v6}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_7

    :cond_1f
    sget-object v6, Lcom/theartofdev/edmodo/cropper/h$1;->bSY:[I

    iget v7, v1, Lcom/theartofdev/edmodo/cropper/h;->bSW:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    goto/16 :goto_7

    :pswitch_b
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v9

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_7

    :pswitch_c
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v10, v4

    move v12, v5

    invoke-virtual/range {v7 .. v15}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_7

    :pswitch_d
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    move-object v13, v4

    move/from16 v14, v21

    move v15, v5

    invoke-virtual/range {v10 .. v18}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v9

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_7

    :pswitch_e
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    move-object v15, v4

    move/from16 v16, v21

    move/from16 v17, v5

    invoke-virtual/range {v12 .. v20}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v10, v4

    move v12, v5

    invoke-virtual/range {v7 .. v15}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_7

    :pswitch_f
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v9

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_7

    :pswitch_10
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_7

    :pswitch_11
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v10, v4

    move v12, v5

    invoke-virtual/range {v7 .. v15}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_7

    :pswitch_12
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    move/from16 v10, v21

    move v11, v5

    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_7

    :cond_20
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_21
    move v1, v7

    goto/16 :goto_6

    :cond_22
    move v3, v6

    goto/16 :goto_5

    :cond_23
    move v3, v7

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public setAspectRatioX(I)V
    .locals 2

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPu:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPu:I

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPu:I

    int-to-float v0, v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPv:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSC:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AP()V

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setAspectRatioY(I)V
    .locals 2

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPv:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPv:I

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPu:I

    int-to-float v0, v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPv:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSy:F

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSC:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AP()V

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSA:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSA:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSA:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->bRO:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getLayerType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSD:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSD:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v3, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSD:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSD:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSD:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSD:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setCropWindowChangeListener(Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSi:Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;

    return-void
.end method

.method public setCropWindowRect(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/g;->c(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPt:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPt:Z

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSC:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AP()V

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSz:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSz:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/f;)V
    .locals 2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/f;->bQA:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/g;->bSH:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/f;->bQB:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/g;->bSI:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/f;->bQC:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/g;->bSL:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/f;->bQD:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/g;->bSM:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/f;->bQE:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/g;->bSN:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/f;->bQF:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/g;->bSO:F

    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQe:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V

    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQf:F

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setSnapRadius(F)V

    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQh:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)V

    iget-boolean v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQp:Z

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQq:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioX(I)V

    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQr:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioY(I)V

    iget-boolean v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQm:Z

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->aO(Z)Z

    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQg:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSv:F

    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQo:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSu:F

    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQs:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/f;->bQt:I

    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSk:Landroid/graphics/Paint;

    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQv:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSs:F

    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQw:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSt:F

    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQu:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/f;->bQx:I

    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSl:Landroid/graphics/Paint;

    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->bQy:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/f;->bQz:I

    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSm:Landroid/graphics/Paint;

    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->backgroundColor:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSn:Landroid/graphics/Paint;

    return-void
.end method

.method public setInitialCropWindowRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSB:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSC:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AP()V

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->aP(Z)V

    :cond_0
    return-void

    :cond_1
    sget-object p1, Lcom/theartofdev/edmodo/cropper/c;->bPI:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setSnapRadius(F)V
    .locals 0

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSw:F

    return-void
.end method
