.class public Lcom/amazonaws/util/LengthCheckInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;


# instance fields
.field private final auW:J

.field private final auX:Z

.field private auY:J

.field private auZ:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-wide p2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auW:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auX:Z

    return-void
.end method

.method private al(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auW:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data read ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has a different length than the expected ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auW:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auW:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "More data read ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") than expected ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auW:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public mark(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;->mark(I)V

    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    iput-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auZ:J

    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    :cond_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/amazonaws/util/LengthCheckInputStream;->al(Z)V

    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result v2

    iget-wide v4, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    if-ltz v2, :cond_0

    int-to-long v0, v2

    :goto_0
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/amazonaws/util/LengthCheckInputStream;->al(Z)V

    return v2

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auZ:J

    iput-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/amazonaws/internal/SdkFilterInputStream;->skip(J)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auX:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->auY:J

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/amazonaws/util/LengthCheckInputStream;->al(Z)V

    :cond_0
    return-wide v0
.end method
