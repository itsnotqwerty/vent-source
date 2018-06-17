.class final Lb/o$1;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/o;->h()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cUO:Lb/o;


# direct methods
.method constructor <init>(Lb/o;)V
    .locals 0

    iput-object p1, p0, Lb/o$1;->cUO:Lb/o;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/o$1;->cUO:Lb/o;

    iget-boolean v0, v0, Lb/o;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/o$1;->cUO:Lb/o;

    iget-object v0, v0, Lb/o;->bKF:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/o$1;->cUO:Lb/o;

    invoke-virtual {v0}, Lb/o;->close()V

    return-void
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/o$1;->cUO:Lb/o;

    iget-boolean v0, v0, Lb/o;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/o$1;->cUO:Lb/o;

    iget-object v0, v0, Lb/o;->bKF:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/o$1;->cUO:Lb/o;

    iget-object v0, v0, Lb/o;->cUN:Lb/s;

    iget-object v1, p0, Lb/o$1;->cUO:Lb/o;

    iget-object v1, v1, Lb/o;->bKF:Lb/c;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lb/s;->b(Lb/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lb/o$1;->cUO:Lb/o;

    iget-object v0, v0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0}, Lb/c;->KX()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/o$1;->cUO:Lb/o;

    iget-boolean v0, v0, Lb/o;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lb/u;->a(JJJ)V

    iget-object v0, p0, Lb/o$1;->cUO:Lb/o;

    iget-object v0, v0, Lb/o;->bKF:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/o$1;->cUO:Lb/o;

    iget-object v0, v0, Lb/o;->cUN:Lb/s;

    iget-object v1, p0, Lb/o$1;->cUO:Lb/o;

    iget-object v1, v1, Lb/o;->bKF:Lb/c;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lb/s;->b(Lb/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lb/o$1;->cUO:Lb/o;

    iget-object v0, v0, Lb/o;->bKF:Lb/c;

    invoke-virtual {v0, p1, p2, p3}, Lb/c;->d([BII)I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/o$1;->cUO:Lb/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
