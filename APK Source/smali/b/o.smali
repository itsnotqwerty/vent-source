.class final Lb/o;
.super Ljava/lang/Object;

# interfaces
.implements Lb/e;


# instance fields
.field public final bKF:Lb/c;

.field c:Z

.field public final cUN:Lb/s;


# direct methods
.method public constructor <init>(Lb/s;)V
    .locals 1

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    invoke-direct {p0, p1, v0}, Lb/o;-><init>(Lb/s;Lb/c;)V

    return-void
.end method

.method private constructor <init>(Lb/s;Lb/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lb/o;->bKF:Lb/c;

    iput-object p1, p0, Lb/o;->cUN:Lb/s;

    return-void
.end method

.method private ax(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lb/o;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    iget-object v0, p0, Lb/o;->cUN:Lb/s;

    iget-object v1, p0, Lb/o;->bKF:Lb/c;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lb/s;->b(Lb/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final KU()Lb/c;
    .locals 1

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    return-object v0
.end method

.method public final KX()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lb/o;->a(J)V

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0}, Lb/c;->KX()B

    move-result v0

    return v0
.end method

.method public final KY()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lb/o;->a(J)V

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0}, Lb/c;->KY()S

    move-result v0

    return v0
.end method

.method public final KZ()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lb/o;->a(J)V

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0}, Lb/c;->KZ()I

    move-result v0

    return v0
.end method

.method public final La()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lb/o;->a(J)V

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0}, Lb/c;->KY()S

    move-result v0

    invoke-static {v0}, Lb/u;->b(S)S

    move-result v0

    return v0
.end method

.method public final Lb()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lb/o;->a(J)V

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0}, Lb/c;->KZ()I

    move-result v0

    invoke-static {v0}, Lb/u;->dU(I)I

    move-result v0

    return v0
.end method

.method public final Lc()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lb/o;->a(J)V

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lb/o;->ax(J)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lb/o;->bKF:Lb/c;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lb/c;->ao(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x46

    if-le v2, v3, :cond_3

    :cond_2
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0}, Lb/c;->Lc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Lf()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lb/o;->f(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v1, Lb/c;

    invoke-direct {v1}, Lb/c;-><init>()V

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Lb/o;->bKF:Lb/c;

    iget-wide v6, v6, Lb/c;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lb/c;->a(Lb/c;JJ)Lb/c;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lb/o;->bKF:Lb/c;

    iget-wide v4, v3, Lb/c;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lb/c;->Ld()Lb/f;

    move-result-object v1

    invoke-virtual {v1}, Lb/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v2, v0, v1}, Lb/c;->ar(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Lg()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    iget-object v1, p0, Lb/o;->cUN:Lb/s;

    invoke-virtual {v0, v1}, Lb/c;->a(Lb/s;)J

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0}, Lb/c;->Lg()[B

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lb/o;->ax(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public final ap(J)Lb/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lb/o;->a(J)V

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0, p1, p2}, Lb/c;->ap(J)Lb/f;

    move-result-object v0

    return-object v0
.end method

.method public final as(J)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lb/o;->a(J)V

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0, p1, p2}, Lb/c;->as(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final at(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lb/o;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v2, v0, v1}, Lb/c;->at(J)V

    sub-long/2addr p1, v0

    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/o;->cUN:Lb/s;

    iget-object v1, p0, Lb/o;->bKF:Lb/c;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lb/s;->b(Lb/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    return-void
.end method

.method public final b(Lb/c;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_1

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

    :cond_1
    iget-boolean v2, p0, Lb/o;->c:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, Lb/o;->bKF:Lb/c;

    iget-wide v2, v2, Lb/c;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lb/o;->cUN:Lb/s;

    iget-object v3, p0, Lb/o;->bKF:Lb/c;

    const-wide/16 v4, 0x800

    invoke-interface {v2, v3, v4, v5}, Lb/s;->b(Lb/c;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    :goto_0
    return-wide v0

    :cond_3
    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v2, p1, v0, v1}, Lb/c;->b(Lb/c;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/o;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/o;->c:Z

    iget-object v0, p0, Lb/o;->cUN:Lb/s;

    invoke-interface {v0}, Lb/s;->close()V

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0}, Lb/c;->t()V

    goto :goto_0
.end method

.method public final f(B)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x800

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    iget-boolean v4, p0, Lb/o;->c:Z

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v4, p0, Lb/o;->bKF:Lb/c;

    iget-wide v4, v4, Lb/c;->b:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lb/o;->cUN:Lb/s;

    iget-object v5, p0, Lb/o;->bKF:Lb/c;

    invoke-interface {v4, v5, v6, v7}, Lb/s;->b(Lb/c;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    move-wide v0, v2

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    iget-object v4, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v4, p1, v0, v1}, Lb/c;->a(BJ)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    iget-object v4, p0, Lb/o;->cUN:Lb/s;

    iget-object v5, p0, Lb/o;->bKF:Lb/c;

    invoke-interface {v4, v5, v6, v7}, Lb/s;->b(Lb/c;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    move-wide v0, v2

    goto :goto_0
.end method

.method public final h()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lb/o$1;

    invoke-direct {v0, p0}, Lb/o$1;-><init>(Lb/o;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/o;->cUN:Lb/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final xi()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/o;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0}, Lb/c;->xi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/o;->cUN:Lb/s;

    iget-object v1, p0, Lb/o;->bKF:Lb/c;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lb/s;->b(Lb/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zA()Lb/t;
    .locals 1

    iget-object v0, p0, Lb/o;->cUN:Lb/s;

    invoke-interface {v0}, Lb/s;->zA()Lb/t;

    move-result-object v0

    return-object v0
.end method
