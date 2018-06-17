.class public Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;
.super Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler",
        "<",
        "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;->b(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v1

    iput-object v0, v1, Lcom/amazonaws/AmazonWebServiceResponse;->result:Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public final synthetic a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;->d(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    return-object v0
.end method
