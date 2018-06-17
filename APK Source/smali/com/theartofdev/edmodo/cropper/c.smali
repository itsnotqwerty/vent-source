.class final Lcom/theartofdev/edmodo/cropper/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/c$b;,
        Lcom/theartofdev/edmodo/cropper/c$a;
    }
.end annotation


# static fields
.field static final bPI:Landroid/graphics/Rect;

.field static final bPJ:Landroid/graphics/RectF;

.field static final bPK:Landroid/graphics/RectF;

.field static final bPL:[F

.field static final bPM:[F

.field private static bPN:I

.field static bPO:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->bPI:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->bPJ:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->bPK:Landroid/graphics/RectF;

    new-array v0, v1, [F

    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->bPL:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->bPM:[F

    return-void
.end method

.method private static AF()I
    .locals 10

    const/16 v2, 0x800

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v5

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v5, v1, v3, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v1, v6, v1

    new-array v7, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-interface {v0, v5, v7, v1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x1

    new-array v8, v1, [I

    move v3, v4

    move v1, v4

    :goto_0
    const/4 v4, 0x0

    aget v4, v6, v4

    if-ge v3, v4, :cond_1

    aget-object v4, v7, v3

    const/16 v9, 0x302c

    invoke-interface {v0, v5, v4, v9, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v4, 0x0

    aget v4, v8, v4

    if-ge v1, v4, :cond_0

    const/4 v1, 0x0

    aget v1, v8, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    const/16 v0, 0x800

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->bPI:Landroid/graphics/Rect;

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->b(Ljava/io/Closeable;)V

    return-object v1

    :catch_0
    move-exception v1

    :try_start_1
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->b(Ljava/io/Closeable;)V

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->b(Ljava/io/Closeable;)V

    throw v1
.end method

.method static a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 6

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    :try_start_0
    sget v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRX:I

    if-eq p3, v0, :cond_0

    sget v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRW:I

    if-eq p3, v0, :cond_0

    sget v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRY:I

    if-ne p3, v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    sget v1, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRY:I

    if-ne p3, v1, :cond_4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object p0, v0

    :cond_3
    :goto_1
    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v3, v1

    int-to-float v4, p1

    div-float/2addr v3, v4

    int-to-float v4, v2

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_5

    sget v4, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRX:I

    if-ne p3, v4, :cond_1

    :cond_5
    int-to-float v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v2

    div-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AIC"

    const-string v2, "Failed to resize cropped image, return bitmap before resize"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static a(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object v0, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/c;->a([FIIZII)Landroid/graphics/Rect;

    move-result-object v7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    if-eqz p7, :cond_3

    neg-float v0, p6

    :goto_0
    if-eqz p8, :cond_0

    neg-float p6, p6

    :cond_0
    invoke-virtual {v5, v0, p6}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    rem-int/lit8 v1, p2, 0x5a

    if-eqz v1, :cond_2

    move-object v1, p1

    move-object v2, v7

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    move v0, p6

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;
    .locals 16

    rem-int/lit8 v4, p3, 0x5a

    if-eqz v4, :cond_3

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    move/from16 v0, p3

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    const/16 v4, 0x5a

    move/from16 v0, p3

    if-lt v0, v4, :cond_0

    const/16 v4, 0xb4

    move/from16 v0, p3

    if-le v0, v4, :cond_4

    const/16 v4, 0x10e

    move/from16 v0, p3

    if-ge v0, v4, :cond_4

    :cond_0
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v5, v12, :cond_6

    aget v12, p1, v5

    add-int/lit8 v13, v4, -0x1

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_5

    aget v12, p1, v5

    add-int/lit8 v13, v4, 0x1

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_5

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    add-int/lit8 v8, v5, 0x1

    aget v8, p1, v8

    sub-float/2addr v4, v8

    float-to-double v8, v4

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-int v9, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    add-int/lit8 v4, v5, 0x1

    aget v4, p1, v4

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v4, v8

    float-to-double v12, v4

    mul-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-int v7, v6

    add-int/lit8 v4, v5, 0x1

    aget v4, p1, v4

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-double v12, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    double-to-int v6, v12

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v5, v6

    move v8, v7

    :goto_2
    add-int/2addr v5, v9

    add-int/2addr v4, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v8, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p4, :cond_1

    move-object/from16 v0, p2

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/c;->b(Landroid/graphics/Rect;II)V

    :cond_1
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    if-eq v0, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object/from16 p0, v4

    :cond_3
    return-object p0

    :cond_4
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_1

    :cond_6
    move v4, v6

    move v5, v7

    goto :goto_2
.end method

.method static a([FIIZII)Landroid/graphics/Rect;
    .locals 5

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->e([F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, p2

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->f([F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p3, :cond_0

    invoke-static {v4, p4, p5}, Lcom/theartofdev/edmodo/cropper/c;->b(Landroid/graphics/Rect;II)V

    :cond_0
    return-object v4
.end method

.method static a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    const/4 v1, 0x1

    if-nez p2, :cond_1

    :try_start_0
    const-string v0, "aic_state_store_temp"

    const-string v2, ".jpg"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    move-object v0, p2

    :goto_0
    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-static {p0, p1, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    move-object v0, p2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AIC"

    const-string v2, "Failed to write bitmap to temp file for image-cropper save instance state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroid/net/Uri;II)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/theartofdev/edmodo/cropper/c;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v3, p2, p3}, Lcom/theartofdev/edmodo/cropper/c;->j(IIII)I

    move-result v3

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v0, 0x1

    sget v6, Lcom/theartofdev/edmodo/cropper/c;->bPN:I

    if-nez v6, :cond_0

    invoke-static {}, Lcom/theartofdev/edmodo/cropper/c;->AF()I

    move-result v6

    sput v6, Lcom/theartofdev/edmodo/cropper/c;->bPN:I

    :cond_0
    sget v6, Lcom/theartofdev/edmodo/cropper/c;->bPN:I

    if-lez v6, :cond_2

    :goto_0
    div-int v6, v5, v0

    sget v7, Lcom/theartofdev/edmodo/cropper/c;->bPN:I

    if-gt v6, v7, :cond_1

    div-int v6, v4, v0

    sget v7, Lcom/theartofdev/edmodo/cropper/c;->bPN:I

    if-le v6, v7, :cond_2

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v1, p1, v2}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/theartofdev/edmodo/cropper/c$a;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {v1, v0, v2}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load sampled bitmap: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1, p3, p4}, Lcom/theartofdev/edmodo/cropper/c;->j(IIII)I

    move-result v0

    mul-int/2addr v0, p5

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v3, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    :cond_0
    :try_start_2
    new-instance v0, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-virtual {v1, p2, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {v0, v5, v6}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->b(Ljava/io/Closeable;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v5, 0x200

    if-le v0, v5, :cond_0

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->b(Ljava/io/Closeable;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_2
    new-instance v0, Lcom/theartofdev/edmodo/cropper/c$a;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_1
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to load sampled bitmap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->b(Ljava/io/Closeable;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 14

    const/4 v13, 0x1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    :try_start_0
    invoke-static/range {v0 .. v13}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/theartofdev/edmodo/cropper/c$a;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    mul-int/lit8 v13, v13, 0x2

    const/16 v1, 0x10

    if-le v13, v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to handle OOM by sampling ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 19

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/c;->a([FIIZII)Landroid/graphics/Rect;

    move-result-object v3

    if-lez p9, :cond_3

    move/from16 v4, p9

    :goto_0
    if-lez p10, :cond_4

    move/from16 v5, p10

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p13

    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v2

    iget-object v1, v2, Lcom/theartofdev/edmodo/cropper/c$a;->avo:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v2, v2, Lcom/theartofdev/edmodo/cropper/c$a;->awZ:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v12, v2

    move-object v11, v1

    :goto_2
    if-eqz v11, :cond_9

    if-gtz p3, :cond_0

    if-nez p11, :cond_0

    if-eqz p12, :cond_7

    :cond_0
    :try_start_2
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, p3

    int-to-float v1, v0

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    if-eqz p11, :cond_5

    const/high16 v1, -0x40800000    # -1.0f

    move v2, v1

    :goto_3
    if-eqz p12, :cond_6

    const/high16 v1, -0x40800000    # -1.0f

    :goto_4
    invoke-virtual {v9, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v11

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v11, :cond_1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_5
    :try_start_3
    rem-int/lit8 v2, p3, 0x5a

    if-eqz v2, :cond_2

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    :cond_2
    new-instance v2, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-direct {v2, v1, v12}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V

    move-object v1, v2

    :goto_6
    return-object v1

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v7

    :goto_7
    move v12, v8

    move-object v11, v1

    goto :goto_2

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    move v2, v1

    goto :goto_3

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    move-object v1, v11

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v3, v11

    :goto_8
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    throw v2

    :cond_9
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p13

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, p11

    move/from16 v18, p12

    invoke-static/range {v6 .. v18}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v1

    goto :goto_6

    :catch_2
    move-exception v2

    move-object v3, v1

    goto :goto_8

    :catch_3
    move-exception v2

    goto :goto_7
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 13

    const/4 v11, 0x0

    :try_start_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v0, p9

    move/from16 v1, p10

    invoke-static {v2, v3, v0, v1}, Lcom/theartofdev/edmodo/cropper/c;->j(IIII)I

    move-result v2

    mul-int v12, p7, v2

    iput v12, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v5}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_1
    array-length v3, p2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v7, p2

    invoke-static {p2, v4, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_0

    aget v6, v3, v4

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-static/range {v2 .. v10}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eq v3, v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    new-instance v2, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-direct {v2, v3, v12}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v2

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v3
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v2

    :goto_2
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    throw v2

    :cond_3
    move-object v2, v3

    :goto_3
    move-object v3, v2

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to load sampled bitmap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    move-object v11, v3

    goto :goto_2

    :cond_4
    move-object v2, v11

    goto :goto_3
.end method

.method static a(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 10

    const/4 v0, 0x1

    move v9, v0

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, v9

    div-float v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    :try_start_0
    invoke-static/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-direct {v1, v0, v9}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    mul-int/lit8 v1, v9, 0x2

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    throw v0

    :cond_0
    move v9, v1

    goto :goto_0
.end method

.method static a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/c$b;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/support/d/a;

    invoke-direct {v0, v3}, Landroid/support/d/a;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "Orientation"

    invoke-virtual {v0, v1}, Landroid/support/d/a;->s(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    :goto_1
    new-instance v1, Lcom/theartofdev/edmodo/cropper/c$b;

    invoke-direct {v1, p0, v0}, Lcom/theartofdev/edmodo/cropper/c$b;-><init>(Landroid/graphics/Bitmap;I)V

    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    :goto_3
    move-object v0, v1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/theartofdev/edmodo/cropper/c$b;

    invoke-direct {v0, p0, v2}, Lcom/theartofdev/edmodo/cropper/c$b;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_3

    :cond_1
    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1, p3, p4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->b(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static b(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->bPI:Landroid/graphics/Rect;

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->b(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static b(Landroid/graphics/Rect;II)V
    .locals 3

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private static b(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static c([F)F
    .locals 2

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x6

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static d([F)F
    .locals 2

    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x7

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static e([F)F
    .locals 2

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x6

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static f([F)F
    .locals 2

    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x7

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static g([F)F
    .locals 2

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->e([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method static h([F)F
    .locals 2

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->f([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method static i([F)F
    .locals 2

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->e([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method static j([F)F
    .locals 2

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->f([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static j(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-gt p1, p3, :cond_0

    if-le p0, p2, :cond_1

    :cond_0
    :goto_0
    div-int/lit8 v1, p1, 0x2

    div-int/2addr v1, v0

    if-le v1, p3, :cond_1

    div-int/lit8 v1, p0, 0x2

    div-int/2addr v1, v0

    if-le v1, p2, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method
