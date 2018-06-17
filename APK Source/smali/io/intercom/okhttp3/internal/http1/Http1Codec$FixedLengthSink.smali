.class final Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

.field private final timeout:Lio/intercom/b/i;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/http1/Http1Codec;J)V
    .locals 2

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/b/i;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v1, v1, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    invoke-interface {v1}, Lio/intercom/b/d;->timeout()Lio/intercom/b/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/b/i;-><init>(Lio/intercom/b/t;)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lio/intercom/b/i;

    iput-wide p2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    iget-wide v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lio/intercom/b/i;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->detachTimeout(Lio/intercom/b/i;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    const/4 v1, 0x3

    iput v1, v0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    goto :goto_0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->flush()V

    goto :goto_0
.end method

.method public final timeout()Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lio/intercom/b/i;

    return-object v0
.end method

.method public final write(Lio/intercom/b/c;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p1, Lio/intercom/b/c;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lio/intercom/okhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    iget-wide v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    invoke-interface {v0, p1, p2, p3}, Lio/intercom/b/d;->write(Lio/intercom/b/c;J)V

    iget-wide v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    return-void
.end method
