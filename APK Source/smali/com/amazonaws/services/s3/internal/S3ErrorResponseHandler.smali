.class public Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler",
        "<",
        "Lcom/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .locals 4

    new-instance v1, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v1, p0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/amazonaws/http/HttpResponse;->aog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazonaws/AmazonServiceException;->alK:Ljava/lang/String;

    iput v0, v1, Lcom/amazonaws/AmazonServiceException;->statusCode:I

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->cr(I)Lcom/amazonaws/AmazonServiceException$ErrorType;

    move-result-object v0

    iput-object v0, v1, Lcom/amazonaws/AmazonServiceException;->alL:Lcom/amazonaws/AmazonServiceException$ErrorType;

    iget-object v2, p1, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v0, "x-amz-request-id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/amazonaws/AmazonServiceException;->alJ:Ljava/lang/String;

    const-string v0, "x-amz-id-2"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->aqo:Ljava/lang/String;

    const-string v0, "X-Amz-Cf-Id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->aqp:Ljava/lang/String;

    return-object v1
.end method

.method private static c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->aog:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/util/IOUtils;->j(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Lcom/amazonaws/util/XpathUtils;->aG(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "Error/Message"

    invoke-static {v1, v0}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "Error/Code"

    invoke-static {v1, v0}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "Error/RequestId"

    invoke-static {v1, v0}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "Error/HostId"

    invoke-static {v1, v0}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v1, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    iput v3, v1, Lcom/amazonaws/AmazonServiceException;->statusCode:I

    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->cr(I)Lcom/amazonaws/AmazonServiceException$ErrorType;

    move-result-object v3

    iput-object v3, v1, Lcom/amazonaws/AmazonServiceException;->alL:Lcom/amazonaws/AmazonServiceException$ErrorType;

    iput-object v4, v1, Lcom/amazonaws/AmazonServiceException;->alK:Ljava/lang/String;

    iput-object v5, v1, Lcom/amazonaws/AmazonServiceException;->alJ:Ljava/lang/String;

    iput-object v0, v1, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->aqo:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v3, "X-Amz-Cf-Id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->aqp:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    const-string v2, "Failed in reading the error response"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->aog:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed in parsing the response as XML: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    invoke-static {v2, p0}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object v0

    goto :goto_0
.end method

.method private static cr(I)Lcom/amazonaws/AmazonServiceException$ErrorType;
    .locals 1

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->alP:Lcom/amazonaws/AmazonServiceException$ErrorType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->alO:Lcom/amazonaws/AmazonServiceException$ErrorType;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method

.method public final jF()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
