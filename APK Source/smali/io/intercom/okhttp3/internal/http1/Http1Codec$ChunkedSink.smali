.class final Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

.field private final timeout:Lio/intercom/b/i;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/http1/Http1Codec;)V
    .locals 2

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/b/i;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v1, v1, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    invoke-interface {v1}, Lio/intercom/b/d;->timeout()Lio/intercom/b/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/b/i;-><init>(Lio/intercom/b/t;)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lio/intercom/b/i;

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lio/intercom/b/i;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->detachTimeout(Lio/intercom/b/i;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    const/4 v1, 0x3

    iput v1, v0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final timeout()Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lio/intercom/b/i;

    return-object v0
.end method

.method public final write(Lio/intercom/b/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    invoke-interface {v0, p2, p3}, Lio/intercom/b/d;->al(J)Lio/intercom/b/d;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    invoke-interface {v0, p1, p2, p3}, Lio/intercom/b/d;->write(Lio/intercom/b/c;J)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    goto :goto_0
.end method
