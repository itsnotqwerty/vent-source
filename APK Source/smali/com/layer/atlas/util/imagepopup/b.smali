.class public final Lcom/layer/atlas/util/imagepopup/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/davemorrissey/labs/subscaleview/a/d;


# static fields
.field private static bpt:Lcom/layer/sdk/LayerClient;


# instance fields
.field private bpw:Landroid/graphics/BitmapRegionDecoder;

.field private bpx:Lcom/layer/sdk/messaging/MessagePart;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/util/imagepopup/b;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static b(Lcom/layer/sdk/LayerClient;)V
    .locals 0

    sput-object p0, Lcom/layer/atlas/util/imagepopup/b;->bpt:Lcom/layer/sdk/LayerClient;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v1, p0, Lcom/layer/atlas/util/imagepopup/b;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/b;->bpw:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not decode bitmap region"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final d(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x6

    sget-object v0, Lcom/layer/atlas/util/imagepopup/b;->bpt:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0, p2}, Lcom/layer/sdk/LayerClient;->get(Landroid/net/Uri;)Lcom/layer/sdk/query/Queryable;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No message part with ID: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v2

    invoke-interface {v2}, Lcom/layer/sdk/messaging/Message;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v3}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Message part is deleted: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/layer/atlas/util/imagepopup/b;->bpx:Lcom/layer/sdk/messaging/MessagePart;

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/b;->bpx:Lcom/layer/sdk/messaging/MessagePart;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2}, Lcom/layer/atlas/util/c;->a(Lcom/layer/sdk/messaging/MessagePart;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v3}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Timed out while downloading: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/layer/atlas/util/imagepopup/b;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/b;->bpx:Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getDataStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/atlas/util/imagepopup/b;->bpw:Landroid/graphics/BitmapRegionDecoder;

    new-instance v0, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/b;->bpw:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/layer/atlas/util/imagepopup/b;->bpw:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final kC()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/b;->bpw:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/b;->bpw:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/b;->bpx:Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->isContentReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final recycle()V
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/b;->bpw:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    return-void
.end method
