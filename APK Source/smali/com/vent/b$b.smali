.class final Lcom/vent/b$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final bUM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/b;",
            ">;"
        }
    .end annotation
.end field

.field bUN:Ljava/io/File;

.field final bUO:Landroid/support/v7/app/c;

.field bUP:Ljava/lang/Exception;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vent/b;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/b$b;->bUM:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/vent/b$b;->bUN:Ljava/io/File;

    const v0, 0x7f0f015a

    invoke-static {p1, v0}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/b$b;->bUO:Landroid/support/v7/app/c;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vent/ae;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private varargs Bq()Ljava/lang/Void;
    .locals 14

    const/16 v13, 0x10

    const/4 v7, 0x0

    const/16 v12, 0x640

    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v0, p0, Lcom/vent/b$b;->bUN:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v8, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/b$b;->bUN:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v4, 0x200000

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    move v1, v10

    :goto_0
    new-instance v0, Landroid/support/d/a;

    iget-object v3, p0, Lcom/vent/b$b;->bUN:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/support/d/a;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    invoke-virtual {v0, v3}, Landroid/support/d/a;->s(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, v12, :cond_0

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, v12, :cond_9

    :cond_0
    move v0, v10

    :goto_2
    if-nez v1, :cond_1

    if-eqz v0, :cond_6

    :cond_1
    :goto_3
    :try_start_1
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v0, v1

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v4

    if-gt v0, v12, :cond_2

    if-le v1, v12, :cond_4

    :cond_2
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v6, v4

    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v11, v4

    if-le v6, v12, :cond_3

    if-gt v11, v12, :cond_a

    :cond_3
    mul-int/2addr v6, v11

    const v11, 0x271000

    sub-int/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/2addr v0, v1

    const v1, 0x271000

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v6, v0, :cond_4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, p0, Lcom/vent/b$b;->bUN:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    packed-switch v3, :pswitch_data_1

    :cond_5
    :pswitch_1
    move-object v3, v0

    :goto_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "image/jpeg"

    invoke-static {v3}, Lcom/vent/b;->e(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "image/png"

    move-object v2, v0

    :goto_5
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/vent/b;->bUJ:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0x4b

    :try_start_2
    invoke-virtual {v3, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-eqz v2, :cond_e

    :try_start_3
    sget-object v2, Lcom/vent/b;->bUJ:Ljava/io/File;

    iput-object v2, p0, Lcom/vent/b$b;->bUN:Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    move-object v8, v1

    :goto_7
    :try_start_4
    invoke-static {v0}, Lcom/vent/d/c;->c(Ljava/io/Closeable;)V

    :cond_6
    move-object v0, v8

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_7
    :goto_8
    packed-switch v1, :pswitch_data_2

    move-object v1, v0

    move-object v2, v7

    :goto_9
    const/16 v0, 0x10

    new-array v3, v0, [B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "PCDS3Uploads/"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/vent/bb;->chQ:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v9

    :goto_a
    if-ge v0, v13, :cond_b

    aget-byte v5, v3, v0

    invoke-static {v5}, Lcom/vent/d/e;->eU(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_8
    move v1, v9

    goto/16 :goto_0

    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/vent/b$b;->bUP:Ljava/lang/Exception;

    :goto_b
    return-object v7

    :pswitch_3
    const/high16 v0, 0x43340000    # 180.0f

    :try_start_5
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/16 :goto_1

    :pswitch_4
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_9
    move v0, v9

    goto/16 :goto_2

    :cond_a
    :try_start_6
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v0, v7

    goto :goto_7

    :pswitch_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v3, v1

    goto/16 :goto_4

    :sswitch_0
    :try_start_7
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v9

    goto/16 :goto_8

    :sswitch_1
    const-string v2, "image/pjpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v10

    goto/16 :goto_8

    :sswitch_2
    const-string v2, "image/png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x2

    goto/16 :goto_8

    :sswitch_3
    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x3

    goto/16 :goto_8

    :sswitch_4
    const-string v2, "image/webp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x4

    goto/16 :goto_8

    :pswitch_6
    const-string v2, ".jpg"

    move-object v1, v0

    goto/16 :goto_9

    :pswitch_7
    const-string v2, ".png"

    move-object v1, v0

    goto/16 :goto_9

    :pswitch_8
    const-string v2, ".gif"

    move-object v1, v0

    goto/16 :goto_9

    :pswitch_9
    const-string v2, ".webp"

    move-object v1, v0

    goto/16 :goto_9

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/amazonaws/auth/BasicAWSCredentials;

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v3, "NXVNVRHOVIHIMIF57WDD"

    invoke-static {v3}, Lcom/vent/d/c;->eo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v4, "nx02Wnc0DwAKiJ3Mz16pZZJSYxmmaE57RAnb3EQy"

    invoke-static {v4}, Lcom/vent/d/c;->eo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/auth/BasicAWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v3}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    const v4, 0xea60

    iput v4, v3, Lcom/amazonaws/ClientConfiguration;->ams:I

    new-instance v4, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-direct {v4, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    invoke-static {}, Lcom/vent/bb;->Es()Z

    sget-object v2, Lcom/vent/b;->bUD:Lcom/amazonaws/regions/Regions;

    invoke-static {v2}, Lcom/amazonaws/regions/Region;->a(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/regions/Region;)V

    new-instance v2, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v3, "api-vent-production"

    iget-object v5, p0, Lcom/vent/b$b;->bUN:Ljava/io/File;

    invoke-direct {v2, v3, v0, v5}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    sget-object v3, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->arb:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    iput-object v3, v2, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ass:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    if-eqz v1, :cond_d

    new-instance v3, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    invoke-virtual {v3, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asr:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    :cond_d
    invoke-virtual {v4, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v1, "api-vent-production"

    invoke-virtual {v4, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/b$b;->url:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_b

    :catch_2
    move-exception v1

    goto/16 :goto_7

    :catch_3
    move-exception v2

    move-object v8, v1

    goto/16 :goto_7

    :cond_e
    move-object v1, v8

    goto/16 :goto_6

    :cond_f
    move-object v2, v0

    goto/16 :goto_5

    :cond_10
    move-object v0, v7

    move-object v1, v8

    goto/16 :goto_6

    :cond_11
    move-object v1, v7

    move-object v2, v7

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x58a7d764 -> :sswitch_0
        -0x58a21830 -> :sswitch_4
        -0x34688ef0 -> :sswitch_3
        -0x34686c8b -> :sswitch_2
        0x43fee724 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/vent/b$b;->Bq()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/vent/b$b;->bUO:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget-object v0, p0, Lcom/vent/b$b;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/b;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/vent/b$b;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    const v1, 0x7f0f006b

    invoke-virtual {v0, v1}, Lcom/vent/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/b$b;->bUP:Ljava/lang/Exception;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/b$b;->bUP:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/b$b;->bUP:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_1
    iget-object v1, p0, Lcom/vent/b$b;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vent/b;->dS(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
