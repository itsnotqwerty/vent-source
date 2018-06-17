.class public Lcom/amazonaws/http/AmazonHttpClient;
.super Ljava/lang/Object;


# static fields
.field static final alS:Lorg/apache/commons/logging/Log;

.field private static final anQ:Lorg/apache/commons/logging/Log;


# instance fields
.field public final amb:Lcom/amazonaws/metrics/RequestMetricCollector;

.field final anR:Lcom/amazonaws/http/HttpClient;

.field final anS:Lcom/amazonaws/ClientConfiguration;

.field private final anT:Lcom/amazonaws/http/HttpRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->anQ:Lorg/apache/commons/logging/Log;

    const-class v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->anT:Lcom/amazonaws/http/HttpRequestFactory;

    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iput-object p2, p0, Lcom/amazonaws/http/AmazonHttpClient;->anR:Lcom/amazonaws/http/HttpClient;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->amb:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method private static a(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I
    .locals 5

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v3, "Date"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v0, " + 15"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " + 15"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/DateUtils;->az(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_2
    return v0

    :cond_1
    :try_start_1
    const-string v0, " - 15"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->ay(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    :goto_3
    sget-object v0, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to parse clock skew offset from response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_3
.end method

.method private static a(ILcom/amazonaws/retry/RetryPolicy;)J
    .locals 6

    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p1, Lcom/amazonaws/retry/RetryPolicy;->apx:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    invoke-interface {v1, v0}, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->cq(I)J

    move-result-wide v2

    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Retriable error detected, will retry in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, attempt number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonServiceException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x1f7

    const/16 v5, 0x19d

    iget v1, p2, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    :try_start_0
    invoke-interface {p1, p2}, Lcom/amazonaws/http/HttpResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/AmazonServiceException;

    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->anQ:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received error response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v1, v0, Lcom/amazonaws/AmazonServiceException;->statusCode:I

    invoke-interface {p0}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/AmazonServiceException;->alN:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->fillInStackTrace()Ljava/lang/Throwable;

    return-object v0

    :catch_0
    move-exception v0

    if-ne v1, v5, :cond_0

    new-instance v0, Lcom/amazonaws/AmazonServiceException;

    const-string v2, "Request entity too large"

    invoke-direct {v0, v2}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amazonaws/AmazonServiceException;->alN:Ljava/lang/String;

    iput v5, v0, Lcom/amazonaws/AmazonServiceException;->statusCode:I

    sget-object v2, Lcom/amazonaws/AmazonServiceException$ErrorType;->alO:Lcom/amazonaws/AmazonServiceException$ErrorType;

    iput-object v2, v0, Lcom/amazonaws/AmazonServiceException;->alL:Lcom/amazonaws/AmazonServiceException$ErrorType;

    const-string v2, "Request entity too large"

    iput-object v2, v0, Lcom/amazonaws/AmazonServiceException;->alK:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-ne v1, v6, :cond_1

    const-string v2, "Service Unavailable"

    iget-object v3, p2, Lcom/amazonaws/http/HttpResponse;->aog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/amazonaws/AmazonServiceException;

    const-string v2, "Service unavailable"

    invoke-direct {v0, v2}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amazonaws/AmazonServiceException;->alN:Ljava/lang/String;

    iput v6, v0, Lcom/amazonaws/AmazonServiceException;->statusCode:I

    sget-object v2, Lcom/amazonaws/AmazonServiceException$ErrorType;->alP:Lcom/amazonaws/AmazonServiceException$ErrorType;

    iput-object v2, v0, Lcom/amazonaws/AmazonServiceException;->alL:Lcom/amazonaws/AmazonServiceException$ErrorType;

    const-string v2, "Service unavailable"

    iput-object v2, v0, Lcom/amazonaws/AmazonServiceException;->alK:Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to unmarshall error response ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Response Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Response Text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/amazonaws/http/HttpResponse;->aog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazonaws/AmazonClientException;

    invoke-direct {v2, v1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static a(Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lcom/amazonaws/http/HttpResponse;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p2, Lcom/amazonaws/http/ExecutionContext;->anU:Lcom/amazonaws/util/AWSRequestMetrics;

    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aum:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {p0, p1}, Lcom/amazonaws/http/HttpResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/AmazonWebServiceResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aum:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to unmarshall response metadata. Response Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Response Text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/amazonaws/http/HttpResponse;->aog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aum:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    throw v0
    :try_end_3
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    move-exception v0

    throw v0

    :cond_0
    :try_start_4
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->anQ:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->anQ:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received successful response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", AWS Request ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceResponse;->jp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aud:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceResponse;->jp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/amazonaws/AmazonWebServiceResponse;->result:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to unmarshall response ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Response Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Response Text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/amazonaws/http/HttpResponse;->aog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazonaws/AmazonClientException;

    invoke-direct {v2, v1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static a(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auh:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->c(Lcom/amazonaws/metrics/MetricType;)V

    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auh:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, v0, p0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static a(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Encountered an exception and stream is not resettable"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Encountered an exception and couldn\'t reset the stream to retry"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v2, p3, -0x1

    iget-object v1, p0, Lcom/amazonaws/http/AmazonHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iget v1, v1, Lcom/amazonaws/ClientConfiguration;->ami:I

    if-ltz v1, :cond_0

    iget-boolean v3, p4, Lcom/amazonaws/retry/RetryPolicy;->apy:Z

    if-nez v3, :cond_1

    :cond_0
    iget v1, p4, Lcom/amazonaws/retry/RetryPolicy;->ami:I

    :cond_1
    if-lt v2, v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    const-string v2, "Content not repeatable"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p4, Lcom/amazonaws/retry/RetryPolicy;->apw:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    invoke-interface {v0, p2}, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->a(Lcom/amazonaws/AmazonClientException;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const/4 v12, 0x0

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/amazonaws/http/ExecutionContext;->anU:Lcom/amazonaws/util/AWSRequestMetrics;

    move-object/from16 v16, v0

    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aux:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auw:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->jt()Ljava/net/URI;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    sget-object v5, Lcom/amazonaws/ClientConfiguration;->amf:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->jq()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v4

    if-eqz v4, :cond_1d

    iget-object v4, v4, Lcom/amazonaws/AmazonWebServiceRequest;->ama:Lcom/amazonaws/RequestClientOptions;

    if-eqz v4, :cond_1d

    sget-object v6, Lcom/amazonaws/RequestClientOptions$Marker;->amK:Lcom/amazonaws/RequestClientOptions$Marker;

    iget-object v4, v4, Lcom/amazonaws/RequestClientOptions;->amJ:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1d

    invoke-static {v5, v4}, Lcom/amazonaws/http/AmazonHttpClient;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    sget-object v5, Lcom/amazonaws/ClientConfiguration;->amf:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazonaws/http/AmazonHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iget-object v6, v6, Lcom/amazonaws/ClientConfiguration;->amh:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/http/AmazonHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iget-object v5, v5, Lcom/amazonaws/ClientConfiguration;->amh:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/amazonaws/http/AmazonHttpClient;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v5, "User-Agent"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "aws-sdk-invocation-id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    new-instance v17, Ljava/util/LinkedHashMap;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance v18, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->mark(I)V

    :cond_1
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/amazonaws/http/ExecutionContext;->amc:Lcom/amazonaws/auth/AWSCredentials;

    move-object/from16 v20, v0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v6, v5

    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aun:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    int-to-long v14, v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14, v15}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;J)V

    const/4 v5, 0x1

    if-le v9, v5, :cond_3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->d(Ljava/util/Map;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->c(Ljava/util/Map;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    :cond_3
    if-eqz v8, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->jt()Ljava/net/URI;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->jr()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "://"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/amazonaws/Request;->b(Ljava/net/URI;)V

    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/amazonaws/Request;->L(Ljava/lang/String;)V

    :cond_4
    const/4 v5, 0x1

    if-le v9, v5, :cond_5

    :try_start_0
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auv:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/http/AmazonHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iget-object v5, v5, Lcom/amazonaws/ClientConfiguration;->amj:Lcom/amazonaws/retry/RetryPolicy;

    invoke-static {v9, v5}, Lcom/amazonaws/http/AmazonHttpClient;->a(ILcom/amazonaws/retry/RetryPolicy;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    :try_start_2
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auv:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/InputStream;->markSupported()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    :cond_5
    const-string v5, "aws-sdk-retry"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v9, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v13}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->jt()Ljava/net/URI;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/amazonaws/http/ExecutionContext;->a(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object v7

    :cond_6
    if-eqz v7, :cond_7

    if-eqz v20, :cond_7

    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aul:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v7, v0, v1}, Lcom/amazonaws/auth/Signer;->a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aul:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    :cond_7
    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->anQ:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->anQ:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Sending Request: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/http/AmazonHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    move-object/from16 v21, v0

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->jt()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->jr()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v5, v13, v14}, Lcom/amazonaws/util/HttpUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/amazonaws/util/HttpUtils;->o(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->js()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v14

    if-eqz v14, :cond_f

    const/4 v14, 0x1

    move v15, v14

    :goto_2
    sget-object v14, Lcom/amazonaws/http/HttpMethodName;->anY:Lcom/amazonaws/http/HttpMethodName;

    if-ne v13, v14, :cond_10

    const/4 v14, 0x1

    :goto_3
    if-eqz v14, :cond_9

    if-eqz v15, :cond_11

    :cond_9
    const/4 v14, 0x1

    :goto_4
    if-eqz v22, :cond_1b

    if-eqz v14, :cond_1b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, "?"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    :goto_5
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/amazonaws/http/HttpRequestFactory;->a(Ljava/util/Map;Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;Lcom/amazonaws/ClientConfiguration;)V

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v5

    sget-object v14, Lcom/amazonaws/http/HttpMethodName;->aoc:Lcom/amazonaws/http/HttpMethodName;

    if-ne v13, v14, :cond_a

    sget-object v13, Lcom/amazonaws/http/HttpMethodName;->anY:Lcom/amazonaws/http/HttpMethodName;

    const-string v14, "X-HTTP-Method-Override"

    sget-object v21, Lcom/amazonaws/http/HttpMethodName;->aoc:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object v14, v13

    sget-object v13, Lcom/amazonaws/http/HttpMethodName;->anY:Lcom/amazonaws/http/HttpMethodName;

    if-ne v14, v13, :cond_1a

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v13

    if-nez v13, :cond_1a

    if-eqz v22, :cond_1a

    sget-object v5, Lcom/amazonaws/util/StringUtils;->avd:Ljava/nio/charset/Charset;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v21, "Content-Length"

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v5

    :goto_6
    const-string v5, "Accept-Encoding"

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_b

    const-string v5, "Accept-Encoding"

    const-string v21, "gzip"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    new-instance v5, Lcom/amazonaws/http/HttpRequest;

    invoke-virtual {v14}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v15

    move-object/from16 v0, v23

    invoke-direct {v5, v14, v15, v0, v13}, Lcom/amazonaws/http/HttpRequest;-><init>(Ljava/lang/String;Ljava/net/URI;Ljava/util/Map;Ljava/io/InputStream;)V

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->isStreaming()Z

    move-result v13

    iput-boolean v13, v5, Lcom/amazonaws/http/HttpRequest;->aof:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aui:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/http/AmazonHttpClient;->anR:Lcom/amazonaws/http/HttpClient;

    invoke-interface {v4, v5}, Lcom/amazonaws/http/HttpClient;->a(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v6

    :try_start_7
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aui:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    iget v4, v6, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    const/16 v13, 0xc8

    if-lt v4, v13, :cond_12

    const/16 v13, 0x12c

    if-ge v4, v13, :cond_12

    const/4 v4, 0x1

    :goto_7
    if-eqz v4, :cond_13

    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auy:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    iget v13, v6, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v13}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/http/HttpResponseHandler;->jF()Z

    move-result v12

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v6, v1}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v4

    new-instance v13, Lcom/amazonaws/Response;

    invoke-direct {v13, v4, v6}, Lcom/amazonaws/Response;-><init>(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v12, :cond_c

    if-eqz v6, :cond_c

    :try_start_8
    iget-object v4, v6, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    if-eqz v4, :cond_c

    iget-object v4, v6, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_c
    :goto_8
    return-object v13

    :catchall_0
    move-exception v5

    :try_start_9
    sget-object v13, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auv:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    throw v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_0
    move-exception v5

    move-object v13, v5

    :goto_9
    :try_start_a
    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Unable to execute HTTP request: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_d
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auh:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->c(Lcom/amazonaws/metrics/MetricType;)V

    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auh:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v13}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aud:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v14, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    new-instance v5, Lcom/amazonaws/AmazonClientException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Unable to execute HTTP request: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14, v13}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v14, v4, Lcom/amazonaws/http/HttpRequest;->amE:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/http/AmazonHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iget-object v15, v15, Lcom/amazonaws/ClientConfiguration;->amj:Lcom/amazonaws/retry/RetryPolicy;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5, v9, v15}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v14

    if-nez v14, :cond_19

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v4

    if-nez v12, :cond_e

    if-eqz v6, :cond_e

    :try_start_b
    iget-object v5, v6, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    if-eqz v5, :cond_e

    iget-object v5, v6, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_e
    :goto_a
    throw v4

    :catchall_2
    move-exception v5

    :try_start_c
    sget-object v13, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aul:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    throw v5
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catch_1
    move-exception v4

    :try_start_d
    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_f
    const/4 v14, 0x0

    move v15, v14

    goto/16 :goto_2

    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_4

    :catchall_3
    move-exception v4

    :try_start_e
    sget-object v13, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aui:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    throw v4
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catch_2
    move-exception v13

    move-object v4, v5

    goto/16 :goto_9

    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_7

    :catch_3
    move-exception v4

    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    const-string v6, "Cannot close the response content."

    invoke-interface {v5, v6, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_13
    :try_start_f
    iget v13, v6, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    iget-object v4, v6, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v14, "Location"

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v14, 0x133

    if-ne v13, v14, :cond_15

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v4, 0x1

    :goto_b
    if-eqz v4, :cond_16

    iget-object v4, v6, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v13, "Location"

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v13, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Redirecting to: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/amazonaws/Request;->b(Ljava/net/URI;)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/amazonaws/Request;->L(Ljava/lang/String;)V

    sget-object v13, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auy:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    iget v14, v6, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    sget-object v13, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auj:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aud:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v13, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v13}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_c
    if-nez v12, :cond_1c

    if-eqz v6, :cond_1c

    :try_start_10
    iget-object v4, v6, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    if-eqz v4, :cond_14

    iget-object v4, v6, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    :cond_14
    move-object v4, v5

    goto/16 :goto_1

    :cond_15
    const/4 v4, 0x0

    goto :goto_b

    :cond_16
    :try_start_11
    invoke-interface/range {p3 .. p3}, Lcom/amazonaws/http/HttpResponseHandler;->jF()Z

    move-result v12

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v6}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v4

    sget-object v13, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aud:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    iget-object v14, v4, Lcom/amazonaws/AmazonServiceException;->alJ:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    sget-object v13, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auc:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    iget-object v14, v4, Lcom/amazonaws/AmazonServiceException;->alK:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    sget-object v13, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auy:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    iget v14, v4, Lcom/amazonaws/AmazonServiceException;->statusCode:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    iget-object v13, v5, Lcom/amazonaws/http/HttpRequest;->amE:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/http/AmazonHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iget-object v14, v14, Lcom/amazonaws/ClientConfiguration;->amj:Lcom/amazonaws/retry/RetryPolicy;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v9, v14}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v13

    if-nez v13, :cond_17

    throw v4
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catch_4
    move-exception v4

    :try_start_12
    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/Error;

    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_17
    :try_start_13
    invoke-static {v4}, Lcom/amazonaws/retry/RetryUtils;->b(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-static {v6, v4}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I

    move-result v13

    invoke-static {v13}, Lcom/amazonaws/SDKGlobalConfiguration;->cm(I)V

    :cond_18
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_c

    :catch_5
    move-exception v4

    sget-object v13, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    const-string v14, "Cannot close the response content."

    invoke-interface {v13, v14, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v4, v5

    goto/16 :goto_1

    :cond_19
    :try_start_14
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-nez v12, :cond_2

    if-eqz v6, :cond_2

    :try_start_15
    iget-object v5, v6, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    if-eqz v5, :cond_2

    iget-object v5, v6, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v5

    sget-object v13, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    const-string v14, "Cannot close the response content."

    invoke-interface {v13, v14, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_7
    move-exception v5

    sget-object v6, Lcom/amazonaws/http/AmazonHttpClient;->alS:Lorg/apache/commons/logging/Log;

    const-string v7, "Cannot close the response content."

    invoke-interface {v6, v7, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_1a
    move-object v13, v5

    goto/16 :goto_6

    :cond_1b
    move-object v15, v5

    goto/16 :goto_5

    :cond_1c
    move-object v4, v5

    goto/16 :goto_1

    :cond_1d
    move-object v4, v5

    goto/16 :goto_0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    iget-object v1, p4, Lcom/amazonaws/http/ExecutionContext;->alX:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p4, Lcom/amazonaws/http/ExecutionContext;->anU:Lcom/amazonaws/util/AWSRequestMetrics;

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/AmazonHttpClient;->b(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/util/AWSRequestMetrics;->kd()Lcom/amazonaws/util/TimingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/util/TimingInfo;->kj()Lcom/amazonaws/util/TimingInfo;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/handlers/RequestHandler2;

    instance-of v3, v0, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    iget-object v3, p4, Lcom/amazonaws/http/ExecutionContext;->amc:Lcom/amazonaws/auth/AWSCredentials;

    invoke-virtual {v0, v3}, Lcom/amazonaws/handlers/CredentialsRequestHandler;->b(Lcom/amazonaws/auth/AWSCredentials;)V

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    throw v1

    :cond_4
    return-object v2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
