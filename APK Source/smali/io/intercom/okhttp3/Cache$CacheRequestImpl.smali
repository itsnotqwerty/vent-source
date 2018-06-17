.class final Lio/intercom/okhttp3/Cache$CacheRequestImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Lio/intercom/b/r;

.field private cacheOut:Lio/intercom/b/r;

.field done:Z

.field private final editor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Lio/intercom/okhttp3/Cache;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/Cache;Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 2

    iput-object p1, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->this$0:Lio/intercom/okhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->editor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lio/intercom/b/r;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->cacheOut:Lio/intercom/b/r;

    new-instance v0, Lio/intercom/okhttp3/Cache$CacheRequestImpl$1;

    iget-object v1, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->cacheOut:Lio/intercom/b/r;

    invoke-direct {v0, p0, v1, p1, p2}, Lio/intercom/okhttp3/Cache$CacheRequestImpl$1;-><init>(Lio/intercom/okhttp3/Cache$CacheRequestImpl;Lio/intercom/b/r;Lio/intercom/okhttp3/Cache;Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->body:Lio/intercom/b/r;

    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 3

    iget-object v1, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->this$0:Lio/intercom/okhttp3/Cache;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->done:Z

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->this$0:Lio/intercom/okhttp3/Cache;

    iget v2, v0, Lio/intercom/okhttp3/Cache;->writeAbortCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lio/intercom/okhttp3/Cache;->writeAbortCount:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->cacheOut:Lio/intercom/b/r;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->editor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final body()Lio/intercom/b/r;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->body:Lio/intercom/b/r;

    return-object v0
.end method
