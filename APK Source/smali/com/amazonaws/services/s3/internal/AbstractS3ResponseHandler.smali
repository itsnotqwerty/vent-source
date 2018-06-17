.class public abstract Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler",
        "<",
        "Lcom/amazonaws/AmazonWebServiceResponse",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;

.field private static final apK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->apK:Ljava/util/Set;

    const-string v1, "Date"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->apK:Ljava/util/Set;

    const-string v1, "Server"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->apK:Ljava/util/Set;

    const-string v1, "x-amz-request-id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->apK:Ljava/util/Set;

    const-string v1, "x-amz-id-2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 6

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "x-amz-meta-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asb:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->apK:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Last-Modified"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->ac(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to parse last modified date: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to parse content length: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "ETag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "Expires"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazonaws/util/DateUtils;->ay(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asc:Ljava/util/Date;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    sget-object v2, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to parse http expiration date: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "x-amz-expiration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v1, "x-amz-expiration"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;->e(Ljava/util/Date;)V

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;->Z(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "x-amz-restore"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;-><init>()V

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v1, "x-amz-restore"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazonaws/services/s3/internal/ObjectRestoreResult;->f(Ljava/util/Date;)V

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->aa(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/internal/ObjectRestoreResult;->ak(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method protected static b(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;"
        }
    .end annotation

    new-instance v2, Lcom/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v2}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v1, "x-amz-request-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v3, "x-amz-id-2"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "AWS_REQUEST_ID"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HOST_ID"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/amazonaws/services/s3/S3ResponseMetadata;

    invoke-direct {v0, v3}, Lcom/amazonaws/services/s3/S3ResponseMetadata;-><init>(Ljava/util/Map;)V

    iput-object v0, v2, Lcom/amazonaws/AmazonWebServiceResponse;->ame:Lcom/amazonaws/ResponseMetadata;

    return-object v2
.end method


# virtual methods
.method public jF()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
