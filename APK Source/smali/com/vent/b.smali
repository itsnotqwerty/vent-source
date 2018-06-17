.class public abstract Lcom/vent/b;
.super Lcom/vent/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/b$b;,
        Lcom/vent/b$a;
    }
.end annotation


# static fields
.field protected static final bUD:Lcom/amazonaws/regions/Regions;

.field protected static final bUE:Lcom/amazonaws/regions/Regions;

.field protected static bUJ:Ljava/io/File;


# instance fields
.field protected bQp:Z

.field bUF:Lcom/vent/CachedImageView;

.field bUG:Ljava/io/File;

.field private final bUH:Ljava/lang/String;

.field private final bUI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amazonaws/regions/Regions;->apa:Lcom/amazonaws/regions/Regions;

    sput-object v0, Lcom/vent/b;->bUD:Lcom/amazonaws/regions/Regions;

    sget-object v0, Lcom/amazonaws/regions/Regions;->apa:Lcom/amazonaws/regions/Regions;

    sput-object v0, Lcom/vent/b;->bUE:Lcom/amazonaws/regions/Regions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    const-string v0, "profilepic_download.tmp"

    iput-object v0, p0, Lcom/vent/b;->bUH:Ljava/lang/String;

    const-string v0, "profilepic_rescale.tmp"

    iput-object v0, p0, Lcom/vent/b;->bUI:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/app/Activity;Ljava/io/File;)Z
    .locals 10

    const/4 v9, 0x0

    const v8, 0x104000a

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    invoke-static {p0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0092

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0xa00000

    cmp-long v3, v4, v6

    if-gtz v3, :cond_4

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v4, "image/jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v4, "image/pjpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v4, "image/png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v4, "image/gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v3, "image/webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    invoke-static {p0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f00d8

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method static e(Landroid/graphics/Bitmap;)Z
    .locals 9

    const/16 v8, 0xff

    const/16 v7, 0x14

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    if-eq v6, v8, :cond_1

    :cond_0
    :goto_2
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v1

    :goto_3
    if-ge v3, v4, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :goto_4
    if-ge v2, v5, :cond_4

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v3, v2

    :goto_5
    if-ge v3, v4, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :goto_6
    if-ge v2, v5, :cond_6

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v3, v2

    :goto_7
    if-ge v3, v4, :cond_9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v1

    :goto_8
    if-ge v2, v5, :cond_8

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    :cond_9
    move v0, v1

    goto/16 :goto_2
.end method

.method private f(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x3

    const-string v0, "com.vent.fileprovider"

    iget-object v1, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-static {p0, v0, v1}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "output"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vent/b;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/vent/b;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vent/b;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v3}, Lcom/vent/b;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method Bi()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/vent/b;->a(Landroid/app/Activity;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/b;->Bo()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v0, v2}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/ae;->dW(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v1, v0}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setCancelable(Z)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f00c4

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0176

    new-instance v2, Lcom/vent/b$4;

    invoke-direct {v2, p0}, Lcom/vent/b$4;-><init>(Lcom/vent/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    goto :goto_0
.end method

.method final Bl()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final Bm()V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/vent/b;->Bo()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    const v0, 0x7f0f0067

    invoke-virtual {p0, v0}, Lcom/vent/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v3, "Vent"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    const v0, 0x7f0f006a

    invoke-virtual {p0, v0}, Lcom/vent/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMG_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/vent/b;->f(Landroid/content/Intent;)V

    const/16 v1, 0x12

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/vent/b;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00c6

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto/16 :goto_0
.end method

.method final Bn()V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/b;->Bo()V

    invoke-virtual {p0}, Lcom/vent/b;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "GalleryTemp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0f006a

    invoke-virtual {p0, v0}, Lcom/vent/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v2, "profilepic_gallery.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/vent/b;->f(Landroid/content/Intent;)V

    const/16 v1, 0x13

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/vent/b;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00c9

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method final Bo()V
    .locals 1

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    :cond_0
    return-void
.end method

.method final Bp()V
    .locals 2

    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    new-instance v0, Lcom/vent/b$b;

    iget-object v1, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcom/vent/b$b;-><init>(Lcom/vent/b;Ljava/io/File;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void
.end method

.method final aU(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vent/b;->bQp:Z

    invoke-static {p0}, Lcom/vent/b$a;->a(Landroid/support/v7/app/d;)V

    return-void
.end method

.method b(IILandroid/content/Intent;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->b(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eq p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/b;->Bo()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x13

    if-ne p1, v0, :cond_2

    const v0, 0x7f0f00e1

    invoke-static {p0, v0}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    new-instance v1, Lcom/vent/b$3;

    invoke-direct {v1, p0, p3, v0}, Lcom/vent/b$3;-><init>(Lcom/vent/b;Landroid/content/Intent;Landroid/support/v7/app/c;)V

    invoke-static {v1}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p0, v0, v1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    invoke-virtual {p0}, Lcom/vent/b;->Bi()V

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    goto :goto_1

    :sswitch_1
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_5

    const-string v0, "CROP_IMAGE_EXTRA_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/d$b;

    :goto_2
    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bRI:Ljava/lang/Exception;

    if-nez v4, :cond_6

    :goto_3
    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->DD:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vent/b;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;

    const-string v4, "profilepic_download.tmp"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    iget-object v2, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/ae;->dW(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v1, v0}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0xcb -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract dS(Ljava/lang/String;)V
.end method

.method final init()V
    .locals 3

    const v0, 0x7f090232

    invoke-virtual {p0, v0}, Lcom/vent/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/CachedImageView;

    iput-object v0, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    iget-object v0, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    iget-object v0, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    sget v1, Lcom/vent/MyApplication;->cgo:I

    sget v2, Lcom/vent/MyApplication;->cgo:I

    invoke-virtual {v0, v1, v2}, Lcom/vent/CachedImageView;->aH(II)V

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    new-instance v1, Lcom/vent/b$1;

    invoke-direct {v1, p0}, Lcom/vent/b$1;-><init>(Lcom/vent/b;)V

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090233

    invoke-virtual {p0, v0}, Lcom/vent/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vent/b$2;

    invoke-direct {v1, p0}, Lcom/vent/b$2;-><init>(Lcom/vent/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    sget v2, Lcom/vent/MyApplication;->cgo:I

    invoke-virtual {v0, v2}, Lcom/vent/a/y;->eL(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :sswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vent/b;->a(IILandroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0xcb -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/vent/b;->bUJ:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vent/b;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "profilepic_rescale.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/vent/b;->bUJ:Ljava/io/File;

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "cameraFile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    :cond_1
    const-string v0, "fixAspectRatio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/b;->bQp:Z

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/vent/b;->Bo()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/b;->bUF:Lcom/vent/CachedImageView;

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    packed-switch p1, :pswitch_data_1

    :goto_0
    return-void

    :pswitch_0
    array-length v2, p3

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget v3, p3, v0

    if-eqz v3, :cond_1

    const v0, 0x7f0f00dd

    invoke-virtual {p0, v0}, Lcom/vent/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/vent/b;->Bn()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/vent/b;->Bm()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "cameraFile"

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/b;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fixAspectRatio"

    iget-boolean v1, p0, Lcom/vent/b;->bQp:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
