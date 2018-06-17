.class public Lcom/theartofdev/edmodo/cropper/CropImageView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/CropImageView$a;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$d;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$h;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$g;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$e;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$f;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$i;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$c;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$j;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$b;
    }
.end annotation


# instance fields
.field private final bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

.field private bPq:I

.field bPy:Z

.field bPz:Z

.field private final bQZ:Landroid/graphics/Matrix;

.field private bRA:I

.field private bRB:Z

.field private bRC:Landroid/net/Uri;

.field bRD:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/theartofdev/edmodo/cropper/b;",
            ">;"
        }
    .end annotation
.end field

.field bRE:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/theartofdev/edmodo/cropper/a;",
            ">;"
        }
    .end annotation
.end field

.field private final bRa:Landroid/graphics/Matrix;

.field private final bRb:Landroid/widget/ProgressBar;

.field private final bRc:[F

.field private final bRd:[F

.field private bRe:Lcom/theartofdev/edmodo/cropper/e;

.field bRf:I

.field private bRg:I

.field private bRh:I

.field private bRi:I

.field private bRj:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field private bRk:Z

.field private bRl:Z

.field private bRm:Z

.field private bRn:Z

.field private bRo:I

.field private bRp:Lcom/theartofdev/edmodo/cropper/CropImageView$f;

.field private bRq:Lcom/theartofdev/edmodo/cropper/CropImageView$e;

.field private bRr:Lcom/theartofdev/edmodo/cropper/CropImageView$g;

.field bRs:Lcom/theartofdev/edmodo/cropper/CropImageView$h;

.field bRt:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

.field bRu:Landroid/net/Uri;

.field private bRv:I

.field private bRw:F

.field private bRx:F

.field private bRy:F

.field private bRz:Landroid/graphics/RectF;

.field bmT:Landroid/graphics/Bitmap;

.field private final boV:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRa:Landroid/graphics/Matrix;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRk:Z

    iput-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRl:Z

    iput-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRm:Z

    iput-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRn:Z

    iput v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    const-string v2, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/f;

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Lcom/theartofdev/edmodo/cropper/f;

    invoke-direct {v0}, Lcom/theartofdev/edmodo/cropper/f;-><init>()V

    if-eqz p2, :cond_2

    sget-object v1, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropFixAspectRatio:I

    iget-boolean v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQp:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQp:Z

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropAspectRatioX:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQq:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQq:I

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropAspectRatioY:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQr:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQr:I

    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    move-result-object v2

    sget v3, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropScaleType:I

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/f;->bQi:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQi:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropAutoZoomEnabled:I

    iget-boolean v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQl:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQl:Z

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropMultiTouchEnabled:I

    iget-boolean v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQm:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQm:Z

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropMaxZoom:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQn:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQn:I

    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    move-result-object v2

    sget v3, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropShape:I

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/f;->bQe:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQe:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    move-result-object v2

    sget v3, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropGuidelines:I

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/f;->bQh:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQh:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropSnapRadius:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQf:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQf:F

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropTouchRadius:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQg:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQg:F

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropInitialCropWindowPaddingRatio:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQo:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQo:F

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropBorderLineThickness:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQs:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQs:F

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropBorderLineColor:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQt:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQt:I

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropBorderCornerThickness:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQu:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQu:F

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropBorderCornerOffset:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQv:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQv:F

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropBorderCornerLength:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQw:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQw:F

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropBorderCornerColor:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQx:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQx:I

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropGuidelinesThickness:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQy:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQy:F

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropGuidelinesColor:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQz:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQz:I

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropBackgroundColor:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->backgroundColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->backgroundColor:I

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropShowCropOverlay:I

    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRl:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQj:Z

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropShowProgressBar:I

    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRm:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQk:Z

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropBorderCornerThickness:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQu:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQu:F

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropMinCropWindowWidth:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQA:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQA:I

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropMinCropWindowHeight:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQB:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQB:I

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropMinCropResultWidthPX:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQC:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQC:I

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropMinCropResultHeightPX:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQD:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQD:I

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropMaxCropResultWidthPX:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQE:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQE:I

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropMaxCropResultHeightPX:I

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQF:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQF:I

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropFlipHorizontally:I

    iget-boolean v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQV:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQV:Z

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropFlipHorizontally:I

    iget-boolean v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQW:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQW:Z

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropSaveBitmapToInstanceState:I

    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRk:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRk:Z

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropAspectRatioX:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropAspectRatioX:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/theartofdev/edmodo/cropper/i$e;->CropImageView_cropFixAspectRatio:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/f;->bQp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move-object v1, v0

    :goto_2
    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/f;->ak()V

    iget-object v0, v1, Lcom/theartofdev/edmodo/cropper/f;->bQi:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRj:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    iget-boolean v0, v1, Lcom/theartofdev/edmodo/cropper/f;->bQl:Z

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRn:Z

    iget v0, v1, Lcom/theartofdev/edmodo/cropper/f;->bQn:I

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRo:I

    iget-boolean v0, v1, Lcom/theartofdev/edmodo/cropper/f;->bQj:Z

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRl:Z

    iget-boolean v0, v1, Lcom/theartofdev/edmodo/cropper/f;->bQk:Z

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRm:Z

    iget-boolean v0, v1, Lcom/theartofdev/edmodo/cropper/f;->bQV:Z

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    iget-boolean v0, v1, Lcom/theartofdev/edmodo/cropper/f;->bQW:Z

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/theartofdev/edmodo/cropper/i$b;->crop_image_view:I

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/theartofdev/edmodo/cropper/i$a;->ImageView_image:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->boV:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->boV:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v0, Lcom/theartofdev/edmodo/cropper/i$a;->CropOverlayView:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    new-instance v3, Lcom/theartofdev/edmodo/cropper/CropImageView$1;

    invoke-direct {v3, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$1;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;)V

    invoke-virtual {v0, v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowChangeListener(Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/f;)V

    sget v0, Lcom/theartofdev/edmodo/cropper/i$a;->CropProgressBar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRb:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AL()V

    return-void

    :cond_1
    move-object v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private AI()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRi:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRi:I

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    const/4 v0, 0x1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRx:F

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRy:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRC:Landroid/net/Uri;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AK()V

    return-void
.end method

.method private AJ()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    aput v3, v0, v5

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    aput v3, v0, v6

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v7

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    aput v3, v0, v5

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    aput v3, v0, v6

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    aput v4, v0, v7

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    const/4 v1, 0x4

    aput v4, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    const/4 v1, 0x5

    aput v4, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    const/4 v1, 0x7

    aput v4, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method private AK()V
    .locals 2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic a(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$f;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRp:Lcom/theartofdev/edmodo/cropper/CropImageView$f;

    return-object v0
.end method

.method static synthetic a(Lcom/theartofdev/edmodo/cropper/CropImageView;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->e(ZZ)V

    return-void
.end method

.method private aM(Z)V
    .locals 5

    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->g([F)F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRd:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->h([F)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v2, v2, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bSh:Lcom/theartofdev/edmodo/cropper/g;

    iput v3, v2, Lcom/theartofdev/edmodo/cropper/g;->bSJ:F

    iput v4, v2, Lcom/theartofdev/edmodo/cropper/g;->bSK:F

    iput v0, v2, Lcom/theartofdev/edmodo/cropper/g;->bSP:F

    iput v1, v2, Lcom/theartofdev/edmodo/cropper/g;->bSQ:F

    :cond_0
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a([FII)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    goto :goto_0
.end method

.method static synthetic b(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$e;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRq:Lcom/theartofdev/edmodo/cropper/CropImageView$e;

    return-object v0
.end method

.method private e(ZZ)V
    .locals 12

    const v11, 0x3f028f5c    # 0.51f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    if-lez v3, :cond_1

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v5

    if-eqz p1, :cond_2

    iget v0, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, v5, Landroid/graphics/RectF;->right:F

    int-to-float v1, v3

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    int-to-float v0, v3

    int-to-float v1, v4

    invoke-virtual {p0, v0, v1, v10, v10}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRn:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    :cond_3
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    iget v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRo:I

    int-to-float v6, v6

    cmpg-float v0, v0, v6

    if-gez v0, :cond_9

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v6, v3

    mul-float/2addr v6, v7

    cmpg-float v0, v0, v6

    if-gez v0, :cond_9

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v6, v4

    mul-float/2addr v6, v7

    cmpg-float v0, v0, v6

    if-gez v0, :cond_9

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRo:I

    int-to-float v0, v0

    int-to-float v6, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    div-float/2addr v7, v8

    const v8, 0x3f23d70a    # 0.64f

    div-float/2addr v7, v8

    div-float/2addr v6, v7

    int-to-float v7, v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget v9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    div-float/2addr v8, v9

    const v9, 0x3f23d70a    # 0.64f

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    iget v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    cmpl-float v6, v6, v2

    if-lez v6, :cond_5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    int-to-float v7, v3

    const v8, 0x3f266666    # 0.65f

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v7, v4

    const v8, 0x3f266666    # 0.65f

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    :cond_4
    int-to-float v0, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    div-float/2addr v6, v7

    div-float/2addr v6, v11

    div-float/2addr v0, v6

    int-to-float v6, v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    div-float/2addr v5, v7

    div-float/2addr v5, v11

    div-float v5, v6, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_5
    iget-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRn:Z

    if-nez v5, :cond_6

    move v0, v2

    :cond_6
    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_8

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRe:Lcom/theartofdev/edmodo/cropper/e;

    if-nez v1, :cond_7

    new-instance v1, Lcom/theartofdev/edmodo/cropper/e;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->boV:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-direct {v1, v2, v5}, Lcom/theartofdev/edmodo/cropper/e;-><init>(Landroid/widget/ImageView;Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRe:Lcom/theartofdev/edmodo/cropper/e;

    :cond_7
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRe:Lcom/theartofdev/edmodo/cropper/e;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/e;->reset()V

    iget-object v6, v1, Lcom/theartofdev/edmodo/cropper/e;->bPV:[F

    const/16 v7, 0x8

    invoke-static {v2, v10, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Lcom/theartofdev/edmodo/cropper/e;->bPX:Landroid/graphics/RectF;

    iget-object v6, v1, Lcom/theartofdev/edmodo/cropper/e;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v1, Lcom/theartofdev/edmodo/cropper/e;->bPZ:[F

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->getValues([F)V

    :cond_8
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    int-to-float v0, v3

    int-to-float v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method private static n(III)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    goto :goto_0
.end method


# virtual methods
.method final AL()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRm:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRD:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRE:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1
.end method

.method final a(FFZZ)V
    .locals 9

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    cmpl-float v0, p1, v3

    if-lez v0, :cond_4

    cmpl-float v0, p2, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRa:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v4

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRa:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    div-float/2addr v1, v7

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    div-float/2addr v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AJ()V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->i([F)F

    move-result v2

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->j([F)F

    move-result v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AJ()V

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->g([F)F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->h([F)F

    move-result v1

    div-float v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRj:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSa:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRj:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSd:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    if-ne v1, v2, :cond_1

    cmpg-float v1, v0, v6

    if-ltz v1, :cond_2

    :cond_1
    cmpl-float v1, v0, v6

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRn:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->i([F)F

    move-result v2

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->j([F)F

    move-result v5

    invoke-virtual {v1, v0, v0, v2, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AJ()V

    :cond_3
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    neg-float v0, v0

    :goto_0
    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    neg-float v1, v1

    :goto_1
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->i([F)F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/c;->j([F)F

    move-result v6

    invoke-virtual {v2, v0, v1, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AJ()V

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eqz p3, :cond_9

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->g([F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_7

    move v2, v3

    :goto_2
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRx:F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->h([F)F

    move-result v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_8

    :goto_3
    iput v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRy:F

    :goto_4
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRx:F

    mul-float/2addr v3, v0

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRy:F

    mul-float/2addr v5, v1

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRx:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRy:F

    mul-float/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AJ()V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    if-eqz p4, :cond_a

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRe:Lcom/theartofdev/edmodo/cropper/e;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/e;->bPW:[F

    const/16 v4, 0x8

    invoke-static {v1, v8, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/e;->bPY:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/e;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/e;->bQa:[F

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->boV:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRe:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_5
    invoke-direct {p0, v8}, Lcom/theartofdev/edmodo/cropper/CropImageView;->aM(Z)V

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    goto/16 :goto_1

    :cond_7
    div-float v2, p1, v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v2, v5

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v5

    neg-float v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/c;->e([F)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v0

    goto/16 :goto_2

    :cond_8
    div-float v2, p2, v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v3

    neg-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRc:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->f([F)F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v3, v2, v1

    goto/16 :goto_3

    :cond_9
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRx:F

    mul-float/2addr v2, v0

    iget v3, v4, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, v4, Landroid/graphics/RectF;->right:F

    neg-float v3, v3

    add-float/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v0

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRx:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRy:F

    mul-float/2addr v2, v1

    iget v3, v4, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, v4, Landroid/graphics/RectF;->bottom:F

    neg-float v3, v3

    add-float/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v1

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRy:F

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->boV:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_5
.end method

.method public final a(IIILandroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->boV:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRE:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/theartofdev/edmodo/cropper/a;

    :goto_0
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/theartofdev/edmodo/cropper/a;->cancel(Z)Z

    :cond_0
    sget v2, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRU:I

    move/from16 v0, p3

    if-eq v0, v2, :cond_4

    move/from16 v12, p1

    :goto_1
    sget v2, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRU:I

    move/from16 v0, p3

    if-eq v0, v2, :cond_5

    move/from16 v13, p2

    :goto_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    mul-int v7, v2, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    mul-int v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    sget v2, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRV:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    :cond_1
    new-instance v20, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/theartofdev/edmodo/cropper/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-boolean v9, v3, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPt:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    move-object/from16 v3, p0

    move/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v19, p6

    invoke-direct/range {v2 .. v19}, Lcom/theartofdev/edmodo/cropper/a;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;[FIIIZIIIIZZILandroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRE:Ljava/lang/ref/WeakReference;

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/theartofdev/edmodo/cropper/a;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AL()V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_6
    new-instance v2, Ljava/lang/ref/WeakReference;

    new-instance v4, Lcom/theartofdev/edmodo/cropper/a;

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-boolean v9, v3, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPt:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    move-object/from16 v5, p0

    move/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v19, p6

    invoke-direct/range {v4 .. v19}, Lcom/theartofdev/edmodo/cropper/a;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/graphics/Bitmap;[FIZIIIIZZILandroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    invoke-direct {v2, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRE:Ljava/lang/ref/WeakReference;

    goto :goto_3
.end method

.method final a(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V
    .locals 4

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AI()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->boV:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRi:I

    iput p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    iput p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AO()V

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AK()V

    :cond_1
    return-void
.end method

.method public final ef(I)V
    .locals 14

    const/4 v11, 0x2

    const/4 v8, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    if-gez p1, :cond_4

    rem-int/lit16 v0, p1, 0x168

    add-int/lit16 v0, v0, 0x168

    :goto_0
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-boolean v1, v1, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPt:Z

    if-nez v1, :cond_5

    const/16 v1, 0x2d

    if-le v0, v1, :cond_0

    const/16 v1, 0x87

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v1, 0xd7

    if-le v0, v1, :cond_5

    const/16 v1, 0x131

    if-ge v0, v1, :cond_5

    :cond_1
    move v1, v2

    :goto_1
    sget-object v4, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v5}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-eqz v1, :cond_6

    sget-object v4, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    :goto_2
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    if-eqz v1, :cond_7

    sget-object v4, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    :goto_3
    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    iget-boolean v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    iput-boolean v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    :cond_2
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRa:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPL:[F

    sget-object v6, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v1, v3

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPL:[F

    sget-object v6, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v1, v2

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPL:[F

    aput v8, v1, v11

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPL:[F

    const/4 v6, 0x3

    aput v8, v1, v6

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPL:[F

    const/4 v6, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v1, v6

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPL:[F

    const/4 v6, 0x5

    aput v8, v1, v6

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRa:Landroid/graphics/Matrix;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/c;->bPL:[F

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    sget-object v6, Lcom/theartofdev/edmodo/cropper/c;->bPL:[F

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    float-to-double v0, v0

    sget-object v6, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    sget-object v7, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    aget v7, v7, v11

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sget-object v8, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    const/4 v9, 0x5

    aget v8, v8, v9

    sget-object v9, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v0, v6

    double-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    sget-object v6, Lcom/theartofdev/edmodo/cropper/c;->bPL:[F

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    sget-object v0, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    aget v1, v1, v11

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget-object v6, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    sget-object v7, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    float-to-double v6, v5

    mul-double/2addr v6, v0

    double-to-float v5, v6

    float-to-double v6, v4

    mul-double/2addr v0, v6

    double-to-float v0, v0

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    aget v4, v4, v3

    sub-float/2addr v4, v5

    sget-object v6, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    aget v6, v6, v2

    sub-float/2addr v6, v0

    sget-object v7, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    aget v7, v7, v3

    add-float/2addr v5, v7

    sget-object v7, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    aget v7, v7, v2

    add-float/2addr v0, v7

    invoke-virtual {v1, v4, v6, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AO()V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    invoke-direct {p0, v3, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->e(ZZ)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AN()V

    :cond_3
    return-void

    :cond_4
    rem-int/lit16 v0, p1, 0x168

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto/16 :goto_1

    :cond_6
    sget-object v4, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    goto/16 :goto_2

    :cond_7
    sget-object v4, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    goto/16 :goto_3
.end method

.method public getAspectRatio()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCropPoints()[F
    .locals 6

    const/16 v5, 0x8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v1

    new-array v2, v5, [F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    aput v3, v2, v0

    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/RectF;->top:F

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, v1, Landroid/graphics/RectF;->right:F

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, v1, Landroid/graphics/RectF;->left:F

    aput v4, v2, v3

    const/4 v3, 0x7

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    aput v1, v2, v3

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRa:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRa:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :goto_0
    if-ge v0, v5, :cond_0

    aget v1, v2, v0

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 6

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v1, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-boolean v3, v3, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPt:Z

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v5}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/c;->a([FIIZII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    move-result-object v0

    return-object v0
.end method

.method public getCropWindowRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method public getCroppedImage()Landroid/graphics/Bitmap;
    .locals 14

    const/4 v9, 0x0

    sget v13, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRU:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->boV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    sget v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRU:I

    sget v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRU:I

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sget v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRV:I

    if-ne v13, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    mul-int v4, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    mul-int v5, v0, v1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-boolean v6, v6, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPt:Z

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v7}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v7

    iget-object v8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v8}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v8

    iget-boolean v11, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    iget-boolean v12, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    move v10, v9

    invoke-static/range {v0 .. v12}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/c$a;->avo:Landroid/graphics/Bitmap;

    :goto_0
    invoke-static {v0, v9, v9, v13}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v1

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-boolean v3, v3, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->bPt:Z

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v5}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v5

    iget-boolean v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    iget-boolean v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    invoke-static/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/c$a;->avo:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCroppedImageAsync()V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget v3, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRU:I

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRt:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mOnCropImageCompleteListener is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move v2, v1

    move-object v5, v4

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(IIILandroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method

.method public getGuidelines()Lcom/theartofdev/edmodo/cropper/CropImageView$c;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getGuidelines()Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    move-result-object v0

    return-object v0
.end method

.method public getImageResource()I
    .locals 1

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRi:I

    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    return-object v0
.end method

.method public getMaxZoom()I
    .locals 1

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRo:I

    return v0
.end method

.method public getRotatedDegrees()I
    .locals 1

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    return v0
.end method

.method public getScaleType()Lcom/theartofdev/edmodo/cropper/CropImageView$j;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRj:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    return-object v0
.end method

.method public getWholeImageRect()Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRg:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRh:I

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRg:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRh:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    sub-int v0, p4, p2

    int-to-float v0, v0

    sub-int v1, p5, p3

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRz:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRA:I

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRf:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRA:I

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    sub-int v0, p4, p2

    int-to-float v0, v0

    sub-int v1, p5, p3

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRz:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRz:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    invoke-direct {p0, v2, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->e(ZZ)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AN()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRz:Landroid/graphics/RectF;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRB:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRB:Z

    invoke-direct {p0, v2, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->e(ZZ)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->aM(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->aM(Z)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :cond_0
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v4, v1, :cond_1

    int-to-double v2, v4

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v10, v1

    div-double/2addr v2, v10

    :cond_1
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    int-to-double v6, v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v10, v1

    div-double/2addr v6, v10

    :cond_2
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, v2, v10

    if-nez v1, :cond_3

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, v6, v10

    if-eqz v1, :cond_5

    :cond_3
    cmpg-double v1, v2, v6

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    move v2, v4

    :goto_0
    invoke-static {v5, v4, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->n(III)I

    move-result v2

    invoke-static {v8, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->n(III)I

    move-result v0

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRg:I

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRh:I

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRg:I

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRh:I

    invoke-virtual {p0, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v2, v2

    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v4, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_a

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRD:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRi:I

    if-nez v0, :cond_6

    const-string v0, "LOADED_IMAGE_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    if-eqz v3, :cond_8

    const-string v0, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/theartofdev/edmodo/cropper/c;->bPO:Landroid/util/Pair;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/theartofdev/edmodo/cropper/c;->bPO:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/theartofdev/edmodo/cropper/c;->bPO:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    :goto_0
    sput-object v4, Lcom/theartofdev/edmodo/cropper/c;->bPO:Landroid/util/Pair;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOADED_SAMPLE_SIZE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_1
    :goto_1
    const-string v0, "DEGREES_ROTATED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRA:I

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    const-string v0, "INITIAL_CROP_RECT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    :cond_3
    const-string v0, "CROP_WINDOW_RECT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5

    :cond_4
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRz:Landroid/graphics/RectF;

    :cond_5
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const-string v1, "CROP_SHAPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V

    const-string v0, "CROP_AUTO_ZOOM_ENABLED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRn:Z

    const-string v0, "CROP_MAX_ZOOM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRo:I

    const-string v0, "CROP_FLIP_HORIZONTALLY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    const-string v0, "CROP_FLIP_VERTICALLY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    :cond_6
    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_2
    return-void

    :cond_7
    move-object v1, v4

    goto/16 :goto_0

    :cond_8
    const-string v0, "LOADED_IMAGE_RESOURCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "LOADING_IMAGE_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRi:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRk:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRi:I

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRC:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRC:Landroid/net/Uri;

    :cond_1
    move-object v2, v0

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lcom/theartofdev/edmodo/cropper/c;->bPO:Landroid/util/Pair;

    const-string v3, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRD:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/b;

    if-eqz v0, :cond_3

    const-string v3, "LOADING_IMAGE_URI"

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/b;->DD:Landroid/net/Uri;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    const-string v0, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "LOADED_IMAGE_URI"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "LOADED_IMAGE_RESOURCE"

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRi:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LOADED_SAMPLE_SIZE"

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRv:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DEGREES_ROTATED"

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "INITIAL_CROP_RECT"

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getInitialCropWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v0, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bQZ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRa:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRa:Landroid/graphics/Matrix;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const-string v0, "CROP_WINDOW_RECT"

    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CROP_SHAPE"

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CROP_AUTO_ZOOM_ENABLED"

    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRn:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "CROP_MAX_ZOOM"

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRo:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CROP_FLIP_HORIZONTALLY"

    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "CROP_FLIP_VERTICALLY"

    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRB:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoZoomEnabled(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRn:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRn:Z

    invoke-direct {p0, v1, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->e(ZZ)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setFlippedHorizontally(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    :cond_0
    return-void
.end method

.method public setFlippedVertically(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    :cond_0
    return-void
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    return-void
.end method

.method public setImageUriAsync(Landroid/net/Uri;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRD:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/b;

    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/theartofdev/edmodo/cropper/b;->cancel(Z)Z

    :cond_0
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AI()V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRz:Landroid/graphics/RectF;

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRA:I

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/theartofdev/edmodo/cropper/b;

    invoke-direct {v1, p0, p1}, Lcom/theartofdev/edmodo/cropper/b;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRD:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/b;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AL()V

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public setMaxZoom(I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRo:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRo:I

    invoke-direct {p0, v1, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->e(ZZ)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMultiTouchEnabled(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->aO(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->e(ZZ)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRt:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    return-void
.end method

.method public setOnCropWindowChangedListener(Lcom/theartofdev/edmodo/cropper/CropImageView$g;)V
    .locals 0

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRr:Lcom/theartofdev/edmodo/cropper/CropImageView$g;

    return-void
.end method

.method public setOnSetCropOverlayMovedListener(Lcom/theartofdev/edmodo/cropper/CropImageView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRq:Lcom/theartofdev/edmodo/cropper/CropImageView$e;

    return-void
.end method

.method public setOnSetCropOverlayReleasedListener(Lcom/theartofdev/edmodo/cropper/CropImageView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRp:Lcom/theartofdev/edmodo/cropper/CropImageView$f;

    return-void
.end method

.method public setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$h;)V
    .locals 0

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRs:Lcom/theartofdev/edmodo/cropper/CropImageView$h;

    return-void
.end method

.method public setRotatedDegrees(I)V
    .locals 1

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPq:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->ef(I)V

    :cond_0
    return-void
.end method

.method public setSaveBitmapToInstanceState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRk:Z

    return-void
.end method

.method public setScaleType(Lcom/theartofdev/edmodo/cropper/CropImageView$j;)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRj:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRj:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRw:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRy:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRx:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->AO()V

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowCropOverlay(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRl:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRl:Z

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AK()V

    :cond_0
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRm:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRm:Z

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AL()V

    :cond_0
    return-void
.end method

.method public setSnapRadius(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPU:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setSnapRadius(F)V

    :cond_0
    return-void
.end method
