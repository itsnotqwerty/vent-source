.class public final Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field final entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

.field final written:[Z


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/cache/DiskLruCache;Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;)V
    .locals 1

    iput-object p1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v0, p2, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    return-void

    :cond_0
    iget v0, p1, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Z

    goto :goto_0
.end method


# virtual methods
.method public final abort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->completeEdit(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final abortUnlessCommitted()V
    .locals 3

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->completeEdit(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->completeEdit(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method final detach()V
    .locals 3

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lio/intercom/okhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lio/intercom/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final newSink(I)Lio/intercom/b/r;
    .locals 3

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v0, p0, :cond_1

    invoke-static {}, Lio/intercom/b/l;->KM()Lio/intercom/b/r;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v0, v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    :cond_2
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lio/intercom/okhttp3/internal/io/FileSystem;

    invoke-interface {v2, v0}, Lio/intercom/okhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lio/intercom/b/r;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    new-instance v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor$1;

    invoke-direct {v0, p0, v2}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;Lio/intercom/b/r;)V

    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/intercom/b/l;->KM()Lio/intercom/b/r;

    move-result-object v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final newSource(I)Lio/intercom/b/s;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v2, v2, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v2, p0, :cond_2

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v0

    :cond_2
    :try_start_2
    iget-object v2, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->fileSystem:Lio/intercom/okhttp3/internal/io/FileSystem;

    iget-object v3, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v3, v3, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Lio/intercom/okhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lio/intercom/b/s;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
