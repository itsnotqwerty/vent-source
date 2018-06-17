.class Lio/intercom/android/sdk/blocks/NetworkImage;
.super Lio/intercom/android/sdk/blocks/Image;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/ImageBlock;


# static fields
.field private static final PROGRESSBAR_DIAMETER_DP:I = 0x28


# instance fields
.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lio/intercom/android/sdk/blocks/ImageClickListener;

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;

.field private final uploadingImageCache:Lio/intercom/android/sdk/blocks/UploadingImageCache;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/blocks/UploadingImageCache;Lio/intercom/android/sdk/blocks/ImageClickListener;Lio/intercom/a/a/a/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/blocks/StyleType;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/blocks/UploadingImageCache;",
            "Lio/intercom/android/sdk/blocks/ImageClickListener;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/blocks/Image;-><init>(Lio/intercom/android/sdk/blocks/StyleType;)V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/NetworkImage;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/NetworkImage;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/NetworkImage;->uploadingImageCache:Lio/intercom/android/sdk/blocks/UploadingImageCache;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/NetworkImage;->listener:Lio/intercom/android/sdk/blocks/ImageClickListener;

    iput-object p5, p0, Lio/intercom/android/sdk/blocks/NetworkImage;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/blocks/NetworkImage;)Lio/intercom/android/sdk/twig/Twig;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/NetworkImage;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/blocks/NetworkImage;)Lio/intercom/android/sdk/blocks/ImageClickListener;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/NetworkImage;->listener:Lio/intercom/android/sdk/blocks/ImageClickListener;

    return-object v0
.end method

.method private loadImageFromUrl(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;IILio/intercom/android/sdk/views/ResizableImageView;Landroid/widget/ProgressBar;)V
    .locals 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p9

    move-object/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/blocks/NetworkImage;->hideLoadingState(Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    sget v3, Lio/intercom/android/sdk/R$drawable;->intercom_error:I

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/views/ResizableImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/NetworkImage;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v3, p1}, Lio/intercom/a/a/a/j;->eT(Ljava/lang/String;)Lio/intercom/a/a/a/i;

    move-result-object v4

    move/from16 v0, p6

    move/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {p0, v0, v1, v2, v4}, Lio/intercom/android/sdk/blocks/NetworkImage;->setImageViewBounds(IILio/intercom/android/sdk/views/ResizableImageView;Lio/intercom/a/a/a/i;)V

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/NetworkImage;->uploadingImageCache:Lio/intercom/android/sdk/blocks/UploadingImageCache;

    invoke-virtual {v3, p1}, Lio/intercom/android/sdk/blocks/UploadingImageCache;->getLocalImagePathForRemoteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v3, Lio/intercom/a/a/a/g/g;

    invoke-direct {v3}, Lio/intercom/a/a/a/g/g;-><init>()V

    new-instance v7, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;

    sget v8, Lio/intercom/android/sdk/R$dimen;->intercom_image_rounded_corners:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v7, v8}, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;-><init>(I)V

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    move-result-object v3

    sget v7, Lio/intercom/android/sdk/R$drawable;->intercom_error:I

    invoke-virtual {v3, v7}, Lio/intercom/a/a/a/g/g;->fo(I)Lio/intercom/a/a/a/g/g;

    move-result-object v3

    invoke-static {p1}, Lio/intercom/android/sdk/utilities/ImageUtils;->getDiskCacheStrategy(Ljava/lang/String;)Lio/intercom/a/a/a/c/b/i;

    move-result-object v7

    invoke-virtual {v3, v7}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {p0, v0, v1, v8}, Lio/intercom/android/sdk/blocks/NetworkImage;->getSampleSize(IILandroid/util/DisplayMetrics;)I

    move-result v8

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v5, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lio/intercom/android/sdk/utilities/ColorUtils;->newGreyscaleFilter()Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v3, v7}, Lio/intercom/a/a/a/g/g;->o(Landroid/graphics/drawable/Drawable;)Lio/intercom/a/a/a/g/g;

    move-result-object v3

    sget-object v5, Lio/intercom/a/a/a/c/d/e/i;->cOT:Lio/intercom/a/a/a/c/i;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/i;Ljava/lang/Object;)Lio/intercom/a/a/a/g/g;

    move-result-object v3

    :cond_1
    invoke-static/range {p3 .. p4}, Lio/intercom/a/a/a/i/i;->aR(II)Z

    move-result v5

    if-eqz v5, :cond_2

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Lio/intercom/a/a/a/g/g;->aO(II)Lio/intercom/a/a/a/g/g;

    move-result-object v3

    :cond_2
    invoke-virtual {v4, v3}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v3

    invoke-static {}, Lio/intercom/a/a/a/c/d/c/c;->Ji()Lio/intercom/a/a/a/c/d/c/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/k;)Lio/intercom/a/a/a/i;

    move-result-object v12

    new-instance v3, Lio/intercom/android/sdk/blocks/NetworkImage$1;

    move-object v4, p0

    move-object/from16 v5, p9

    move-object/from16 v6, p8

    move-object/from16 v7, p5

    move-object v8, p1

    move-object v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-direct/range {v3 .. v11}, Lio/intercom/android/sdk/blocks/NetworkImage$1;-><init>(Lio/intercom/android/sdk/blocks/NetworkImage;Landroid/widget/ProgressBar;Lio/intercom/android/sdk/views/ResizableImageView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v3, v12, Lio/intercom/a/a/a/i;->cGl:Lio/intercom/a/a/a/g/f;

    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Lio/intercom/a/a/a/i;->c(Landroid/widget/ImageView;)Lio/intercom/a/a/a/g/a/i;

    goto/16 :goto_0
.end method


# virtual methods
.method public addImage(Ljava/lang/String;Ljava/lang/String;IILio/intercom/android/sdk/blocks/BlockAlignment;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    invoke-virtual/range {p8 .. p8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    int-to-float v1, p3

    invoke-static {v1, v6}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v7

    move/from16 v0, p4

    int-to-float v1, v0

    invoke-static {v1, v6}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v8

    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-static {v11, v1, v2}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-static {v11}, Lio/intercom/android/sdk/utilities/BlockUtils;->setDefaultMarginBottom(Landroid/view/View;)V

    new-instance v9, Lio/intercom/android/sdk/views/ResizableImageView;

    invoke-direct {v9, v6}, Lio/intercom/android/sdk/views/ResizableImageView;-><init>(Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const-string v1, "lightbox_image"

    invoke-virtual {v9, v1}, Lio/intercom/android/sdk/views/ResizableImageView;->setTransitionName(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1}, Lio/intercom/android/sdk/views/ResizableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lio/intercom/android/sdk/views/ResizableImageView;->setAdjustViewBounds(Z)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v1}, Lio/intercom/android/sdk/views/ResizableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v9}, Lio/intercom/android/sdk/blocks/NetworkImage;->setBackground(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/NetworkImage;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v1}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v1}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v1

    new-instance v10, Landroid/widget/ProgressBar;

    invoke-direct {v10, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2, v6}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lio/intercom/android/sdk/R$drawable;->intercom_progress_wheel:I

    invoke-static {v6, v2}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v11, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v10}, Lio/intercom/android/sdk/blocks/NetworkImage;->loadImageFromUrl(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;IILio/intercom/android/sdk/views/ResizableImageView;Landroid/widget/ProgressBar;)V

    invoke-virtual/range {p5 .. p5}, Lio/intercom/android/sdk/blocks/BlockAlignment;->getGravity()I

    move-result v1

    move/from16 v0, p7

    invoke-static {v11, v1, v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    return-object v11
.end method

.method getSampleSize(IILandroid/util/DisplayMetrics;)I
    .locals 6

    const/4 v0, 0x1

    iget v1, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt p1, v1, :cond_0

    iget v1, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p2, v1, :cond_1

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :cond_1
    return v0
.end method

.method hideLoadingState(Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method
