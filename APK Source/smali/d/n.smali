.class final Ld/n;
.super Ljava/lang/Object;

# interfaces
.implements Ld/e;


# instance fields
.field closed:Z

.field public final dch:Ld/c;

.field public final dcj:Ld/s;


# direct methods
.method constructor <init>(Ld/s;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    iput-object v0, p0, Ld/n;->dch:Ld/c;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ld/n;->dcj:Ld/s;

    return-void
.end method

.method private a(BJJ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    iget-boolean v0, p0, Ld/n;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, v4, v4

    if-ltz v0, :cond_1

    cmp-long v0, p4, v4

    if-gez v0, :cond_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex=%s toIndex=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_0
    cmp-long v0, v2, p4

    if-gez v0, :cond_5

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    move v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ld/c;->a(BJJ)J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_3

    :goto_1
    return-wide v0

    :cond_3
    iget-object v0, p0, Ld/n;->dch:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    cmp-long v4, v0, p4

    if-gez v4, :cond_4

    iget-object v4, p0, Ld/n;->dcj:Ld/s;

    iget-object v5, p0, Ld/n;->dch:Ld/c;

    const-wide/16 v8, 0x2000

    invoke-interface {v4, v5, v8, v9}, Ld/s;->a(Ld/c;J)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    :cond_4
    move-wide v0, v6

    goto :goto_1

    :cond_5
    move-wide v0, v6

    goto :goto_1

    :cond_6
    move-wide v2, p2

    goto :goto_0
.end method

.method private aa(J)Z
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
    iget-boolean v0, p0, Ld/n;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ld/n;->dch:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    iget-object v0, p0, Ld/n;->dcj:Ld/s;

    iget-object v1, p0, Ld/n;->dch:Ld/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ld/s;->a(Ld/c;J)J

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
.method public final KA()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    iget-object v1, p0, Ld/n;->dcj:Ld/s;

    invoke-virtual {v0, v1}, Ld/c;->a(Ld/s;)J

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0}, Ld/c;->KA()[B

    move-result-object v0

    return-object v0
.end method

.method public final KB()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ld/n;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Kr()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/n;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0}, Ld/c;->Kr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/n;->dcj:Ld/s;

    iget-object v1, p0, Ld/n;->dch:Ld/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ld/s;->a(Ld/c;J)J

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

.method public final Ks()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ld/n$1;

    invoke-direct {v0, p0}, Ld/n$1;-><init>(Ld/n;)V

    return-object v0
.end method

.method public final Ku()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Ld/n;->Z(J)V

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0}, Ld/c;->readShort()S

    move-result v0

    invoke-static {v0}, Ld/u;->a(S)S

    move-result v0

    return v0
.end method

.method public final Kv()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Ld/n;->Z(J)V

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0}, Ld/c;->readInt()I

    move-result v0

    invoke-static {v0}, Ld/u;->fD(I)I

    move-result v0

    return v0
.end method

.method public final Kw()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Ld/n;->Z(J)V

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Ld/n;->aa(J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ld/n;->dch:Ld/c;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ld/c;->ab(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    if-nez v0, :cond_1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    :cond_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v3, "Expected leading [0-9] or \'-\' character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0}, Ld/c;->Kw()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Kx()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Ld/n;->Z(J)V

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Ld/n;->aa(J)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Ld/n;->dch:Ld/c;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ld/c;->ab(J)B

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
    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0}, Ld/c;->Kx()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Kz()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ld/n;->ae(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final MK()Ld/t;
    .locals 1

    iget-object v0, p0, Ld/n;->dcj:Ld/s;

    invoke-interface {v0}, Ld/s;->MK()Ld/t;

    move-result-object v0

    return-object v0
.end method

.method public final Nj()Ld/c;
    .locals 1

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    return-object v0
.end method

.method public final Z(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ld/n;->aa(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public final a(Ld/c;J)J
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
    iget-boolean v2, p0, Ld/n;->closed:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, Ld/n;->dch:Ld/c;

    iget-wide v2, v2, Ld/c;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Ld/n;->dcj:Ld/s;

    iget-object v3, p0, Ld/n;->dch:Ld/c;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Ld/s;->a(Ld/c;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    :goto_0
    return-wide v0

    :cond_3
    iget-object v0, p0, Ld/n;->dch:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v2, p1, v0, v1}, Ld/c;->a(Ld/c;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final ae(J)Ljava/lang/String;
    .locals 9
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

    const-string v2, "limit < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ld/n;->a(BJJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v2, v0, v1}, Ld/c;->af(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-wide/16 v0, 0x1

    add-long v4, p1, v0

    goto :goto_0

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    invoke-direct {p0, v4, v5}, Ld/n;->aa(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ld/c;->ab(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Ld/n;->aa(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0, v4, v5}, Ld/c;->ab(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0, v4, v5}, Ld/c;->af(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ld/c;

    invoke-direct {v1}, Ld/c;-><init>()V

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Ld/n;->dch:Ld/c;

    iget-wide v6, v6, Ld/c;->size:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ld/c;->a(Ld/c;JJ)Ld/c;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: limit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ld/n;->dch:Ld/c;

    iget-wide v4, v3, Ld/c;->size:J

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ld/c;->MT()Ld/f;

    move-result-object v1

    invoke-virtual {v1}, Ld/f;->KJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ag(J)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ld/n;->Z(J)V

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0, p1, p2}, Ld/c;->ag(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final ah(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Ld/n;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/n;->dch:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v2, v0, v1}, Ld/c;->ah(J)V

    sub-long/2addr p1, v0

    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/n;->dcj:Ld/s;

    iget-object v1, p0, Ld/n;->dch:Ld/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ld/s;->a(Ld/c;J)J

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

.method public final az(J)Ld/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ld/n;->Z(J)V

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0, p1, p2}, Ld/c;->az(J)Ld/f;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/n;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/n;->closed:Z

    iget-object v0, p0, Ld/n;->dcj:Ld/s;

    invoke-interface {v0}, Ld/s;->close()V

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0}, Ld/c;->clear()V

    goto :goto_0
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Ld/n;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/n;->dcj:Ld/s;

    iget-object v1, p0, Ld/n;->dch:Ld/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ld/s;->a(Ld/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0, p1}, Ld/c;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ld/n;->Z(J)V

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0}, Ld/c;->readByte()B

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ld/n;->Z(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0, p1}, Ld/c;->readFully([B)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ld/n;->dch:Ld/c;

    iget-wide v2, v2, Ld/c;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Ld/n;->dch:Ld/c;

    iget-object v3, p0, Ld/n;->dch:Ld/c;

    iget-wide v4, v3, Ld/c;->size:J

    long-to-int v3, v4

    invoke-virtual {v2, p1, v0, v3}, Ld/c;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    throw v1
.end method

.method public final readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Ld/n;->Z(J)V

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0}, Ld/c;->readInt()I

    move-result v0

    return v0
.end method

.method public final readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Ld/n;->Z(J)V

    iget-object v0, p0, Ld/n;->dch:Ld/c;

    invoke-virtual {v0}, Ld/c;->readShort()S

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/n;->dcj:Ld/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
