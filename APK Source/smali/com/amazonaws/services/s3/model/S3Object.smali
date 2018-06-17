.class public Lcom/amazonaws/services/s3/model/S3Object;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private ark:Ljava/lang/String;

.field public asH:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

.field public asI:Z

.field public asr:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field public asv:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->ark:Ljava/lang/String;

    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->asr:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->asH:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->asH:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S3Object [key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3Object;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->ark:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<Unknown>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->ark:Ljava/lang/String;

    goto :goto_0
.end method
