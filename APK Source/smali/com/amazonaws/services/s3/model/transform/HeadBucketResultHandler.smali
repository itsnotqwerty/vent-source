.class public Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;
.super Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler",
        "<",
        "Lcom/amazonaws/services/s3/model/HeadBucketResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v1}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    new-instance v2, Lcom/amazonaws/services/s3/model/HeadBucketResult;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/HeadBucketResult;-><init>()V

    iget-object v0, p1, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v3, "x-amz-bucket-region"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/amazonaws/services/s3/model/HeadBucketResult;->arD:Ljava/lang/String;

    iput-object v2, v1, Lcom/amazonaws/AmazonWebServiceResponse;->result:Ljava/lang/Object;

    return-object v1
.end method
