.class final Lcom/vent/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b;->Bi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUK:Lcom/vent/b;


# direct methods
.method constructor <init>(Lcom/vent/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b$4;->bUK:Lcom/vent/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vent/b$4;->bUK:Lcom/vent/b;

    iget-object v2, v2, Lcom/vent/b;->bUG:Ljava/io/File;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v2, p0, Lcom/vent/b$4;->bUK:Lcom/vent/b;

    iget-object v2, v2, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v2, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v4, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    :cond_2
    move v0, v1

    :pswitch_0
    iget-object v2, p0, Lcom/vent/b$4;->bUK:Lcom/vent/b;

    iget-object v2, v2, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Lcom/theartofdev/edmodo/cropper/d$a;

    invoke-direct {v4, v2, v1}, Lcom/theartofdev/edmodo/cropper/d$a;-><init>(Landroid/net/Uri;B)V

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->bRN:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    iget-object v2, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iput-object v1, v2, Lcom/theartofdev/edmodo/cropper/f;->bQe:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_2
    iget-object v1, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iput-object v0, v1, Lcom/theartofdev/edmodo/cropper/f;->bQJ:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v0, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    const/16 v1, 0x4b

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/f;->bQK:I

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->bSa:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    iget-object v1, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iput-object v0, v1, Lcom/theartofdev/edmodo/cropper/f;->bQi:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    iget-object v0, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    const/4 v1, 0x0

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/f;->bQo:F

    iget-object v0, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    const v1, -0x7f7f80

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/f;->bQz:I

    iget-object v0, p0, Lcom/vent/b$4;->bUK:Lcom/vent/b;

    invoke-virtual {v0}, Lcom/vent/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iput v0, v1, Lcom/theartofdev/edmodo/cropper/f;->bQt:I

    iget-object v0, p0, Lcom/vent/b$4;->bUK:Lcom/vent/b;

    invoke-virtual {v0}, Lcom/vent/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iput v0, v1, Lcom/theartofdev/edmodo/cropper/f;->bQx:I

    iget-object v0, p0, Lcom/vent/b$4;->bUK:Lcom/vent/b;

    iget-boolean v0, v0, Lcom/vent/b;->bQp:Z

    if-eqz v0, :cond_3

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    new-instance v3, Landroid/graphics/Rect;

    add-int v5, v1, v0

    add-int/2addr v0, v2

    invoke-direct {v3, v1, v2, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    iput-object v3, v0, Lcom/theartofdev/edmodo/cropper/f;->bQP:Landroid/graphics/Rect;

    :cond_3
    iget-object v0, p0, Lcom/vent/b$4;->bUK:Lcom/vent/b;

    iget-object v1, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/f;->ak()V

    const-class v1, Lcom/theartofdev/edmodo/cropper/CropImageActivity;

    iget-object v2, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/f;->ak()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "CROP_IMAGE_EXTRA_SOURCE"

    iget-object v5, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPQ:Landroid/net/Uri;

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "CROP_IMAGE_EXTRA_OPTIONS"

    iget-object v4, v4, Lcom/theartofdev/edmodo/cropper/d$a;->bPR:Lcom/theartofdev/edmodo/cropper/f;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0xcb

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "image/png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "image/gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v0

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "image/webp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto/16 :goto_1

    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x58a21830 -> :sswitch_2
        -0x34688ef0 -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
