.class final Lio/intercom/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/b/d;


# instance fields
.field public final buffer:Lio/intercom/b/c;

.field public final cUj:Lio/intercom/b/r;

.field closed:Z


# direct methods
.method constructor <init>(Lio/intercom/b/r;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/b/c;

    invoke-direct {v0}, Lio/intercom/b/c;-><init>()V

    iput-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/b/m;->cUj:Lio/intercom/b/r;

    return-void
.end method


# virtual methods
.method public final G([B)Lio/intercom/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1}, Lio/intercom/b/c;->F([B)Lio/intercom/b/c;

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final KD()Lio/intercom/b/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0}, Lio/intercom/b/c;->Kt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lio/intercom/b/m;->cUj:Lio/intercom/b/r;

    iget-object v3, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-interface {v2, v3, v0, v1}, Lio/intercom/b/r;->write(Lio/intercom/b/c;J)V

    :cond_1
    return-object p0
.end method

.method public final Kp()Lio/intercom/b/c;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    return-object v0
.end method

.method public final Kq()Lio/intercom/b/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    iget-wide v0, v0, Lio/intercom/b/c;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lio/intercom/b/m;->cUj:Lio/intercom/b/r;

    iget-object v3, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-interface {v2, v3, v0, v1}, Lio/intercom/b/r;->write(Lio/intercom/b/c;J)V

    :cond_1
    return-object p0
.end method

.method public final a(Lio/intercom/b/s;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    const-wide/16 v4, 0x2000

    invoke-interface {p1, v2, v4, v5}, Lio/intercom/b/s;->read(Lio/intercom/b/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final al(J)Lio/intercom/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1, p2}, Lio/intercom/b/c;->ak(J)Lio/intercom/b/c;

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final am(J)Lio/intercom/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1, p2}, Lio/intercom/b/c;->aj(J)Lio/intercom/b/c;

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final an(J)Lio/intercom/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1, p2}, Lio/intercom/b/c;->ai(J)Lio/intercom/b/c;

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lio/intercom/b/f;)Lio/intercom/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1}, Lio/intercom/b/c;->a(Lio/intercom/b/f;)Lio/intercom/b/c;

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final c([BII)Lio/intercom/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/b/c;->b([BII)Lio/intercom/b/c;

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    iget-wide v2, v1, Lio/intercom/b/c;->size:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Lio/intercom/b/m;->cUj:Lio/intercom/b/r;

    iget-object v2, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    iget-object v3, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    iget-wide v4, v3, Lio/intercom/b/c;->size:J

    invoke-interface {v1, v2, v4, v5}, Lio/intercom/b/r;->write(Lio/intercom/b/c;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lio/intercom/b/m;->cUj:Lio/intercom/b/r;

    invoke-interface {v1}, Lio/intercom/b/r;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/intercom/b/u;->h(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final fA(I)Lio/intercom/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1}, Lio/intercom/b/c;->fw(I)Lio/intercom/b/c;

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final fB(I)Lio/intercom/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final fg(Ljava/lang/String;)Lio/intercom/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1}, Lio/intercom/b/c;->ff(Ljava/lang/String;)Lio/intercom/b/c;

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    iget-wide v0, v0, Lio/intercom/b/c;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/intercom/b/m;->cUj:Lio/intercom/b/r;

    iget-object v1, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    iget-object v2, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    iget-wide v2, v2, Lio/intercom/b/c;->size:J

    invoke-interface {v0, v1, v2, v3}, Lio/intercom/b/r;->write(Lio/intercom/b/c;J)V

    :cond_1
    iget-object v0, p0, Lio/intercom/b/m;->cUj:Lio/intercom/b/r;

    invoke-interface {v0}, Lio/intercom/b/r;->flush()V

    return-void
.end method

.method public final fz(I)Lio/intercom/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1}, Lio/intercom/b/c;->fx(I)Lio/intercom/b/c;

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final timeout()Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/m;->cUj:Lio/intercom/b/r;

    invoke-interface {v0}, Lio/intercom/b/r;->timeout()Lio/intercom/b/t;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/b/m;->cUj:Lio/intercom/b/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1}, Lio/intercom/b/c;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    return v0
.end method

.method public final write(Lio/intercom/b/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/b/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/m;->buffer:Lio/intercom/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/b/c;->write(Lio/intercom/b/c;J)V

    invoke-virtual {p0}, Lio/intercom/b/m;->KD()Lio/intercom/b/d;

    return-void
.end method
