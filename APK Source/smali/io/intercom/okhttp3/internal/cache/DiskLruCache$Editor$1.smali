.class Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor$1;
.super Lio/intercom/okhttp3/internal/cache/FaultHidingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lio/intercom/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;Lio/intercom/b/r;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lio/intercom/okhttp3/internal/cache/FaultHidingSink;-><init>(Lio/intercom/b/r;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    iget-object v1, v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
