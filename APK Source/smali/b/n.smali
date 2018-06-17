.class final Lb/n;
.super Ljava/lang/Object;

# interfaces
.implements Lb/d;


# instance fields
.field public final bKF:Lb/c;

.field c:Z

.field public final cUL:Lb/r;


# direct methods
.method public constructor <init>(Lb/r;)V
    .locals 1

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    invoke-direct {p0, p1, v0}, Lb/n;-><init>(Lb/r;Lb/c;)V

    return-void
.end method

.method private constructor <init>(Lb/r;Lb/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lb/n;->bKF:Lb/c;

    iput-object p1, p0, Lb/n;->cUL:Lb/r;

    return-void
.end method


# virtual methods
.method public final K([B)Lb/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->J([B)Lb/c;

    invoke-virtual {p0}, Lb/n;->Li()Lb/d;

    move-result-object v0

    return-object v0
.end method

.method public final KU()Lb/c;
    .locals 1

    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    return-object v0
.end method

.method public final KV()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lb/n$1;

    invoke-direct {v0, p0}, Lb/n$1;-><init>(Lb/n;)V

    return-object v0
.end method

.method public final KW()Lb/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lb/n;->cUL:Lb/r;

    iget-object v3, p0, Lb/n;->bKF:Lb/c;

    invoke-interface {v2, v3, v0, v1}, Lb/r;->a(Lb/c;J)V

    :cond_1
    return-object p0
.end method

.method public final Li()Lb/d;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v4, p0, Lb/n;->bKF:Lb/c;

    iget-wide v0, v4, Lb/c;->b:J

    cmp-long v5, v0, v2

    if-nez v5, :cond_3

    move-wide v0, v2

    :cond_1
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lb/n;->cUL:Lb/r;

    iget-object v3, p0, Lb/n;->bKF:Lb/c;

    invoke-interface {v2, v3, v0, v1}, Lb/r;->a(Lb/c;J)V

    :cond_2
    return-object p0

    :cond_3
    iget-object v4, v4, Lb/c;->cUy:Lb/p;

    iget-object v4, v4, Lb/p;->cUQ:Lb/p;

    iget v5, v4, Lb/p;->c:I

    const/16 v6, 0x800

    if-ge v5, v6, :cond_1

    iget-boolean v5, v4, Lb/p;->e:Z

    if-eqz v5, :cond_1

    iget v5, v4, Lb/p;->c:I

    iget v4, v4, Lb/p;->b:I

    sub-int v4, v5, v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_0
.end method

.method public final a(Lb/s;)J
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
    iget-object v2, p0, Lb/n;->bKF:Lb/c;

    const-wide/16 v4, 0x800

    invoke-interface {p1, v2, v4, v5}, Lb/s;->b(Lb/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lb/n;->Li()Lb/d;

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final a(Lb/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    invoke-virtual {v0, p1, p2, p3}, Lb/c;->a(Lb/c;J)V

    invoke-virtual {p0}, Lb/n;->Li()Lb/d;

    return-void
.end method

.method public final av(J)Lb/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    invoke-virtual {v0, p1, p2}, Lb/c;->au(J)Lb/c;

    invoke-virtual {p0}, Lb/n;->Li()Lb/d;

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

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lb/n;->bKF:Lb/c;

    iget-wide v2, v1, Lb/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Lb/n;->cUL:Lb/r;

    iget-object v2, p0, Lb/n;->bKF:Lb/c;

    iget-object v3, p0, Lb/n;->bKF:Lb/c;

    iget-wide v4, v3, Lb/c;->b:J

    invoke-interface {v1, v2, v4, v5}, Lb/r;->a(Lb/c;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lb/n;->cUL:Lb/r;

    invoke-interface {v1}, Lb/r;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    invoke-static {v0}, Lb/u;->j(Ljava/lang/Throwable;)V

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

.method public final d(Lb/f;)Lb/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->c(Lb/f;)Lb/c;

    invoke-virtual {p0}, Lb/n;->Li()Lb/d;

    move-result-object v0

    return-object v0
.end method

.method public final f([BII)Lb/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    invoke-virtual {v0, p1, p2, p3}, Lb/c;->e([BII)Lb/c;

    invoke-virtual {p0}, Lb/n;->Li()Lb/d;

    move-result-object v0

    return-object v0
.end method

.method public final fJ(I)Lb/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->fH(I)Lb/c;

    invoke-virtual {p0}, Lb/n;->Li()Lb/d;

    move-result-object v0

    return-object v0
.end method

.method public final fK(I)Lb/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->fG(I)Lb/c;

    invoke-virtual {p0}, Lb/n;->Li()Lb/d;

    move-result-object v0

    return-object v0
.end method

.method public final fL(I)Lb/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->fF(I)Lb/c;

    invoke-virtual {p0}, Lb/n;->Li()Lb/d;

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

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lb/n;->cUL:Lb/r;

    iget-object v1, p0, Lb/n;->bKF:Lb/c;

    iget-object v2, p0, Lb/n;->bKF:Lb/c;

    iget-wide v2, v2, Lb/c;->b:J

    invoke-interface {v0, v1, v2, v3}, Lb/r;->a(Lb/c;J)V

    :cond_1
    iget-object v0, p0, Lb/n;->cUL:Lb/r;

    invoke-interface {v0}, Lb/r;->flush()V

    return-void
.end method

.method public final fm(Ljava/lang/String;)Lb/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n;->bKF:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->fl(Ljava/lang/String;)Lb/c;

    invoke-virtual {p0}, Lb/n;->Li()Lb/d;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/n;->cUL:Lb/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zA()Lb/t;
    .locals 1

    iget-object v0, p0, Lb/n;->cUL:Lb/r;

    invoke-interface {v0}, Lb/r;->zA()Lb/t;

    move-result-object v0

    return-object v0
.end method
