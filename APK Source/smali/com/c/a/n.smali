.class final Lcom/c/a/n;
.super Ljava/io/InputStream;


# instance fields
.field private bNG:J

.field private bNH:J

.field private bNI:J

.field private bNJ:J

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/c/a/n;-><init>(Ljava/io/InputStream;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;B)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/c/a/n;->bNJ:J

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    return-void
.end method

.method private e(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    sub-long v2, p3, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/c/a/n;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-wide/16 v0, 0x1

    :cond_0
    add-long/2addr p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final Q(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/c/a/n;->bNG:J

    iget-wide v2, p0, Lcom/c/a/n;->bNI:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/c/a/n;->bNH:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-wide v0, p0, Lcom/c/a/n;->bNH:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/c/a/n;->e(JJ)V

    iput-wide p1, p0, Lcom/c/a/n;->bNG:J

    return-void
.end method

.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final dX(I)J
    .locals 6

    iget-wide v0, p0, Lcom/c/a/n;->bNG:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/c/a/n;->bNI:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    :try_start_0
    iget-wide v2, p0, Lcom/c/a/n;->bNH:J

    iget-wide v4, p0, Lcom/c/a/n;->bNG:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/c/a/n;->bNG:J

    iget-wide v4, p0, Lcom/c/a/n;->bNI:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    iget-object v2, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    iget-wide v4, p0, Lcom/c/a/n;->bNH:J

    sub-long v4, v0, v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    iget-wide v2, p0, Lcom/c/a/n;->bNH:J

    iget-wide v4, p0, Lcom/c/a/n;->bNG:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/c/a/n;->e(JJ)V

    :goto_0
    iput-wide v0, p0, Lcom/c/a/n;->bNI:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-wide v0, p0, Lcom/c/a/n;->bNG:J

    return-wide v0

    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/c/a/n;->bNG:J

    iput-wide v2, p0, Lcom/c/a/n;->bNH:J

    iget-object v2, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    iget-wide v4, p0, Lcom/c/a/n;->bNG:J

    sub-long v4, v0, v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to mark: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final mark(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/c/a/n;->dX(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/a/n;->bNJ:J

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lcom/c/a/n;->bNG:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/c/a/n;->bNG:J

    :cond_0
    return v0
.end method

.method public final read([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lcom/c/a/n;->bNG:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/c/a/n;->bNG:J

    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lcom/c/a/n;->bNG:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/c/a/n;->bNG:J

    :cond_0
    return v0
.end method

.method public final reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/c/a/n;->bNJ:J

    invoke-virtual {p0, v0, v1}, Lcom/c/a/n;->Q(J)V

    return-void
.end method

.method public final skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/c/a/n;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/c/a/n;->bNG:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/c/a/n;->bNG:J

    return-wide v0
.end method
