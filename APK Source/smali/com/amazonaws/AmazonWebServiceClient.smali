.class public abstract Lcom/amazonaws/AmazonWebServiceClient;
.super Ljava/lang/Object;


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;


# instance fields
.field private volatile alN:Ljava/lang/String;

.field protected volatile alT:Ljava/net/URI;

.field protected volatile alU:Ljava/lang/String;

.field protected alV:Lcom/amazonaws/ClientConfiguration;

.field protected alW:Lcom/amazonaws/http/AmazonHttpClient;

.field protected final alX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation
.end field

.field protected alY:I

.field protected volatile alZ:Lcom/amazonaws/auth/Signer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/AmazonWebServiceClient;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->alV:Lcom/amazonaws/ClientConfiguration;

    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alW:Lcom/amazonaws/http/AmazonHttpClient;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alX:Ljava/util/List;

    return-void
.end method

.method private K(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->alV:Lcom/amazonaws/ClientConfiguration;

    iget-object v1, v1, Lcom/amazonaws/ClientConfiguration;->amk:Lcom/amazonaws/Protocol;

    invoke-virtual {v1}, Lcom/amazonaws/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alV:Lcom/amazonaws/ClientConfiguration;

    iget-object v0, v0, Lcom/amazonaws/ClientConfiguration;->amw:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/amazonaws/auth/SignerFactory;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v1

    :goto_0
    instance-of v0, v1, Lcom/amazonaws/auth/RegionAwareSigner;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/amazonaws/auth/RegionAwareSigner;

    if-eqz p3, :cond_2

    invoke-interface {v0, p3}, Lcom/amazonaws/auth/RegionAwareSigner;->N(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    invoke-static {v0, p1}, Lcom/amazonaws/auth/SignerFactory;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {v0, p2}, Lcom/amazonaws/auth/RegionAwareSigner;->N(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Endpoint is not set. Use setEndpoint to set an endpoint before performing any request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->jn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazonaws/util/AwsHostNameUtils;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public J(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->K(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->alU:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alT:Ljava/net/URI;

    iput-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->alZ:Lcom/amazonaws/auth/Signer;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alU:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amazonaws/regions/Region;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No region provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->jn()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/amazonaws/regions/Region;->aoS:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/amazonaws/regions/Region;->aoS:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazonaws/AmazonWebServiceClient;->K(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iget-object v2, p1, Lcom/amazonaws/regions/Region;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/AmazonWebServiceClient;->alU:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v5}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alT:Ljava/net/URI;

    iput-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->alZ:Lcom/amazonaws/auth/Signer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    const-string v0, "%s.%s.%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/amazonaws/regions/Region;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/amazonaws/regions/Region;->domain:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazonaws/AmazonWebServiceClient;->alS:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/amazonaws/regions/Region;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "} was not found in region metadata, trying to construct an endpoint using the standard pattern for this region: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_1

    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auf:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->kd()Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->kj()Lcom/amazonaws/util/TimingInfo;

    invoke-interface {p2}, Lcom/amazonaws/Request;->jq()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/amazonaws/AmazonWebServiceRequest;->amb:Lcom/amazonaws/metrics/RequestMetricCollector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alW:Lcom/amazonaws/http/AmazonHttpClient;

    iget-object v0, v0, Lcom/amazonaws/http/AmazonHttpClient;->amb:Lcom/amazonaws/metrics/RequestMetricCollector;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->jJ()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/metrics/RequestMetricCollector;->jO()V

    :cond_1
    return-void
.end method

.method protected final a(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/amazonaws/AmazonWebServiceRequest;->amb:Lcom/amazonaws/metrics/RequestMetricCollector;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazonaws/metrics/RequestMetricCollector;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->alW:Lcom/amazonaws/http/AmazonHttpClient;

    iget-object v1, v1, Lcom/amazonaws/http/AmazonHttpClient;->amb:Lcom/amazonaws/metrics/RequestMetricCollector;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->jJ()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/amazonaws/metrics/RequestMetricCollector;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final jn()Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alN:Ljava/lang/String;

    if-nez v0, :cond_6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alN:Ljava/lang/String;

    if-nez v0, :cond_5

    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    invoke-static {v0, p0}, Lcom/amazonaws/util/Classes;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/ServiceNameFactory;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alN:Ljava/lang/String;

    monitor-exit p0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "JavaClient"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, "Client"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized suffix for the AWS http client class name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v2, v0

    :try_start_1
    const-string v0, "Amazon"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_3

    const-string v0, "AWS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized prefix for the AWS http client class name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x3

    :goto_2
    if-lt v1, v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized AWS http client class name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x6

    goto :goto_2

    :cond_4
    add-int/2addr v0, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->aC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->alN:Ljava/lang/String;

    goto :goto_1
.end method
