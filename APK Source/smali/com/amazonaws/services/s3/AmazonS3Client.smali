.class public Lcom/amazonaws/services/s3/AmazonS3Client;
.super Lcom/amazonaws/AmazonWebServiceClient;


# static fields
.field private static alS:Lorg/apache/commons/logging/Log;

.field private static final apD:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private static final apE:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;


# instance fields
.field private final apB:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

.field private final apC:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private apF:Lcom/amazonaws/services/s3/S3ClientOptions;

.field private final apG:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field volatile apH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->alS:Lorg/apache/commons/logging/Log;

    invoke-static {}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->jQ()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics;->addAll(Ljava/util/Collection;)Z

    const-string v0, "S3SignerType"

    const-class v1, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-static {v0, v1}, Lcom/amazonaws/auth/SignerFactory;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "AWSS3V4SignerType"

    const-class v1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-static {v0, v1}, Lcom/amazonaws/auth/SignerFactory;->a(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->apD:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    new-instance v0, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->apE:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 4

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    new-instance v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->apB:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    new-instance v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->apC:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->apF:Lcom/amazonaws/services/s3/S3ClientOptions;

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->apG:Lcom/amazonaws/auth/AWSCredentialsProvider;

    sget-object v0, Lcom/amazonaws/services/s3/internal/Constants;->apM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->J(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alX:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/s3/request.handlers"

    const-class v3, Lcom/amazonaws/handlers/RequestHandler;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alX:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/s3/request.handler2s"

    const-class v3, Lcom/amazonaws/handlers/RequestHandler2;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private V(Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alT:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alT:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid bucket name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static W(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ltz v4, :cond_0

    const/16 v5, 0xff

    if-gt v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request",
            "<TY;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TX;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/amazonaws/Request;->jq()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.amazonaws.sdk.enableRuntimeProfiling"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_1
    new-instance v4, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;

    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alX:Ljava/util/List;

    invoke-direct {v4, v5, v0, p0}, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    iget-object v5, v4, Lcom/amazonaws/http/ExecutionContext;->anU:Lcom/amazonaws/util/AWSRequestMetrics;

    invoke-interface {p1, v5}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V

    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auf:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    :try_start_0
    iget v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alY:I

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->cl(I)V

    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v6, "Content-Type"

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-interface {p1, v0, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->apG:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->jy()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    iget-object v6, v3, Lcom/amazonaws/AmazonWebServiceRequest;->amc:Lcom/amazonaws/auth/AWSCredentials;

    if-eqz v6, :cond_c

    iget-object v0, v3, Lcom/amazonaws/AmazonWebServiceRequest;->amc:Lcom/amazonaws/auth/AWSCredentials;

    move-object v3, v0

    :goto_2
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alZ:Lcom/amazonaws/auth/Signer;

    const-string v6, "com.amazonaws.services.s3.enforceV4"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    :cond_2
    :goto_3
    if-eqz v2, :cond_9

    instance-of v1, v0, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    if-nez v1, :cond_9

    new-instance v0, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->jn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->setServiceName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->alU:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->apH:Ljava/lang/String;

    :cond_3
    if-nez v1, :cond_7

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Signature Version 4 requires knowing the region of the bucket you\'re trying to access. You can configure a region by calling AmazonS3Client.setRegion(Region) or AmazonS3Client.setEndpoint(String) with a region-specific endpoint such as \"s3-us-west-2.amazonaws.com\"."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v5, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;)V

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alT:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazonaws/services/s3/internal/Constants;->apM:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v1

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->N(Ljava/lang/String;)V

    :cond_8
    :goto_4
    invoke-virtual {v4, v0}, Lcom/amazonaws/http/ExecutionContext;->a(Lcom/amazonaws/auth/Signer;)V

    iput-object v3, v4, Lcom/amazonaws/http/ExecutionContext;->amc:Lcom/amazonaws/auth/AWSCredentials;

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alW:Lcom/amazonaws/http/AmazonHttpClient;

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->apB:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/amazonaws/Response;->amM:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v5, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;)V

    return-object v0

    :cond_9
    :try_start_2
    instance-of v1, v0, Lcom/amazonaws/services/s3/internal/S3Signer;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p4, :cond_b

    :goto_6
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-interface {p1}, Lcom/amazonaws/Request;->js()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/amazonaws/services/s3/internal/S3Signer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string v0, ""

    goto :goto_5

    :cond_b
    const-string p4, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_c
    move-object v3, v0

    goto/16 :goto_2
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<+",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazonaws/services/s3/model/AccessControlList;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/AccessControlList;->aqm:Ljava/util/HashSet;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/Grant;

    iget-object v1, v0, Lcom/amazonaws/services/s3/model/Grant;->arx:Lcom/amazonaws/services/s3/model/Permission;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/amazonaws/services/s3/model/Grant;->arx:Lcom/amazonaws/services/s3/model/Permission;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lcom/amazonaws/services/s3/model/Grant;->arx:Lcom/amazonaws/services/s3/model/Permission;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/Grant;->arw:Lcom/amazonaws/services/s3/model/Grantee;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/amazonaws/services/s3/model/Permission;->values()[Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_5

    aget-object v7, v5, v3

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/Grantee;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_3
    invoke-interface {v0}, Lcom/amazonaws/services/s3/model/Grantee;->jR()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Lcom/amazonaws/services/s3/model/Grantee;->jS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    iget-object v0, v7, Lcom/amazonaws/services/s3/model/Permission;->headerName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-server-side-encryption-aws-kms-key-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "aws:kms"

    const-string v2, "x-amz-server-side-encryption"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asc:Ljava/util/Date;

    if-eqz v0, :cond_2

    const-string v1, "Expires"

    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->i(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asb:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x-amz-meta-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressEvent;->co(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    goto :goto_0
.end method

.method private b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->apF:Lcom/amazonaws/services/s3/S3ClientOptions;

    iget-boolean v0, v0, Lcom/amazonaws/services/s3/S3ClientOptions;->apJ:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazonaws/Request;->jq()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    instance-of v0, v0, Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alV:Lcom/amazonaws/ClientConfiguration;

    iget-object v1, v1, Lcom/amazonaws/ClientConfiguration;->amk:Lcom/amazonaws/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".s3-accelerate.amazonaws.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->b(Ljava/net/URI;)V

    if-eqz p3, :cond_0

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-interface {p1, p3}, Lcom/amazonaws/Request;->L(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->apF:Lcom/amazonaws/services/s3/S3ClientOptions;

    iget-boolean v0, v0, Lcom/amazonaws/services/s3/S3ClientOptions;->apI:Z

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alT:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->W(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->V(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->b(Ljava/net/URI;)V

    if-eqz p3, :cond_3

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_3
    invoke-interface {p1, p3}, Lcom/amazonaws/Request;->L(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alT:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->b(Ljava/net/URI;)V

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_5

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->L(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p3, ""

    goto :goto_1
.end method

.method private static f(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static g(Ljava/io/InputStream;)J
    .locals 7

    const/4 v6, -0x1

    const-wide/16 v0, 0x0

    const/16 v2, 0x2000

    new-array v2, v2, [B

    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v6, :cond_0

    int-to-long v4, v3

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Could not calculate content length."

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static h(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 6

    const/high16 v0, 0x40000

    const/4 v2, 0x0

    const/4 v5, -0x1

    new-array v3, v0, [B

    move v1, v2

    :goto_0
    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v5, :cond_0

    add-int/2addr v1, v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v5, :cond_1

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Input stream exceeds 256k buffer."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Failed to read from inputstream"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3, v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public final J(Ljava/lang/String;)V
    .locals 2

    const-string v0, "s3-accelerate.amazonaws.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->J(Ljava/lang/String;)V

    sget-object v0, Lcom/amazonaws/services/s3/internal/Constants;->apM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->alT:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3"

    invoke-static {v0, v1}, Lcom/amazonaws/util/AwsHostNameUtils;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->apH:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The PutObjectRequest parameter must be specified when uploading an object"

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ark:Ljava/lang/String;

    iget-object v6, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asr:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    iget-object v2, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asq:Ljava/io/InputStream;

    iget-object v1, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asu:Lcom/amazonaws/event/ProgressListener;

    invoke-static {v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v7

    if-nez v0, :cond_16

    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    move-object v1, v0

    :goto_0
    const-string v0, "The bucket name parameter must be specified when uploading an object"

    invoke-static {v5, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The key parameter must be specified when uploading an object"

    invoke-static {v6, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->b(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v8

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    if-eqz v0, :cond_15

    iget-object v3, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    iget-object v0, v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v2, "Content-Length"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->jU()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    move v2, v0

    :goto_1
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->kb()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "."

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_b

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_b

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->aC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v0, v0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v9, Lcom/amazonaws/services/s3/util/Mimetypes;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/amazonaws/services/s3/util/Mimetypes;->alS:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Recognised extension \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "\', mimetype is: \'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "\'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    :goto_2
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    if-nez v8, :cond_2

    :try_start_0
    invoke-static {v3}, Lcom/amazonaws/util/Md5Utils;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v2, "Content-MD5"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    :try_start_1
    new-instance v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-direct {v0, v3}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->anZ:Lcom/amazonaws/http/HttpMethodName;

    new-instance v9, Lcom/amazonaws/DefaultRequest;

    sget-object v3, Lcom/amazonaws/services/s3/internal/Constants;->apN:Ljava/lang/String;

    invoke-direct {v9, p1, v3}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/http/HttpMethodName;)V

    invoke-direct {p0, v9, v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ast:Lcom/amazonaws/services/s3/model/AccessControlList;

    if-eqz v2, :cond_d

    iget-object v2, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ast:Lcom/amazonaws/services/s3/model/AccessControlList;

    invoke-static {v9, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    :cond_3
    :goto_5
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->arR:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "x-amz-storage-class"

    iget-object v3, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->arR:Ljava/lang/String;

    invoke-interface {v9, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asv:Ljava/lang/String;

    if-eqz v2, :cond_14

    const-string v2, "x-amz-website-redirect-location"

    iget-object v3, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asv:Ljava/lang/String;

    invoke-interface {v9, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_14

    const-string v0, "Content-Length"

    const-string v2, "0"

    invoke-interface {v9, v0, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v0

    :goto_6
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->arv:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-eqz v0, :cond_5

    const-string v3, "x-amz-server-side-encryption-customer-algorithm"

    iget-object v4, v0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->asO:Ljava/lang/String;

    invoke-static {v9, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "x-amz-server-side-encryption-customer-key"

    iget-object v4, v0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->asM:Ljava/lang/String;

    invoke-static {v9, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "x-amz-server-side-encryption-customer-key-MD5"

    iget-object v4, v0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->asN:Ljava/lang/String;

    invoke-static {v9, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->asM:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->asN:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->asM:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "x-amz-server-side-encryption-customer-key-MD5"

    invoke-static {v0}, Lcom/amazonaws/util/Md5Utils;->l([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v3, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "Content-Length"

    iget-object v3, v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_f

    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->alS:Lorg/apache/commons/logging/Log;

    const-string v3, "No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors."

    invoke-interface {v0, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->h(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v2

    const-string v0, "Content-Length"

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v0, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_7
    if-eqz v7, :cond_13

    new-instance v0, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v0, v2, v7}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    const/4 v2, 0x2

    invoke-static {v7, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    :goto_8
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->jU()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    if-nez v8, :cond_12

    new-instance v3, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    invoke-direct {v3, v0}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    move-object v4, v3

    :goto_9
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "application/octet-stream"

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    :cond_7
    invoke-static {v9, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-interface {v9, v4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    const-string v0, "Expect"

    const-string v3, "100-continue"

    invoke-interface {v9, v0, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v9, v0, v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_2
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lcom/amazonaws/AbortedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_a
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->jU()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_11

    iget-object v1, v2, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->i([B)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_b
    if-eqz v0, :cond_10

    if-eqz v2, :cond_10

    if-nez v8, :cond_10

    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->at(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->jV()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/BinaryUtils;->as(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v0, 0x8

    invoke-static {v7, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    :cond_9
    sget-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->alS:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Extension \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\' is unrecognized in mime type listing, using default mime type: \'application/octet-stream\'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_a
    :goto_c
    const-string v0, "application/octet-stream"

    goto/16 :goto_2

    :cond_b
    sget-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->alS:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "File name has no extension, mime type cannot be recognised for: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_c

    :cond_c
    :try_start_4
    iget-object v2, v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v4, "Content-MD5"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to calculate MD5 hash: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Unable to find file to upload"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ass:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    if-eqz v2, :cond_3

    const-string v2, "x-amz-acl"

    iget-object v3, p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ass:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    invoke-static {v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->g(Ljava/io/InputStream;)J

    move-result-wide v10

    const-string v0, "Content-Length"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v0, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-ltz v3, :cond_6

    new-instance v3, Lcom/amazonaws/util/LengthCheckInputStream;

    invoke-direct {v3, v2, v10, v11}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;J)V

    const-string v2, "Content-Length"

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v2, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto/16 :goto_7

    :catch_2
    move-exception v3

    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3Client;->alS:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to cleanly close input stream: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :catch_3
    move-exception v0

    const/16 v1, 0x8

    :try_start_5
    invoke-static {v7, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Lcom/amazonaws/AbortedException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_d
    throw v0

    :catch_4
    move-exception v1

    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->alS:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to cleanly close input stream: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_10
    const/4 v1, 0x4

    invoke-static {v7, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    new-instance v3, Lcom/amazonaws/services/s3/model/PutObjectResult;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/PutObjectResult;-><init>()V

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->jV()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/amazonaws/services/s3/model/PutObjectResult;->arm:Ljava/lang/String;

    iget-object v1, v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v4, "x-amz-version-id"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/amazonaws/services/s3/model/PutObjectResult;->arq:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->jW()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/amazonaws/services/s3/internal/SSEResultBase;->aqc:Ljava/lang/String;

    iget-object v1, v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v4, "x-amz-server-side-encryption-aws-kms-key-id"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/amazonaws/services/s3/internal/SSEResultBase;->aqf:Ljava/lang/String;

    iget-object v1, v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v4, "x-amz-server-side-encryption-customer-algorithm"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/amazonaws/services/s3/internal/SSEResultBase;->aqd:Ljava/lang/String;

    iget-object v1, v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v4, "x-amz-server-side-encryption-customer-key-MD5"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/amazonaws/services/s3/internal/SSEResultBase;->aqe:Ljava/lang/String;

    iget-object v1, v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->arn:Ljava/util/Date;

    iput-object v1, v3, Lcom/amazonaws/services/s3/model/PutObjectResult;->arn:Ljava/util/Date;

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->aro:Ljava/lang/String;

    iput-object v0, v3, Lcom/amazonaws/services/s3/model/PutObjectResult;->aro:Ljava/lang/String;

    iput-object v2, v3, Lcom/amazonaws/services/s3/model/PutObjectResult;->asw:Ljava/lang/String;

    return-object v3

    :catch_5
    move-exception v3

    goto/16 :goto_a

    :catch_6
    move-exception v1

    goto :goto_d

    :cond_11
    move-object v2, v1

    goto/16 :goto_b

    :cond_12
    move-object v4, v0

    goto/16 :goto_9

    :cond_13
    move-object v0, v2

    goto/16 :goto_8

    :cond_14
    move-object v2, v0

    goto/16 :goto_6

    :cond_15
    move-object v0, v2

    goto/16 :goto_4

    :cond_16
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public final a(Lcom/amazonaws/regions/Region;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Lcom/amazonaws/regions/Region;)V

    iget-object v0, p1, Lcom/amazonaws/regions/Region;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->apH:Ljava/lang/String;

    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    new-instance v0, Lcom/amazonaws/DefaultRequest;

    sget-object v1, Lcom/amazonaws/services/s3/internal/Constants;->apN:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->l(Lcom/amazonaws/Request;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
