.class Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
.super Lio/intercom/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/http2/Http2Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field bytesRead:J

.field completed:Z

.field final synthetic this$0:Lio/intercom/okhttp3/internal/http2/Http2Codec;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/http2/Http2Codec;Lio/intercom/b/s;)V
    .locals 2

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Codec;

    invoke-direct {p0, p2}, Lio/intercom/b/h;-><init>(Lio/intercom/b/s;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    return-void
.end method

.method private endOfInput(Ljava/io/IOException;)V
    .locals 7

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Codec;

    iget-object v1, v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Codec;

    iget-wide v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLio/intercom/okhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lio/intercom/b/h;->close()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    return-void
.end method

.method public read(Lio/intercom/b/c;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->delegate()Lio/intercom/b/s;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/intercom/b/s;->read(Lio/intercom/b/c;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    throw v0
.end method
