.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListObjectsV2Handler"
.end annotation


# instance fields
.field private atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

.field private atP:Lcom/amazonaws/services/s3/model/Owner;

.field private atQ:Ljava/lang/String;

.field private final atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atQ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ListBucketResult"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Contents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, v1, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->ark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->aj(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ListBucketResult"

    aput-object v1, v0, v2

    const-string v1, "Contents"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    goto :goto_0
.end method

.method protected final an(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asZ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ListBucketResult"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-boolean v1, v1, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arH:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, v1, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arJ:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, v1, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arF:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, v1, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iput-object v0, v1, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arJ:Ljava/lang/String;

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->jZ()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "S3 response indicates truncated results, but contains no object summaries."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ListBucketResult"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "Name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->ark:Ljava/lang/String;

    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->jZ()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->jZ()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Examining listing for bucket: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v2, v2, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->ark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v1, "Prefix"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->aqv:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "MaxKeys"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ap(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arL:I

    goto :goto_1

    :cond_5
    const-string v1, "NextContinuationToken"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arJ:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v1, "ContinuationToken"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arN:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v1, "StartAfter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arO:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v1, "KeyCount"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ap(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arI:I

    goto/16 :goto_1

    :cond_9
    const-string v1, "Delimiter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arK:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string v1, "EncodingType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arM:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v1, "IsTruncated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->aC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iput-boolean v3, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arH:Z

    goto/16 :goto_1

    :cond_c
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iput-boolean v4, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arH:Z

    goto/16 :goto_1

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid value for IsTruncated field: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const-string v1, "Contents"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v1, v1, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arF:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    goto/16 :goto_1

    :cond_f
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ListBucketResult"

    aput-object v2, v1, v3

    const-string v2, "Contents"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "Key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setKey(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string v1, "LastModified"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->ab(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->h(Ljava/util/Date;)V

    goto/16 :goto_1

    :cond_11
    const-string v1, "ETag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->ak(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string v1, "Size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->aq(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setSize(J)V

    goto/16 :goto_1

    :cond_13
    const-string v1, "StorageClass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->al(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    const-string v1, "Owner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atO:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->a(Lcom/amazonaws/services/s3/model/Owner;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    goto/16 :goto_1

    :cond_15
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ListBucketResult"

    aput-object v1, v0, v3

    const-string v1, "Contents"

    aput-object v1, v0, v4

    const-string v1, "Owner"

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    goto/16 :goto_1

    :cond_16
    const-string v0, "DisplayName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atP:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/Owner;->arj:Ljava/lang/String;

    goto/16 :goto_1

    :cond_17
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ListBucketResult"

    aput-object v1, v0, v3

    const-string v1, "CommonPrefixes"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Prefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->atT:Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arG:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
