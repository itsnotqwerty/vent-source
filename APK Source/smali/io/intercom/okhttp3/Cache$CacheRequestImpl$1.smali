.class Lio/intercom/okhttp3/Cache$CacheRequestImpl$1;
.super Lio/intercom/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/Cache$CacheRequestImpl;-><init>(Lio/intercom/okhttp3/Cache;Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/intercom/okhttp3/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic val$this$0:Lio/intercom/okhttp3/Cache;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/Cache$CacheRequestImpl;Lio/intercom/b/r;Lio/intercom/okhttp3/Cache;Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lio/intercom/okhttp3/Cache$CacheRequestImpl;

    iput-object p3, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl$1;->val$this$0:Lio/intercom/okhttp3/Cache;

    iput-object p4, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lio/intercom/b/g;-><init>(Lio/intercom/b/r;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lio/intercom/okhttp3/Cache$CacheRequestImpl;

    iget-object v1, v0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->this$0:Lio/intercom/okhttp3/Cache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lio/intercom/okhttp3/Cache$CacheRequestImpl;

    iget-boolean v0, v0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lio/intercom/okhttp3/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->done:Z

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lio/intercom/okhttp3/Cache$CacheRequestImpl;

    iget-object v0, v0, Lio/intercom/okhttp3/Cache$CacheRequestImpl;->this$0:Lio/intercom/okhttp3/Cache;

    iget v2, v0, Lio/intercom/okhttp3/Cache;->writeSuccessCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lio/intercom/okhttp3/Cache;->writeSuccessCount:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lio/intercom/b/g;->close()V

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
