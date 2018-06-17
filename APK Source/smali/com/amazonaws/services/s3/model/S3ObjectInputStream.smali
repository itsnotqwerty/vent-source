.class public Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;


# instance fields
.field private final asJ:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->isMetricsEnabled()Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;C)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;C)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->asJ:Lorg/apache/http/client/methods/HttpRequestBase;

    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "FYI"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
