.class public final Lio/intercom/okhttp3/Cache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/Cache$CacheResponseBody;,
        Lio/intercom/okhttp3/Cache$Entry;,
        Lio/intercom/okhttp3/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field final cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field writeAbortCount:I

.field writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    sget-object v0, Lio/intercom/okhttp3/internal/io/FileSystem;->SYSTEM:Lio/intercom/okhttp3/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/intercom/okhttp3/Cache;-><init>(Ljava/io/File;JLio/intercom/okhttp3/internal/io/FileSystem;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;JLio/intercom/okhttp3/internal/io/FileSystem;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/okhttp3/Cache$1;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/Cache$1;-><init>(Lio/intercom/okhttp3/Cache;)V

    iput-object v0, p0, Lio/intercom/okhttp3/Cache;->internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    const v2, 0x31191

    const/4 v3, 0x2

    move-object v0, p4

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->create(Lio/intercom/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method private abortQuietly(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 1
    .param p1    # Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static key(Lio/intercom/okhttp3/HttpUrl;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/b/f;->KG()Lio/intercom/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/b/f;->KJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static readInt(Lio/intercom/b/e;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lio/intercom/b/e;->Kw()J

    move-result-wide v0

    invoke-interface {p0}, Lio/intercom/b/e;->Kz()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expected an int but was \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->close()V

    return-void
.end method

.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->delete()V

    return-void
.end method

.method public final directory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final evictAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->evictAll()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->flush()V

    return-void
.end method

.method final get(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/okhttp3/Cache;->key(Lio/intercom/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2, v1}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Lio/intercom/okhttp3/Cache$Entry;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lio/intercom/b/s;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/intercom/okhttp3/Cache$Entry;-><init>(Lio/intercom/b/s;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v2, v1}, Lio/intercom/okhttp3/Cache$Entry;->response(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;)Lio/intercom/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lio/intercom/okhttp3/Cache$Entry;->matches(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/intercom/okhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->initialize()V

    return-void
.end method

.method public final isClosed()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final maxSize()J
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized networkCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/intercom/okhttp3/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final put(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/internal/cache/CacheRequest;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/intercom/okhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/intercom/okhttp3/Cache;->remove(Lio/intercom/okhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->hasVaryAll(Lio/intercom/okhttp3/Response;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lio/intercom/okhttp3/Cache$Entry;

    invoke-direct {v1, p1}, Lio/intercom/okhttp3/Cache$Entry;-><init>(Lio/intercom/okhttp3/Response;)V

    :try_start_1
    iget-object v2, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v3

    invoke-static {v3}, Lio/intercom/okhttp3/Cache;->key(Lio/intercom/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v1, v2}, Lio/intercom/okhttp3/Cache$Entry;->writeTo(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V

    new-instance v1, Lio/intercom/okhttp3/Cache$CacheRequestImpl;

    invoke-direct {v1, p0, v2}, Lio/intercom/okhttp3/Cache$CacheRequestImpl;-><init>(Lio/intercom/okhttp3/Cache;Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-direct {p0, v1}, Lio/intercom/okhttp3/Cache;->abortQuietly(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method final remove(Lio/intercom/okhttp3/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/okhttp3/Cache;->key(Lio/intercom/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    return-void
.end method

.method public final declared-synchronized requestCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/intercom/okhttp3/Cache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache;->cache:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method final declared-synchronized trackConditionalCacheHit()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/intercom/okhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/okhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized trackResponse(Lio/intercom/okhttp3/internal/cache/CacheStrategy;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/intercom/okhttp3/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/okhttp3/Cache;->requestCount:I

    iget-object v0, p1, Lio/intercom/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lio/intercom/okhttp3/Request;

    if-eqz v0, :cond_1

    iget v0, p0, Lio/intercom/okhttp3/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/okhttp3/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p1, Lio/intercom/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lio/intercom/okhttp3/Response;

    if-eqz v0, :cond_0

    iget v0, p0, Lio/intercom/okhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/okhttp3/Cache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final update(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/Response;)V
    .locals 3

    new-instance v1, Lio/intercom/okhttp3/Cache$Entry;

    invoke-direct {v1, p2}, Lio/intercom/okhttp3/Cache$Entry;-><init>(Lio/intercom/okhttp3/Response;)V

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/Cache$CacheResponseBody;

    iget-object v2, v0, Lio/intercom/okhttp3/Cache$CacheResponseBody;->snapshot:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/Cache$Entry;->writeTo(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-direct {p0, v0}, Lio/intercom/okhttp3/Cache;->abortQuietly(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method public final urls()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lio/intercom/okhttp3/Cache$2;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/Cache$2;-><init>(Lio/intercom/okhttp3/Cache;)V

    return-object v0
.end method

.method public final declared-synchronized writeAbortCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/intercom/okhttp3/Cache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized writeSuccessCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/intercom/okhttp3/Cache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
