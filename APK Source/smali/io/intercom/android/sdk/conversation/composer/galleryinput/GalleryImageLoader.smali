.class Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/composer/e;


# static fields
.field private static final GIF_SIZE_MULTIPLIER:F = 0.5f


# instance fields
.field private final diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final transformation:Lio/intercom/a/a/a/c/d/a/e;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/i;Lio/intercom/a/a/a/c/d/a/e;Lio/intercom/a/a/a/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->transformation:Lio/intercom/a/a/a/c/d/a/e;

    iput-object p3, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->logErrorMessageForUrl(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static create(Lio/intercom/a/a/a/c/b/i;Lio/intercom/a/a/a/c/d/a/e;Lio/intercom/a/a/a/j;)Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;-><init>(Lio/intercom/a/a/a/c/b/i;Lio/intercom/a/a/a/c/d/a/e;Lio/intercom/a/a/a/j;)V

    return-object v0
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logErrorMessageForUrl(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load image for URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no error message, data probably failed to decode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear(Landroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->requestManager:Lio/intercom/a/a/a/j;

    new-instance v1, Lio/intercom/a/a/a/j$a;

    invoke-direct {v1, p1}, Lio/intercom/a/a/a/j$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/j;->b(Lio/intercom/a/a/a/g/a/h;)V

    return-void
.end method

.method public getBitmapFromView(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public loadImageIntoView(Lcom/intercom/input/gallery/b;Landroid/widget/ImageView;)V
    .locals 5

    iget-object v0, p1, Lcom/intercom/input/gallery/b;->bme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/intercom/input/gallery/b;->path:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lio/intercom/a/a/a/g/g;

    invoke-direct {v2}, Lio/intercom/a/a/a/g/g;-><init>()V

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    invoke-virtual {v2, v3}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lio/intercom/android/sdk/R$color;->intercom_search_bg_grey:I

    invoke-static {v1, v4}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lio/intercom/a/a/a/g/g;->o(Landroid/graphics/drawable/Drawable;)Lio/intercom/a/a/a/g/g;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->transformation:Lio/intercom/a/a/a/c/d/a/e;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->transformation:Lio/intercom/a/a/a/c/d/a/e;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v2, v0}, Lio/intercom/a/a/a/j;->eT(Ljava/lang/String;)Lio/intercom/a/a/a/i;

    move-result-object v2

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ImageUtils;->isGif(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Lio/intercom/a/a/a/g/g;->C(F)Lio/intercom/a/a/a/g/g;

    move-result-object v1

    sget-object v3, Lio/intercom/a/a/a/c/b;->cHK:Lio/intercom/a/a/a/c/b;

    const-string v4, "Argument must not be null"

    invoke-static {v3, v4}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v4, Lio/intercom/a/a/a/c/d/a/k;->cNP:Lio/intercom/a/a/a/c/i;

    invoke-virtual {v1, v4, v3}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/i;Ljava/lang/Object;)Lio/intercom/a/a/a/g/g;

    move-result-object v1

    sget-object v4, Lio/intercom/a/a/a/c/d/e/i;->cNP:Lio/intercom/a/a/a/c/i;

    invoke-virtual {v1, v4, v3}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/i;Ljava/lang/Object;)Lio/intercom/a/a/a/g/g;

    move-result-object v1

    :cond_1
    invoke-virtual {v2, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v1

    invoke-static {}, Lio/intercom/a/a/a/c/d/c/c;->Ji()Lio/intercom/a/a/a/c/d/c/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/k;)Lio/intercom/a/a/a/i;

    move-result-object v1

    new-instance v2, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader$1;

    invoke-direct {v2, p0, v0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader$1;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;Ljava/lang/String;)V

    iput-object v2, v1, Lio/intercom/a/a/a/i;->cGl:Lio/intercom/a/a/a/g/f;

    invoke-virtual {v1, p2}, Lio/intercom/a/a/a/i;->c(Landroid/widget/ImageView;)Lio/intercom/a/a/a/g/a/i;

    return-void

    :cond_2
    iget-object v0, p1, Lcom/intercom/input/gallery/b;->bme:Ljava/lang/String;

    goto :goto_0
.end method
