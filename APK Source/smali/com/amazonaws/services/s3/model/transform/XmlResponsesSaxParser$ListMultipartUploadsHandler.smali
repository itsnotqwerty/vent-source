.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListMultipartUploadsHandler"
.end annotation


# instance fields
.field private atP:Lcom/amazonaws/services/s3/model/Owner;

.field private final atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

.field private atS:Lcom/amazonaws/services/s3/model/MultipartUpload;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    new-instance v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ListMultipartUploadsResult"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Upload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/MultipartUpload;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/MultipartUpload;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atS:Lcom/amazonaws/services/s3/model/MultipartUpload;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ListMultipartUploadsResult"

    aput-object v1, v0, v2

    const-string v1, "Upload"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Initiator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    new-instance v0, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    goto :goto_0
.end method

.method protected final an(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ListMultipartUploadsResult"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->ark:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "KeyMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arT:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "Delimiter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arK:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "Prefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->aqv:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "UploadIdMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arU:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "NextKeyMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arW:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "NextUploadIdMarker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arX:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "MaxUploads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arV:I

    goto/16 :goto_0

    :cond_8
    const-string v0, "EncodingType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arM:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v0, "IsTruncated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arH:Z

    goto/16 :goto_0

    :cond_a
    const-string v0, "Upload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arY:Ljava/util/List;

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arY:Ljava/util/List;

    :cond_b
    iget-object v0, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arY:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atS:Lcom/amazonaws/services/s3/model/MultipartUpload;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v5, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atS:Lcom/amazonaws/services/s3/model/MultipartUpload;

    goto/16 :goto_0

    :cond_c
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ListMultipartUploadsResult"

    aput-object v1, v0, v2

    const-string v1, "CommonPrefixes"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Prefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atR:Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arG:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ListMultipartUploadsResult"

    aput-object v1, v0, v2

    const-string v1, "Upload"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "Key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atS:Lcom/amazonaws/services/s3/model/MultipartUpload;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUpload;->key:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v0, "UploadId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atS:Lcom/amazonaws/services/s3/model/MultipartUpload;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUpload;->arE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atS:Lcom/amazonaws/services/s3/model/MultipartUpload;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUpload;->aqn:Lcom/amazonaws/services/s3/model/Owner;

    iput-object v5, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    goto/16 :goto_0

    :cond_10
    const-string v0, "Initiator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atS:Lcom/amazonaws/services/s3/model/MultipartUpload;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUpload;->arQ:Lcom/amazonaws/services/s3/model/Owner;

    iput-object v5, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    goto/16 :goto_0

    :cond_11
    const-string v0, "StorageClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atS:Lcom/amazonaws/services/s3/model/MultipartUpload;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUpload;->arR:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    const-string v0, "Initiated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atS:Lcom/amazonaws/services/s3/model/MultipartUpload;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->ab(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/MultipartUpload;->arS:Ljava/util/Date;

    goto/16 :goto_0

    :cond_13
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ListMultipartUploadsResult"

    aput-object v1, v0, v2

    const-string v1, "Upload"

    aput-object v1, v0, v3

    const-string v1, "Owner"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ListMultipartUploadsResult"

    aput-object v1, v0, v2

    const-string v1, "Upload"

    aput-object v1, v0, v3

    const-string v1, "Initiator"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_14
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string v0, "DisplayName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/Owner;->arj:Ljava/lang/String;

    goto/16 :goto_0
.end method
