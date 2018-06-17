.class public Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;
.super Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler",
        "<",
        "Lcom/amazonaws/services/s3/model/S3Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;-><init>()V

    return-void
.end method

.method private static d(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<",
            "Lcom/amazonaws/services/s3/model/S3Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/amazonaws/services/s3/model/S3Object;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/S3Object;-><init>()V

    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;->b(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v2

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v3, "x-amz-website-redirect-location"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v3, "x-amz-website-redirect-location"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/amazonaws/services/s3/model/S3Object;->asv:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v3, "x-amz-request-charged"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/amazonaws/services/s3/model/S3Object;->asI:Z

    :cond_1
    iget-object v0, v1, Lcom/amazonaws/services/s3/model/S3Object;->asr:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Lcom/amazonaws/services/s3/model/S3Object;->asH:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    iput-object v1, v2, Lcom/amazonaws/AmazonWebServiceResponse;->result:Ljava/lang/Object;

    return-object v2
.end method


# virtual methods
.method public final synthetic a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;->d(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final jF()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
