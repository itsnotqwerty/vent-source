.class final Lio/intercom/okhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field activeWriter:Z

.field final buffer:Lio/intercom/b/c;

.field final frameSink:Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field final maskBuffer:[B

.field final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lio/intercom/b/d;

.field writerClosed:Z


# direct methods
.method constructor <init>(ZLio/intercom/b/d;Ljava/util/Random;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/b/c;

    invoke-direct {v0}, Lio/intercom/b/c;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->buffer:Lio/intercom/b/c;

    new-instance v0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lio/intercom/okhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "random == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean p1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    iput-object p2, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    iput-object p3, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    if-eqz p1, :cond_2

    const/16 v0, 0x2000

    new-array v1, v0, [B

    :cond_2
    iput-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private writeControlFrame(ILio/intercom/b/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lio/intercom/b/f;->size()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x7d

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Payload size must be less than or equal to 125"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    or-int/lit16 v1, p1, 0x80

    iget-object v2, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v2, v1}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-boolean v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v1, v0}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v0, v1}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    invoke-virtual {p2}, Lio/intercom/b/f;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    int-to-long v1, v1

    iget-object v3, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lio/intercom/okhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v1, v0}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    :goto_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->flush()V

    return-void

    :cond_2
    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v1, v0}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v0, p2}, Lio/intercom/b/d;->c(Lio/intercom/b/f;)Lio/intercom/b/d;

    goto :goto_0
.end method


# virtual methods
.method final newMessageSink(IJ)Lio/intercom/b/r;
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another message writer is active. Did you call close()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput p1, v0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-wide p2, v0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-boolean v1, v0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lio/intercom/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    return-object v0
.end method

.method final writeClose(ILio/intercom/b/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    sget-object v0, Lio/intercom/b/f;->cTY:Lio/intercom/b/f;

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lio/intercom/okhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    :cond_1
    new-instance v0, Lio/intercom/b/c;

    invoke-direct {v0}, Lio/intercom/b/c;-><init>()V

    invoke-virtual {v0, p1}, Lio/intercom/b/c;->fw(I)Lio/intercom/b/c;

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lio/intercom/b/c;->a(Lio/intercom/b/f;)Lio/intercom/b/c;

    :cond_2
    invoke-virtual {v0}, Lio/intercom/b/c;->readByteString()Lio/intercom/b/f;

    move-result-object v0

    :cond_3
    const/16 v1, 0x8

    :try_start_0
    invoke-direct {p0, v1, v0}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILio/intercom/b/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    throw v0
.end method

.method final writeMessageFrame(IJZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p4, :cond_2

    move v0, p1

    :goto_0
    if-eqz p5, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v1, v0}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x80

    :goto_1
    const-wide/16 v2, 0x7d

    cmp-long v1, p2, v2

    if-gtz v1, :cond_3

    long-to-int v1, p2

    or-int/2addr v0, v1

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v1, v0}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    :goto_2
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v0, v1}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    const-wide/16 v4, 0x0

    :goto_3
    cmp-long v0, v4, p2

    if-gez v0, :cond_7

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->buffer:Lio/intercom/b/c;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-virtual {v1, v2, v6, v0}, Lio/intercom/b/c;->read([BII)I

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    const-wide/32 v2, 0xffff

    cmp-long v1, p2, v2

    if-gtz v1, :cond_4

    or-int/lit8 v0, v0, 0x7e

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v1, v0}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lio/intercom/b/d;->fA(I)Lio/intercom/b/d;

    goto :goto_2

    :cond_4
    or-int/lit8 v0, v0, 0x7f

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v1, v0}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v0, p2, p3}, Lio/intercom/b/d;->an(J)Lio/intercom/b/d;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    int-to-long v1, v7

    iget-object v3, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static/range {v0 .. v5}, Lio/intercom/okhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-interface {v0, v1, v6, v7}, Lio/intercom/b/d;->c([BII)Lio/intercom/b/d;

    int-to-long v0, v7

    add-long/2addr v4, v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->buffer:Lio/intercom/b/c;

    invoke-interface {v0, v1, p2, p3}, Lio/intercom/b/d;->write(Lio/intercom/b/c;J)V

    :cond_7
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->sink:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->Kq()Lio/intercom/b/d;

    return-void

    :cond_8
    move v0, v6

    goto/16 :goto_1
.end method

.method final writePing(Lio/intercom/b/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILio/intercom/b/f;)V

    return-void
.end method

.method final writePong(Lio/intercom/b/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lio/intercom/okhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILio/intercom/b/f;)V

    return-void
.end method
