.class public Lcom/theartofdev/edmodo/cropper/CropImageActivity;
.super Landroid/support/v7/app/d;

# interfaces
.implements Lcom/theartofdev/edmodo/cropper/CropImageView$d;
.implements Lcom/theartofdev/edmodo/cropper/CropImageView$h;


# instance fields
.field private bPR:Lcom/theartofdev/edmodo/cropper/f;

.field private bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

.field private bPT:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/d;-><init>()V

    return-void
.end method

.method private AG()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQJ:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v1, :cond_2

    const-string v0, ".jpg"

    :goto_0
    const-string v1, "cropped"

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQJ:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v1, :cond_3

    const-string v0, ".png"

    goto :goto_0

    :cond_3
    const-string v0, ".webp"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create temp file for output image"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private AH()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->finish()V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/Exception;I)V
    .locals 10

    if-nez p2, :cond_0

    const/4 v0, -0x1

    move v9, v0

    :goto_0
    new-instance v0, Lcom/theartofdev/edmodo/cropper/d$b;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v4

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getRotatedDegrees()I

    move-result v6

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/d$b;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v2, "CROP_IMAGE_EXTRA_RESULT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v9, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->finish()V

    return-void

    :cond_0
    const/16 v0, 0xcc

    move v9, v0

    goto :goto_0
.end method

.method private static a(Landroid/view/Menu;II)V
    .locals 3

    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AIC"

    const-string v2, "Failed to update menu item color"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private ef(I)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->ef(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/theartofdev/edmodo/cropper/CropImageView$a;)V
    .locals 3

    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->DD:Landroid/net/Uri;

    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bRI:Ljava/lang/Exception;

    iget v2, p1, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bRM:I

    invoke-direct {p0, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->a(Landroid/net/Uri;Ljava/lang/Exception;I)V

    return-void
.end method

.method public final g(Ljava/lang/Exception;)V
    .locals 2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQP:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v1, v1, Lcom/theartofdev/edmodo/cropper/f;->bQP:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setCropRect(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQQ:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/f;->bQQ:I

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setRotatedDegrees(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->a(Landroid/net/Uri;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->AH()V

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_1
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/d;->aD(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPT:Landroid/net/Uri;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPT:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/theartofdev/edmodo/cropper/d;->e(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const/16 v1, 0xc9

    invoke-virtual {p0, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPT:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/d;->onBackPressed()V

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->AH()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/theartofdev/edmodo/cropper/i$b;->crop_image_activity:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setContentView(I)V

    sget v0, Lcom/theartofdev/edmodo/cropper/i$a;->cropImageView:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropImageView;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "CROP_IMAGE_EXTRA_SOURCE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPT:Landroid/net/Uri;

    const-string v0, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/f;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPT:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPT:Landroid/net/Uri;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/d;->aC(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    const/16 v1, 0x7db

    invoke-virtual {p0, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQG:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQG:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQG:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/d;->k(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPT:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/theartofdev/edmodo/cropper/d;->e(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const/16 v1, 0xc9

    invoke-virtual {p0, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPT:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/theartofdev/edmodo/cropper/i$d;->crop_image_activity_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/theartofdev/edmodo/cropper/i$c;->crop_image_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQR:Z

    if-nez v0, :cond_5

    sget v0, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_rotate_left:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    sget v0, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_rotate_right:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQS:Z

    if-nez v0, :cond_1

    sget v0, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_flip:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQX:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    sget v0, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v1, v1, Lcom/theartofdev/edmodo/cropper/f;->bQX:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/f;->bQY:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/f;->bQY:I

    invoke-static {p0, v1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_crop:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/f;->bQH:I

    if-eqz v1, :cond_4

    sget v1, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_rotate_left:I

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/f;->bQH:I

    invoke-static {p1, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->a(Landroid/view/Menu;II)V

    sget v1, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_rotate_right:I

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/f;->bQH:I

    invoke-static {p1, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->a(Landroid/view/Menu;II)V

    sget v1, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_flip:I

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/f;->bQH:I

    invoke-static {p1, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->a(Landroid/view/Menu;II)V

    if-eqz v0, :cond_4

    sget v0, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_crop:I

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/f;->bQH:I

    invoke-static {p1, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->a(Landroid/view/Menu;II)V

    :cond_4
    return v4

    :cond_5
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQT:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_rotate_left:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AIC"

    const-string v3, "Failed to read menu crop drawable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_crop:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQO:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3, v3, v7}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->a(Landroid/net/Uri;Ljava/lang/Exception;I)V

    :goto_0
    return v7

    :cond_0
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->AG()Landroid/net/Uri;

    move-result-object v4

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v5, v1, Lcom/theartofdev/edmodo/cropper/f;->bQJ:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v6, v1, Lcom/theartofdev/edmodo/cropper/f;->bQK:I

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/f;->bQL:I

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/f;->bQM:I

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v3, v3, Lcom/theartofdev/edmodo/cropper/f;->bQN:I

    iget-object v8, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRt:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    if-nez v8, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mOnCropImageCompleteListener is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(IIILandroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_rotate_left:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQU:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->ef(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_rotate_right:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/f;->bQU:I

    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->ef(I)V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_flip_horizontally:I

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-boolean v0, v2, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    if-nez v0, :cond_5

    move v0, v7

    :goto_1
    iput-boolean v0, v2, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPy:Z

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3, v7, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/theartofdev/edmodo/cropper/i$a;->crop_image_menu_flip_vertically:I

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-boolean v0, v2, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    if-nez v0, :cond_7

    move v0, v7

    :goto_2
    iput-boolean v0, v2, Lcom/theartofdev/edmodo/cropper/CropImageView;->bPz:Z

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3, v7, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->AH()V

    goto/16 :goto_0

    :cond_9
    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto/16 :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPT:Landroid/net/Uri;

    if-eqz v0, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPT:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_0
    :goto_0
    const/16 v0, 0x7db

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/d;->k(Landroid/app/Activity;)V

    :cond_1
    return-void

    :cond_2
    sget v0, Lcom/theartofdev/edmodo/cropper/i$d;->crop_image_activity_no_permissions:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->AH()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/d;->onStart()V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$h;)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$d;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/v7/app/d;->onStop()V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$h;)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->bPS:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$d;)V

    return-void
.end method
