.class public final Lio/intercom/a/a/a/c/d/a/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/d/a/k$a;
    }
.end annotation


# static fields
.field public static final cNP:Lio/intercom/a/a/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/i",
            "<",
            "Lio/intercom/a/a/a/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final cNQ:Lio/intercom/a/a/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/i",
            "<",
            "Lio/intercom/a/a/a/c/d/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final cNR:Lio/intercom/a/a/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/i",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final cNS:Lio/intercom/a/a/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/i",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final cNT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final cNU:Lio/intercom/a/a/a/c/d/a/k$a;

.field private static final cNV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lio/intercom/a/a/a/c/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final cNW:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cFr:Lio/intercom/a/a/a/c/b/a/e;

.field private final cID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final cIu:Lio/intercom/a/a/a/c/b/a/b;

.field private final cMd:Landroid/util/DisplayMetrics;

.field private final cNX:Lio/intercom/a/a/a/c/d/a/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "io.intercom.com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    sget-object v1, Lio/intercom/a/a/a/c/b;->cHL:Lio/intercom/a/a/a/c/b;

    invoke-static {v0, v1}, Lio/intercom/a/a/a/c/i;->n(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/a/a/a/c/i;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/k;->cNP:Lio/intercom/a/a/a/c/i;

    const-string v0, "io.intercom.com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    sget-object v1, Lio/intercom/a/a/a/c/d/a/j;->cNL:Lio/intercom/a/a/a/c/d/a/j;

    invoke-static {v0, v1}, Lio/intercom/a/a/a/c/i;->n(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/a/a/a/c/i;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/k;->cNQ:Lio/intercom/a/a/a/c/i;

    const-string v0, "io.intercom.com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/a/a/a/c/i;->n(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/a/a/a/c/i;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/k;->cNR:Lio/intercom/a/a/a/c/i;

    const-string v0, "com.bumtpech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/intercom/a/a/a/c/i;->n(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/a/a/a/c/i;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/k;->cNS:Lio/intercom/a/a/a/c/i;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "image/vnd.wap.wbmp"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "image/x-ico"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/k;->cNT:Ljava/util/Set;

    new-instance v0, Lio/intercom/a/a/a/c/d/a/k$1;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/d/a/k$1;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/d/a/k;->cNU:Lio/intercom/a/a/a/c/d/a/k$a;

    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHS:Lio/intercom/a/a/a/c/f$a;

    sget-object v1, Lio/intercom/a/a/a/c/f$a;->cHU:Lio/intercom/a/a/a/c/f$a;

    sget-object v2, Lio/intercom/a/a/a/c/f$a;->cHV:Lio/intercom/a/a/a/c/f$a;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/k;->cNV:Ljava/util/Set;

    invoke-static {v4}, Lio/intercom/a/a/a/i/i;->ft(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/k;->cNW:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lio/intercom/a/a/a/c/b/a/e;",
            "Lio/intercom/a/a/a/c/b/a/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/o;->Jd()Lio/intercom/a/a/a/c/d/a/o;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/k;->cNX:Lio/intercom/a/a/a/c/d/a/o;

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/a/k;->cID:Ljava/util/List;

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/k;->cMd:Landroid/util/DisplayMetrics;

    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a/e;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/k;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    const-string v0, "Argument must not be null"

    invoke-static {p4, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a/b;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/k;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    return-void
.end method

.method public static IZ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static Ja()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static declared-synchronized Jb()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    const-class v1, Lio/intercom/a/a/a/c/d/a/k;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lio/intercom/a/a/a/c/d/a/k;->cNW:Ljava/util/Queue;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lio/intercom/a/a/a/c/d/a/k;->cNW:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0}, Lio/intercom/a/a/a/c/d/a/k;->d(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lio/intercom/a/a/a/c/d/a/k$a;Lio/intercom/a/a/a/c/b/a/e;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, p2, p3}, Lio/intercom/a/a/a/c/d/a/k;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lio/intercom/a/a/a/c/d/a/k$a;Lio/intercom/a/a/a/c/b/a/e;)Landroid/graphics/Bitmap;

    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, v0, v3

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lio/intercom/a/a/a/c/d/a/k$a;Lio/intercom/a/a/a/c/b/a/e;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0xa00000

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    :goto_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/t;->Jh()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/t;->Jh()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-interface {p2}, Lio/intercom/a/a/a/c/d/a/k$a;->Jc()V

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception decoding bitmap, outWidth: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", outHeight: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outMimeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inBitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lio/intercom/a/a/a/c/d/a/k;->j(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Downsampler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Downsampler"

    const-string v1, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p3, v0}, Lio/intercom/a/a/a/c/b/a/e;->g(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1, p2, p3}, Lio/intercom/a/a/a/c/d/a/k;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lio/intercom/a/a/a/c/d/a/k$a;Lio/intercom/a/a/a/c/b/a/e;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/t;->Jh()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/t;->Jh()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 2

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(D)I
    .locals 6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v2, p0, v4

    if-gtz v2, :cond_0

    :goto_0
    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    div-double p0, v4, p0

    goto :goto_0
.end method

.method private static c(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2

    invoke-static {p0}, Lio/intercom/a/a/a/c/d/a/k;->d(Landroid/graphics/BitmapFactory$Options;)V

    sget-object v1, Lio/intercom/a/a/a/c/d/a/k;->cNW:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/a/a/a/c/d/a/k;->cNW:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static d(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method

.method private static j(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;IILio/intercom/a/a/a/c/j;Lio/intercom/a/a/a/c/d/a/k$a;)Lio/intercom/a/a/a/c/b/u;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lio/intercom/a/a/a/c/j;",
            "Lio/intercom/a/a/a/c/d/a/k$a;",
            ")",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    const-string v3, "You must provide an InputStream that supports mark()"

    invoke-static {v2, v3}, Lio/intercom/a/a/a/i/h;->b(ZLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/c/d/a/k;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    const/high16 v3, 0x10000

    const-class v4, [B

    invoke-interface {v2, v3, v4}, Lio/intercom/a/a/a/c/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/k;->Jb()Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    iput-object v2, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v3, Lio/intercom/a/a/a/c/d/a/k;->cNP:Lio/intercom/a/a/a/c/i;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/intercom/a/a/a/c/b;

    sget-object v4, Lio/intercom/a/a/a/c/d/a/k;->cNQ:Lio/intercom/a/a/a/c/i;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/intercom/a/a/a/c/d/a/j;

    sget-object v5, Lio/intercom/a/a/a/c/d/a/k;->cNR:Lio/intercom/a/a/a/c/i;

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    sget-object v5, Lio/intercom/a/a/a/c/d/a/k;->cNS:Lio/intercom/a/a/a/c/i;

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    sget-object v5, Lio/intercom/a/a/a/c/d/a/k;->cNS:Lio/intercom/a/a/a/c/i;

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    :goto_0
    sget-object v6, Lio/intercom/a/a/a/c/b;->cHJ:Lio/intercom/a/a/a/c/b;

    if-ne v3, v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    :try_start_0
    invoke-static {}, Lio/intercom/a/a/a/i/d;->JQ()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/intercom/a/a/a/c/d/a/k;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v14, v1, v6}, Lio/intercom/a/a/a/c/d/a/k;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lio/intercom/a/a/a/c/d/a/k$a;Lio/intercom/a/a/a/c/b/a/e;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v12, v6, v7

    const/4 v7, 0x1

    aget v11, v6, v7

    iget-object v0, v14, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v6, -0x1

    if-eq v12, v6, :cond_1

    const/4 v6, -0x1

    if-ne v11, v6, :cond_2d

    :cond_1
    const/4 v5, 0x0

    move v13, v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/intercom/a/a/a/c/d/a/k;->cID:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/intercom/a/a/a/c/d/a/k;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lio/intercom/a/a/a/c/g;->b(Ljava/util/List;Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lio/intercom/a/a/a/c/d/a/t;->fm(I)I

    move-result v5

    invoke-static/range {v19 .. v19}, Lio/intercom/a/a/a/c/d/a/t;->fn(I)Z

    move-result v20

    const/high16 v6, -0x80000000

    move/from16 v0, p2

    if-ne v0, v6, :cond_f

    move v8, v12

    :goto_2
    const/high16 v6, -0x80000000

    move/from16 v0, p3

    if-ne v0, v6, :cond_10

    move v7, v11

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/intercom/a/a/a/c/d/a/k;->cID:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lio/intercom/a/a/a/c/d/a/k;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    move-object/from16 v0, p1

    invoke-static {v6, v0, v9}, Lio/intercom/a/a/a/c/g;->a(Ljava/util/List;Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)Lio/intercom/a/a/a/c/f$a;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/intercom/a/a/a/c/d/a/k;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    if-lez v12, :cond_2

    if-gtz v11, :cond_11

    :cond_2
    const-string v4, "Downsampler"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Downsampler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to determine dimensions for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with target ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/c/d/a/k;->cNX:Lio/intercom/a/a/a/c/d/a/o;

    if-eqz v13, :cond_4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_4

    sget-object v5, Lio/intercom/a/a/a/c/b;->cHJ:Lio/intercom/a/a/a/c/b;

    if-eq v3, v5, :cond_4

    if-eqz v20, :cond_23

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_5
    if-nez v4, :cond_7

    sget-object v4, Lio/intercom/a/a/a/c/b;->cHI:Lio/intercom/a/a/a/c/b;

    if-eq v3, v4, :cond_6

    sget-object v4, Lio/intercom/a/a/a/c/b;->cHJ:Lio/intercom/a/a/a/c/b;

    if-eq v3, v4, :cond_6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_25

    :cond_6
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_7
    :goto_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_28

    const/4 v3, 0x1

    move v4, v3

    :goto_7
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_8

    if-eqz v4, :cond_b

    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_29

    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_b

    if-ltz v12, :cond_2a

    if-ltz v11, :cond_2a

    if-eqz v15, :cond_2a

    if-eqz v4, :cond_2a

    move v3, v7

    move v4, v8

    :cond_9
    :goto_9
    if-lez v4, :cond_b

    if-lez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/intercom/a/a/a/c/d/a/k;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_a

    iget-object v6, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v7, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v6, v7, :cond_b

    :cond_a
    iget-object v6, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-interface {v5, v4, v3, v6}, Lio/intercom/a/a/a/c/b/a/e;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v14, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/c/d/a/k;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v14, v1, v3}, Lio/intercom/a/a/a/c/d/a/k;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lio/intercom/a/a/a/c/d/a/k$a;Lio/intercom/a/a/a/c/b/a/e;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/c/d/a/k;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v4}, Lio/intercom/a/a/a/c/d/a/k$a;->a(Lio/intercom/a/a/a/c/b/a/e;Landroid/graphics/Bitmap;)V

    const-string v3, "Downsampler"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "Downsampler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Decoded "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lio/intercom/a/a/a/c/d/a/k;->j(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with inBitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v14, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lio/intercom/a/a/a/c/d/a/k;->j(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], sample size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v16 .. v17}, Lio/intercom/a/a/a/i/d;->V(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v3, 0x0

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/c/d/a/k;->cMd:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/c/d/a/k;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    move/from16 v0, v19

    invoke-static {v3, v4, v0}, Lio/intercom/a/a/a/c/d/a/t;->a(Lio/intercom/a/a/a/c/b/a/e;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/intercom/a/a/a/c/d/a/k;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-interface {v5, v4}, Lio/intercom/a/a/a/c/b/a/e;->g(Landroid/graphics/Bitmap;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/c/d/a/k;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-static {v3, v4}, Lio/intercom/a/a/a/c/d/a/d;->a(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/c/b/a/e;)Lio/intercom/a/a/a/c/d/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {v14}, Lio/intercom/a/a/a/c/d/a/k;->c(Landroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/c/d/a/k;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    invoke-interface {v4, v2}, Lio/intercom/a/a/a/c/b/a/b;->put(Ljava/lang/Object;)V

    return-object v3

    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_f
    move/from16 v8, p2

    goto/16 :goto_2

    :cond_10
    move/from16 v7, p3

    goto/16 :goto_3

    :cond_11
    const/16 v9, 0x5a

    if-eq v5, v9, :cond_12

    const/16 v9, 0x10e

    if-ne v5, v9, :cond_13

    :cond_12
    :try_start_1
    invoke-virtual {v4, v11, v12, v8, v7}, Lio/intercom/a/a/a/c/d/a/j;->l(IIII)F

    move-result v5

    move v10, v5

    :goto_a
    const/4 v5, 0x0

    cmpg-float v5, v10, v5

    if-gtz v5, :cond_14

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot scale with factor: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", source: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], target: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-static {v14}, Lio/intercom/a/a/a/c/d/a/k;->c(Landroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/c/d/a/k;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    invoke-interface {v4, v2}, Lio/intercom/a/a/a/c/b/a/b;->put(Ljava/lang/Object;)V

    throw v3

    :cond_13
    :try_start_2
    invoke-virtual {v4, v12, v11, v8, v7}, Lio/intercom/a/a/a/c/d/a/j;->l(IIII)F

    move-result v5

    move v10, v5

    goto :goto_a

    :cond_14
    invoke-virtual {v4}, Lio/intercom/a/a/a/c/d/a/j;->IY()I

    move-result v9

    if-nez v9, :cond_15

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot round with null rounding"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    int-to-float v5, v12

    mul-float/2addr v5, v10

    float-to-double v0, v5

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v5, v0

    int-to-float v0, v11

    move/from16 v22, v0

    mul-float v22, v22, v10

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    div-int v5, v12, v5

    div-int v22, v11, v22

    sget v23, Lio/intercom/a/a/a/c/d/a/j$g;->cNM:I

    move/from16 v0, v23

    if-ne v9, v0, :cond_18

    move/from16 v0, v22

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_b
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x17

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_19

    sget-object v22, Lio/intercom/a/a/a/c/d/a/k;->cNT:Ljava/util/Set;

    iget-object v0, v14, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    const/4 v5, 0x1

    move v9, v5

    :goto_c
    iput v9, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v5, Lio/intercom/a/a/a/c/f$a;->cHS:Lio/intercom/a/a/a/c/f$a;

    move-object/from16 v0, v21

    if-ne v0, v5, :cond_1a

    const/16 v5, 0x8

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v5, v12

    int-to-float v0, v6

    move/from16 v22, v0

    div-float v5, v5, v22

    float-to-double v0, v5

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v5, v0

    int-to-float v0, v11

    move/from16 v22, v0

    int-to-float v6, v6

    div-float v6, v22, v6

    float-to-double v0, v6

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v6, v0

    div-int/lit8 v22, v9, 0x8

    if-lez v22, :cond_16

    div-int v5, v5, v22

    div-int v6, v6, v22

    :cond_16
    :goto_d
    invoke-virtual {v4, v5, v6, v8, v7}, Lio/intercom/a/a/a/c/d/a/j;->l(IIII)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v22, v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v24

    if-lt v4, v0, :cond_17

    invoke-static/range {v22 .. v23}, Lio/intercom/a/a/a/c/d/a/k;->c(D)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v24, v0

    mul-double v24, v24, v22

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v4, v4

    div-float v4, v25, v4

    float-to-double v0, v4

    move-wide/from16 v26, v0

    div-double v26, v22, v26

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v4, v0

    iput v4, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-static/range {v22 .. v23}, Lio/intercom/a/a/a/c/d/a/k;->c(D)I

    move-result v4

    iput v4, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :cond_17
    invoke-static {v14}, Lio/intercom/a/a/a/c/d/a/k;->b(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    iput-boolean v4, v14, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :goto_e
    const-string v4, "Downsampler"

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Downsampler"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Calculate scaling, source: ["

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], target: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], power of two scaled: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v24, "x"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], exact scale factor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", power of 2 sample size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", adjusted scale factor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_18
    move/from16 v0, v22

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto/16 :goto_b

    :cond_19
    const/16 v22, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    move/from16 v0, v22

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sget v22, Lio/intercom/a/a/a/c/d/a/j$g;->cNM:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_2c

    int-to-float v9, v5

    const/high16 v22, 0x3f800000    # 1.0f

    div-float v22, v22, v10

    cmpg-float v9, v9, v22

    if-gez v9, :cond_2c

    shl-int/lit8 v5, v5, 0x1

    move v9, v5

    goto/16 :goto_c

    :cond_1a
    sget-object v5, Lio/intercom/a/a/a/c/f$a;->cHV:Lio/intercom/a/a/a/c/f$a;

    move-object/from16 v0, v21

    if-eq v0, v5, :cond_1b

    sget-object v5, Lio/intercom/a/a/a/c/f$a;->cHU:Lio/intercom/a/a/a/c/f$a;

    move-object/from16 v0, v21

    if-ne v0, v5, :cond_1c

    :cond_1b
    int-to-float v5, v12

    int-to-float v6, v9

    div-float/2addr v5, v6

    float-to-double v0, v5

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v5, v0

    int-to-float v6, v11

    int-to-float v0, v9

    move/from16 v22, v0

    div-float v6, v6, v22

    float-to-double v0, v6

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v6, v0

    goto/16 :goto_d

    :cond_1c
    sget-object v5, Lio/intercom/a/a/a/c/f$a;->cHX:Lio/intercom/a/a/a/c/f$a;

    move-object/from16 v0, v21

    if-eq v0, v5, :cond_1d

    sget-object v5, Lio/intercom/a/a/a/c/f$a;->cHW:Lio/intercom/a/a/a/c/f$a;

    move-object/from16 v0, v21

    if-ne v0, v5, :cond_1f

    :cond_1d
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1e

    int-to-float v5, v12

    int-to-float v6, v9

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v6, v11

    int-to-float v0, v9

    move/from16 v22, v0

    div-float v6, v6, v22

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    goto/16 :goto_d

    :cond_1e
    int-to-float v5, v12

    int-to-float v6, v9

    div-float/2addr v5, v6

    float-to-double v0, v5

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v5, v0

    int-to-float v6, v11

    int-to-float v0, v9

    move/from16 v22, v0

    div-float v6, v6, v22

    float-to-double v0, v6

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v6, v0

    goto/16 :goto_d

    :cond_1f
    rem-int v5, v12, v9

    if-nez v5, :cond_20

    rem-int v5, v11, v9

    if-eqz v5, :cond_21

    :cond_20
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v14, v1, v6}, Lio/intercom/a/a/a/c/d/a/k;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lio/intercom/a/a/a/c/d/a/k$a;Lio/intercom/a/a/a/c/b/a/e;)[I

    move-result-object v6

    const/4 v5, 0x0

    aget v5, v6, v5

    const/16 v22, 0x1

    aget v6, v6, v22

    goto/16 :goto_d

    :cond_21
    div-int v5, v12, v9

    div-int v6, v11, v9

    goto/16 :goto_d

    :cond_22
    const/4 v4, 0x0

    iput v4, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v4, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto/16 :goto_e

    :cond_23
    const/16 v5, 0x80

    if-lt v8, v5, :cond_24

    const/16 v5, 0x80

    if-lt v7, v5, :cond_24

    invoke-virtual {v4}, Lio/intercom/a/a/a/c/d/a/o;->Je()Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v4, 0x1

    :goto_f
    if-eqz v4, :cond_5

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v5, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    iput-boolean v5, v14, Landroid/graphics/BitmapFactory$Options;->inMutable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :cond_24
    const/4 v4, 0x0

    goto :goto_f

    :cond_25
    const/4 v5, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/c/d/a/k;->cID:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/intercom/a/a/a/c/d/a/k;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lio/intercom/a/a/a/c/g;->a(Ljava/util/List;Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)Lio/intercom/a/a/a/c/f$a;

    move-result-object v4

    iget-boolean v3, v4, Lio/intercom/a/a/a/c/f$a;->cHZ:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_10
    if-eqz v3, :cond_27

    :try_start_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_11
    iput-object v3, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v3, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto/16 :goto_6

    :catch_0
    move-exception v4

    const-string v6, "Downsampler"

    const/4 v9, 0x3

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "Downsampler"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    move v3, v5

    goto :goto_10

    :cond_27
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_11

    :cond_28
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_7

    :cond_29
    sget-object v3, Lio/intercom/a/a/a/c/d/a/k;->cNV:Ljava/util/Set;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_8

    :cond_2a
    invoke-static {v14}, Lio/intercom/a/a/a/c/d/a/k;->b(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    move v5, v3

    :goto_12
    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v12

    int-to-float v4, v6

    div-float/2addr v3, v4

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    int-to-float v4, v11

    int-to-float v7, v6

    div-float/2addr v4, v7

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v3, v7

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const-string v7, "Downsampler"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "Downsampler"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Calculated target ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] for source ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], sampleSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", targetDensity: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", density: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", density multiplier: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_9

    :cond_2b
    const/high16 v3, 0x3f800000    # 1.0f

    move v5, v3

    goto/16 :goto_12

    :cond_2c
    move v9, v5

    goto/16 :goto_c

    :cond_2d
    move v13, v5

    goto/16 :goto_1
.end method
