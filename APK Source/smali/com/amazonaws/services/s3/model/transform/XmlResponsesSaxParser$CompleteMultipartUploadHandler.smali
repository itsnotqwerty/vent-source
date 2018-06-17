.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompleteMultipartUploadHandler"
.end annotation


# instance fields
.field private alJ:Ljava/lang/String;

.field private alK:Ljava/lang/String;

.field private atA:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

.field private atB:Ljava/lang/String;

.field private atz:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atz:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atz:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    iput-object p1, v0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->aro:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asZ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CompleteMultipartUploadResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atz:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    :cond_0
    return-void
.end method

.method protected final an(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asZ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atA:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atA:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->alK:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazonaws/AmazonServiceException;->alK:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atA:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->alJ:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazonaws/AmazonServiceException;->alJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atA:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atB:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->aqo:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CompleteMultipartUploadResult"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atz:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->arl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "Bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atz:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->ark:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "Key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atz:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->key:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "ETag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atz:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->arm:Ljava/lang/String;

    goto :goto_0

    :cond_5
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Error"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->alK:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "Message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atA:Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    goto/16 :goto_0

    :cond_7
    const-string v0, "RequestId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->alJ:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v0, "HostId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atB:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final e(Ljava/util/Date;)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atz:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->atz:Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    iput-object p1, v0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->arn:Ljava/util/Date;

    :cond_0
    return-void
.end method
