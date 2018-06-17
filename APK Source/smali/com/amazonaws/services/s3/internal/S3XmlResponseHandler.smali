.class public Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
.super Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;


# instance fields
.field private aqa:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private aqb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->aqa:Lcom/amazonaws/transform/Unmarshaller;

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

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->b(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    iget-object v1, p1, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->aqb:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->aqa:Lcom/amazonaws/transform/Unmarshaller;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    const-string v2, "Beginning to parse service response XML"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->aqa:Lcom/amazonaws/transform/Unmarshaller;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    invoke-interface {v1}, Lcom/amazonaws/transform/Unmarshaller;->kc()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->alS:Lorg/apache/commons/logging/Log;

    const-string v3, "Done parsing service response XML"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/amazonaws/AmazonWebServiceResponse;->result:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
