.class final Lokhttp3/internal/d/a$c;
.super Lokhttp3/internal/d/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private bytesRemainingInChunk:J

.field private final cVX:Lokhttp3/q;

.field final synthetic dan:Lokhttp3/internal/d/a;

.field private hasMoreChunks:Z


# direct methods
.method constructor <init>(Lokhttp3/internal/d/a;Lokhttp3/q;)V
    .locals 2

    iput-object p1, p0, Lokhttp3/internal/d/a$c;->dan:Lokhttp3/internal/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/d/a$a;-><init>(Lokhttp3/internal/d/a;B)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/internal/d/a$c;->bytesRemainingInChunk:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/d/a$c;->hasMoreChunks:Z

    iput-object p2, p0, Lokhttp3/internal/d/a$c;->cVX:Lokhttp3/q;

    return-void
.end method


# virtual methods
.method public final a(Ld/c;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v6

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v2, p0, Lokhttp3/internal/d/a$c;->closed:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, p0, Lokhttp3/internal/d/a$c;->hasMoreChunks:Z

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return-wide v0

    :cond_3
    iget-wide v2, p0, Lokhttp3/internal/d/a$c;->bytesRemainingInChunk:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lokhttp3/internal/d/a$c;->bytesRemainingInChunk:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    :cond_4
    iget-wide v2, p0, Lokhttp3/internal/d/a$c;->bytesRemainingInChunk:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lokhttp3/internal/d/a$c;->dan:Lokhttp3/internal/d/a;

    iget-object v2, v2, Lokhttp3/internal/d/a;->dad:Ld/e;

    invoke-interface {v2}, Ld/e;->Kz()Ljava/lang/String;

    :cond_5
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/d/a$c;->dan:Lokhttp3/internal/d/a;

    iget-object v2, v2, Lokhttp3/internal/d/a;->dad:Ld/e;

    invoke-interface {v2}, Ld/e;->Kx()J

    move-result-wide v2

    iput-wide v2, p0, Lokhttp3/internal/d/a$c;->bytesRemainingInChunk:J

    iget-object v2, p0, Lokhttp3/internal/d/a$c;->dan:Lokhttp3/internal/d/a;

    iget-object v2, v2, Lokhttp3/internal/d/a;->dad:Ld/e;

    invoke-interface {v2}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lokhttp3/internal/d/a$c;->bytesRemainingInChunk:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lokhttp3/internal/d/a$c;->bytesRemainingInChunk:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-wide v2, p0, Lokhttp3/internal/d/a$c;->bytesRemainingInChunk:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    iput-boolean v8, p0, Lokhttp3/internal/d/a$c;->hasMoreChunks:Z

    iget-object v2, p0, Lokhttp3/internal/d/a$c;->dan:Lokhttp3/internal/d/a;

    iget-object v2, v2, Lokhttp3/internal/d/a;->cgQ:Lokhttp3/t;

    iget-object v2, v2, Lokhttp3/t;->cZa:Lokhttp3/k;

    iget-object v3, p0, Lokhttp3/internal/d/a$c;->cVX:Lokhttp3/q;

    iget-object v4, p0, Lokhttp3/internal/d/a$c;->dan:Lokhttp3/internal/d/a;

    invoke-virtual {v4}, Lokhttp3/internal/d/a;->MS()Lokhttp3/p;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lokhttp3/internal/c/e;->a(Lokhttp3/k;Lokhttp3/q;Lokhttp3/p;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lokhttp3/internal/d/a$c;->endOfInput(ZLjava/io/IOException;)V

    :cond_8
    iget-boolean v2, p0, Lokhttp3/internal/d/a$c;->hasMoreChunks:Z

    if-eqz v2, :cond_2

    :cond_9
    iget-wide v2, p0, Lokhttp3/internal/d/a$c;->bytesRemainingInChunk:J

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lokhttp3/internal/d/a$a;->a(Ld/c;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v0}, Lokhttp3/internal/d/a$c;->endOfInput(ZLjava/io/IOException;)V

    throw v0

    :cond_a
    iget-wide v0, p0, Lokhttp3/internal/d/a$c;->bytesRemainingInChunk:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/d/a$c;->bytesRemainingInChunk:J

    move-wide v0, v2

    goto/16 :goto_0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/d/a$c;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/d/a$c;->hasMoreChunks:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lokhttp3/internal/c;->a(Ld/s;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/d/a$c;->endOfInput(ZLjava/io/IOException;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/d/a$c;->closed:Z

    goto :goto_0
.end method
