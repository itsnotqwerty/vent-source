.class final Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FrameSink"
.end annotation


# instance fields
.field closed:Z

.field contentLength:J

.field formatOpcode:I

.field isFirstFrame:Z

.field final synthetic this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/ws/WebSocketWriter;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    iget v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v2, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    iget-object v2, v2, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->buffer:Lio/intercom/b/c;

    iget-wide v2, v2, Lio/intercom/b/c;->size:J

    iget-boolean v4, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    invoke-virtual/range {v0 .. v5}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    iput-boolean v5, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    return-void
.end method

.method public final flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    iget v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v2, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    iget-object v2, v2, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->buffer:Lio/intercom/b/c;

    iget-wide v2, v2, Lio/intercom/b/c;->size:J

    iget-boolean v4, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    invoke-virtual/range {v0 .. v5}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    iput-boolean v5, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    return-void
.end method

.method public final timeout()Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->timeout()Lio/intercom/b/t;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lio/intercom/b/c;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/b/c;->write(Lio/intercom/b/c;J)V

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->buffer:Lio/intercom/b/c;

    iget-wide v0, v0, Lio/intercom/b/c;->size:J

    iget-wide v2, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v6, 0x2000

    sub-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    iget-object v1, v1, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->buffer:Lio/intercom/b/c;

    invoke-virtual {v1}, Lio/intercom/b/c;->Kt()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lio/intercom/okhttp3/internal/ws/WebSocketWriter;

    iget v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-boolean v4, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    invoke-virtual/range {v0 .. v5}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    iput-boolean v5, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    :cond_1
    return-void

    :cond_2
    move v0, v5

    goto :goto_0
.end method
