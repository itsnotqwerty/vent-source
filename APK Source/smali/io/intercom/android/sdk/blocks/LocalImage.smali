.class Lio/intercom/android/sdk/blocks/LocalImage;
.super Lio/intercom/android/sdk/blocks/Image;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/LocalImageBlock;


# instance fields
.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/a/a/a/j;)V
    .locals 1

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/blocks/Image;-><init>(Lio/intercom/android/sdk/blocks/StyleType;)V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/LocalImage;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/LocalImage;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/blocks/LocalImage;)Lio/intercom/android/sdk/twig/Twig;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LocalImage;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-object v0
.end method


# virtual methods
.method public addImage(Ljava/lang/String;IILio/intercom/android/sdk/blocks/BlockAlignment;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-virtual {p7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, p2

    invoke-static {v1, v0}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    int-to-float v2, p3

    invoke-static {v2, v0}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v2

    new-instance v3, Lio/intercom/android/sdk/views/ProgressFrameLayout;

    invoke-direct {v3, v0}, Lio/intercom/android/sdk/views/ProgressFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-static {v3}, Lio/intercom/android/sdk/utilities/BlockUtils;->setDefaultMarginBottom(Landroid/view/View;)V

    new-instance v4, Lio/intercom/android/sdk/views/ResizableImageView;

    invoke-direct {v4, v0}, Lio/intercom/android/sdk/views/ResizableImageView;-><init>(Landroid/content/Context;)V

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lio/intercom/android/sdk/views/ResizableImageView;->setAdjustViewBounds(Z)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Lio/intercom/android/sdk/views/ResizableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v3, v4}, Lio/intercom/android/sdk/views/ProgressFrameLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lio/intercom/android/sdk/blocks/LocalImage;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v5, p1}, Lio/intercom/a/a/a/j;->eT(Ljava/lang/String;)Lio/intercom/a/a/a/i;

    move-result-object v5

    invoke-virtual {p0, v1, v2, v4, v5}, Lio/intercom/android/sdk/blocks/LocalImage;->setImageViewBounds(IILio/intercom/android/sdk/views/ResizableImageView;Lio/intercom/a/a/a/i;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lio/intercom/android/sdk/views/ProgressFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v2, v1, Lio/intercom/android/sdk/views/UploadProgressBar;

    if-eqz v2, :cond_0

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_local_image_upload_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v6, v2, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    invoke-virtual {v3}, Lio/intercom/android/sdk/views/ProgressFrameLayout;->uploadStarted()V

    :cond_0
    invoke-virtual {p0, v4}, Lio/intercom/android/sdk/blocks/LocalImage;->setBackground(Landroid/widget/ImageView;)V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v2}, Lio/intercom/android/sdk/views/ResizableImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v1, Lio/intercom/a/a/a/g/g;

    invoke-direct {v1}, Lio/intercom/a/a/a/g/g;-><init>()V

    new-instance v2, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;

    sget v6, Lio/intercom/android/sdk/R$dimen;->intercom_image_rounded_corners:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v2, v0}, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-static {p1}, Lio/intercom/android/sdk/utilities/ImageUtils;->getDiskCacheStrategy(Ljava/lang/String;)Lio/intercom/a/a/a/c/b/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-virtual {v5, v0}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v0

    invoke-static {}, Lio/intercom/a/a/a/c/d/c/c;->Ji()Lio/intercom/a/a/a/c/d/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/k;)Lio/intercom/a/a/a/i;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/blocks/LocalImage$1;

    invoke-direct {v1, p0, v4}, Lio/intercom/android/sdk/blocks/LocalImage$1;-><init>(Lio/intercom/android/sdk/blocks/LocalImage;Lio/intercom/android/sdk/views/ResizableImageView;)V

    iput-object v1, v0, Lio/intercom/a/a/a/i;->cGl:Lio/intercom/a/a/a/g/f;

    invoke-virtual {v0, v4}, Lio/intercom/a/a/a/i;->c(Landroid/widget/ImageView;)Lio/intercom/a/a/a/g/a/i;

    invoke-virtual {p4}, Lio/intercom/android/sdk/blocks/BlockAlignment;->getGravity()I

    move-result v0

    invoke-static {v3, v0, p6}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    return-object v3
.end method
