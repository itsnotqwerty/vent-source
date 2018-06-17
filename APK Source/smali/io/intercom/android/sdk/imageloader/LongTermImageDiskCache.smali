.class Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;,
        Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;
    }
.end annotation


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final VALUE_COUNT:I = 0x1


# instance fields
.field private final directory:Ljava/io/File;

.field private diskLruCache:Lio/intercom/a/a/a/a/a;

.field private final maxSize:I

.field private final safeKeyGenerator:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;

.field private final writeLocker:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;

    invoke-direct {v0}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->writeLocker:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->directory:Ljava/io/File;

    iput p2, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->maxSize:I

    new-instance v0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;

    invoke-direct {v0}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->safeKeyGenerator:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;

    return-void
.end method

.method private declared-synchronized getDiskCache()Lio/intercom/a/a/a/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->diskLruCache:Lio/intercom/a/a/a/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->directory:Ljava/io/File;

    iget v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->maxSize:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lio/intercom/a/a/a/a/a;->a(Ljava/io/File;J)Lio/intercom/a/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->diskLruCache:Lio/intercom/a/a/a/a/a;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->diskLruCache:Lio/intercom/a/a/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetDiskCache()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->diskLruCache:Lio/intercom/a/a/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->getDiskCache()Lio/intercom/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/a/a/a/a/a;->delete()V

    invoke-direct {p0}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->resetDiskCache()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->twig:Lio/intercom/android/sdk/twig/Twig;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->diskLruCache:Lio/intercom/a/a/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->diskLruCache:Lio/intercom/a/a/a/a/a;

    invoke-virtual {v0}, Lio/intercom/a/a/a/a/a;->close()V

    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->safeKeyGenerator:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->getDiskCache()Lio/intercom/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/intercom/a/a/a/a/a;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->twig:Lio/intercom/android/sdk/twig/Twig;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->safeKeyGenerator:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->getDiskCache()Lio/intercom/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/intercom/a/a/a/a/a;->eU(Ljava/lang/String;)Lio/intercom/a/a/a/a/a$d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lio/intercom/a/a/a/a/a$d;->cGO:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->twig:Lio/intercom/android/sdk/twig/Twig;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->diskLruCache:Lio/intercom/a/a/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->diskLruCache:Lio/intercom/a/a/a/a/a;

    invoke-virtual {v0}, Lio/intercom/a/a/a/a/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->writeLocker:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;->acquire(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->safeKeyGenerator:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$SafeKeyGenerator;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-direct {p0}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->getDiskCache()Lio/intercom/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/intercom/a/a/a/a/a;->eU(Ljava/lang/String;)Lio/intercom/a/a/a/a/a$d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->writeLocker:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;->release(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v1, v0}, Lio/intercom/a/a/a/a/a;->eV(Ljava/lang/String;)Lio/intercom/a/a/a/a/a$b;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Had two simultaneous puts for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->twig:Lio/intercom/android/sdk/twig/Twig;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->writeLocker:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;->release(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lio/intercom/a/a/a/a/a$b;->HF()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->write(Ljava/io/File;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lio/intercom/a/a/a/a/a$b;->commit()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v1}, Lio/intercom/a/a/a/a/a$b;->abortUnlessCommitted()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->writeLocker:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;

    invoke-virtual {v1, p1}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;->release(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Lio/intercom/a/a/a/a/a$b;->abortUnlessCommitted()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public write(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_4
    iget-object v2, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->twig:Lio/intercom/android/sdk/twig/Twig;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method
