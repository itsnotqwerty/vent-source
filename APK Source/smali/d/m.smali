.class final Ld/m;
.super Ljava/lang/Object;

# interfaces
.implements Ld/d;


# instance fields
.field closed:Z

.field public final dch:Ld/c;

.field public final dci:Ld/r;


# direct methods
.method constructor <init>(Ld/r;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    iput-object v0, p0, Ld/m;->dch:Ld/c;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ld/m;->dci:Ld/r;

    return-void
.end method


# virtual methods
.method public final MK()Ld/t;
    .locals 1

    iget-object v0, p0, Ld/m;->dci:Ld/r;

    invoke-interface {v0}, Ld/r;->MK()Ld/t;

    move-result-object v0

    return-object v0
.end method

.method public final Nj()Ld/c;
    .locals 1

    iget-object v0, p0, Ld/m;->dch:Ld/c;

    return-object v0
.end method

.method public final Nk()Ld/d;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v4, p0, Ld/m;->dch:Ld/c;

    iget-wide v0, v4, Ld/c;->size:J

    cmp-long v5, v0, v2

    if-nez v5, :cond_3

    move-wide v0, v2

    :cond_1
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Ld/m;->dci:Ld/r;

    iget-object v3, p0, Ld/m;->dch:Ld/c;

    invoke-interface {v2, v3, v0, v1}, Ld/r;->b(Ld/c;J)V

    :cond_2
    return-object p0

    :cond_3
    iget-object v4, v4, Ld/c;->dbZ:Ld/o;

    iget-object v4, v4, Ld/o;->dcm:Ld/o;

    iget v5, v4, Ld/o;->limit:I

    const/16 v6, 0x2000

    if-ge v5, v6, :cond_1

    iget-boolean v5, v4, Ld/o;->cUn:Z

    if-eqz v5, :cond_1

    iget v5, v4, Ld/o;->limit:I

    iget v4, v4, Ld/o;->pos:I

    sub-int v4, v5, v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_0
.end method

.method public final Q([B)Ld/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/m;->dch:Ld/c;

    invoke-virtual {v0, p1}, Ld/c;->P([B)Ld/c;

    invoke-virtual {p0}, Ld/m;->Nk()Ld/d;

    move-result-object v0

    return-object v0
.end method

.method public final aC(J)Ld/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/m;->dch:Ld/c;

    invoke-virtual {v0, p1, p2}, Ld/c;->aB(J)Ld/c;

    invoke-virtual {p0}, Ld/m;->Nk()Ld/d;

    move-result-object v0

    return-object v0
.end method

.method public final aD(J)Ld/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/m;->dch:Ld/c;

    invoke-virtual {v0, p1, p2}, Ld/c;->aA(J)Ld/c;

    invoke-virtual {p0}, Ld/m;->Nk()Ld/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ld/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/m;->dch:Ld/c;

    invoke-virtual {v0, p1, p2, p3}, Ld/c;->b(Ld/c;J)V

    invoke-virtual {p0}, Ld/m;->Nk()Ld/d;

    return-void
.end method

.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ld/m;->dch:Ld/c;

    iget-wide v2, v1, Ld/c;->size:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Ld/m;->dci:Ld/r;

    iget-object v2, p0, Ld/m;->dch:Ld/c;

    iget-object v3, p0, Ld/m;->dch:Ld/c;

    iget-wide v4, v3, Ld/c;->size:J

    invoke-interface {v1, v2, v4, v5}, Ld/r;->b(Ld/c;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Ld/m;->dci:Ld/r;

    invoke-interface {v1}, Ld/r;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld/u;->h(Ljava/lang/Throwable;)V

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

.method public final fF(Ljava/lang/String;)Ld/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/m;->dch:Ld/c;

    invoke-virtual {v0, p1}, Ld/c;->fE(Ljava/lang/String;)Ld/c;

    invoke-virtual {p0}, Ld/m;->Nk()Ld/d;

    move-result-object v0

    return-object v0
.end method

.method public final fZ(I)Ld/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/m;->dch:Ld/c;

    invoke-virtual {v0, p1}, Ld/c;->fX(I)Ld/c;

    invoke-virtual {p0}, Ld/m;->Nk()Ld/d;

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

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/m;->dch:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Ld/m;->dci:Ld/r;

    iget-object v1, p0, Ld/m;->dch:Ld/c;

    iget-object v2, p0, Ld/m;->dch:Ld/c;

    iget-wide v2, v2, Ld/c;->size:J

    invoke-interface {v0, v1, v2, v3}, Ld/r;->b(Ld/c;J)V

    :cond_1
    iget-object v0, p0, Ld/m;->dci:Ld/r;

    invoke-interface {v0}, Ld/r;->flush()V

    return-void
.end method

.method public final ga(I)Ld/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/m;->dch:Ld/c;

    invoke-virtual {v0, p1}, Ld/c;->fW(I)Ld/c;

    invoke-virtual {p0}, Ld/m;->Nk()Ld/d;

    move-result-object v0

    return-object v0
.end method

.method public final gb(I)Ld/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/m;->dch:Ld/c;

    invoke-virtual {v0, p1}, Ld/c;->fV(I)Ld/c;

    invoke-virtual {p0}, Ld/m;->Nk()Ld/d;

    move-result-object v0

    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j([BII)Ld/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/m;->dch:Ld/c;

    invoke-virtual {v0, p1, p2, p3}, Ld/c;->i([BII)Ld/c;

    invoke-virtual {p0}, Ld/m;->Nk()Ld/d;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/m;->dci:Ld/r;

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

    iget-boolean v0, p0, Ld/m;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/m;->dch:Ld/c;

    invoke-virtual {v0, p1}, Ld/c;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p0}, Ld/m;->Nk()Ld/d;

    return v0
.end method
