.class public final Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lio/intercom/okhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lio/intercom/okhttp3/OkHttpClient;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    iput-boolean p2, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return-void
.end method

.method private createAddress(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/okhttp3/Address;
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p1}, Lio/intercom/okhttp3/HttpUrl;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->certificatePinner()Lio/intercom/okhttp3/CertificatePinner;

    move-result-object v7

    :goto_0
    new-instance v0, Lio/intercom/okhttp3/Address;

    invoke-virtual {p1}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/okhttp3/HttpUrl;->port()I

    move-result v2

    iget-object v3, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lio/intercom/okhttp3/OkHttpClient;->dns()Lio/intercom/okhttp3/Dns;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lio/intercom/okhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    iget-object v8, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v8}, Lio/intercom/okhttp3/OkHttpClient;->proxyAuthenticator()Lio/intercom/okhttp3/Authenticator;

    move-result-object v8

    iget-object v9, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v9}, Lio/intercom/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v9

    iget-object v10, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v10}, Lio/intercom/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v11}, Lio/intercom/okhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v12}, Lio/intercom/okhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lio/intercom/okhttp3/Address;-><init>(Ljava/lang/String;ILio/intercom/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/intercom/okhttp3/CertificatePinner;Lio/intercom/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0

    :cond_0
    move-object v7, v0

    move-object v6, v0

    move-object v5, v0

    goto :goto_0
.end method

.method private followUpRequest(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection()Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/intercom/okhttp3/Connection;->route()Lio/intercom/okhttp3/Route;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->code()I

    move-result v2

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :sswitch_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_4

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/intercom/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/intercom/okhttp3/OkHttpClient;->proxyAuthenticator()Lio/intercom/okhttp3/Authenticator;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/intercom/okhttp3/Authenticator;->authenticate(Lio/intercom/okhttp3/Route;Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Request;

    move-result-object v1

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/intercom/okhttp3/OkHttpClient;->authenticator()Lio/intercom/okhttp3/Authenticator;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/intercom/okhttp3/Authenticator;->authenticate(Lio/intercom/okhttp3/Route;Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Request;

    move-result-object v1

    goto :goto_1

    :sswitch_2
    const-string v0, "GET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    :sswitch_3
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/intercom/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lio/intercom/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lio/intercom/okhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_6
    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/Request;->newBuilder()Lio/intercom/okhttp3/Request$Builder;

    move-result-object v2

    invoke-static {v3}, Lio/intercom/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Lio/intercom/okhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3}, Lio/intercom/okhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v3, "GET"

    invoke-virtual {v2, v3, v1}, Lio/intercom/okhttp3/Request$Builder;->method(Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;

    :goto_3
    if-nez v4, :cond_7

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lio/intercom/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lio/intercom/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lio/intercom/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    :cond_7
    invoke-direct {p0, p1, v0}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "Authorization"

    invoke-virtual {v2, v1}, Lio/intercom/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    :cond_8
    invoke-virtual {v2, v0}, Lio/intercom/okhttp3/Request$Builder;->url(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request;->body()Lio/intercom/okhttp3/RequestBody;

    move-result-object v1

    :cond_a
    invoke-virtual {v2, v3, v1}, Lio/intercom/okhttp3/Request$Builder;->method(Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;

    goto :goto_3

    :sswitch_4
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->body()Lio/intercom/okhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lio/intercom/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->priorResponse()Lio/intercom/okhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->priorResponse()Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x198

    if-eq v0, v2, :cond_1

    :cond_b
    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_2

    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_0

    :cond_3
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private recover(Ljava/io/IOException;ZLio/intercom/okhttp3/Request;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1, p1}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/intercom/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lio/intercom/okhttp3/Request;->body()Lio/intercom/okhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lio/intercom/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v1, :cond_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sameConnection(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/HttpUrl;)Z
    .locals 3

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p2}, Lio/intercom/okhttp3/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/intercom/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->cancel()V

    :cond_0
    return-void
.end method

.method public final intercept(Lio/intercom/okhttp3/Interceptor$Chain;)Lio/intercom/okhttp3/Response;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-interface {p1}, Lio/intercom/okhttp3/Interceptor$Chain;->request()Lio/intercom/okhttp3/Request;

    move-result-object v7

    check-cast p1, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call()Lio/intercom/okhttp3/Call;

    move-result-object v3

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lio/intercom/okhttp3/EventListener;

    move-result-object v4

    new-instance v0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/intercom/okhttp3/OkHttpClient;->connectionPool()Lio/intercom/okhttp3/ConnectionPool;

    move-result-object v1

    invoke-virtual {v7}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/okhttp3/Address;

    move-result-object v2

    iget-object v5, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;-><init>(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    move-object v0, v6

    move v1, v8

    move-object v2, v7

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-eqz v5, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v5, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v2, v5, v7, v9}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->proceed(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http/HttpCodec;Lio/intercom/okhttp3/internal/connection/RealConnection;)Lio/intercom/okhttp3/Response;
    :try_end_0
    .catch Lio/intercom/okhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lio/intercom/okhttp3/Response$Builder;->body(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/intercom/okhttp3/Response$Builder;->priorResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v7

    :cond_2
    invoke-direct {p0, v7}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Request;

    move-result-object v10

    if-nez v10, :cond_5

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->release()V

    :cond_3
    return-object v7

    :catch_0
    move-exception v5

    :try_start_1
    invoke-virtual {v5}, Lio/intercom/okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct {p0, v7, v9, v2}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLio/intercom/okhttp3/Request;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Lio/intercom/okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1, v6}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->release()V

    throw v0

    :catch_1
    move-exception v5

    :try_start_2
    instance-of v7, v5, Lio/intercom/okhttp3/internal/http2/ConnectionShutdownException;

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-direct {p0, v5, v7, v2}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLio/intercom/okhttp3/Request;)Z

    move-result v7

    if-nez v7, :cond_0

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move v7, v8

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v9, v1, 0x1

    const/16 v0, 0x14

    if-le v9, v0, :cond_6

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too many follow-up requests: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v10}, Lio/intercom/okhttp3/Request;->body()Lio/intercom/okhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lio/intercom/okhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed HTTP body"

    invoke-virtual {v7}, Lio/intercom/okhttp3/Response;->code()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    invoke-virtual {v10}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/intercom/okhttp3/OkHttpClient;->connectionPool()Lio/intercom/okhttp3/ConnectionPool;

    move-result-object v1

    invoke-virtual {v10}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/okhttp3/Address;

    move-result-object v2

    iget-object v5, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;-><init>(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    :cond_8
    move-object v0, v7

    move v1, v9

    move-object v2, v10

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->codec()Lio/intercom/okhttp3/internal/http/HttpCodec;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Closing the body of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public final setCallStackTrace(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method public final streamAllocation()Lio/intercom/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
