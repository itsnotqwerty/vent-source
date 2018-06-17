.class public final Lio/intercom/okhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Lio/intercom/okhttp3/Authenticator;

.field cache:Lio/intercom/okhttp3/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field certificateChainCleaner:Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lio/intercom/okhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Lio/intercom/okhttp3/CookieJar;

.field dispatcher:Lio/intercom/okhttp3/Dispatcher;

.field dns:Lio/intercom/okhttp3/Dns;

.field eventListenerFactory:Lio/intercom/okhttp3/EventListener$Factory;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    new-instance v0, Lio/intercom/okhttp3/Dispatcher;

    invoke-direct {v0}, Lio/intercom/okhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->dispatcher:Lio/intercom/okhttp3/Dispatcher;

    sget-object v0, Lio/intercom/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    sget-object v0, Lio/intercom/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    sget-object v0, Lio/intercom/okhttp3/EventListener;->NONE:Lio/intercom/okhttp3/EventListener;

    invoke-static {v0}, Lio/intercom/okhttp3/EventListener;->factory(Lio/intercom/okhttp3/EventListener;)Lio/intercom/okhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lio/intercom/okhttp3/EventListener$Factory;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    sget-object v0, Lio/intercom/okhttp3/CookieJar;->NO_COOKIES:Lio/intercom/okhttp3/CookieJar;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->cookieJar:Lio/intercom/okhttp3/CookieJar;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    sget-object v0, Lio/intercom/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lio/intercom/okhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lio/intercom/okhttp3/CertificatePinner;->DEFAULT:Lio/intercom/okhttp3/CertificatePinner;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    sget-object v0, Lio/intercom/okhttp3/Authenticator;->NONE:Lio/intercom/okhttp3/Authenticator;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    sget-object v0, Lio/intercom/okhttp3/Authenticator;->NONE:Lio/intercom/okhttp3/Authenticator;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->authenticator:Lio/intercom/okhttp3/Authenticator;

    new-instance v0, Lio/intercom/okhttp3/ConnectionPool;

    invoke-direct {v0}, Lio/intercom/okhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    sget-object v0, Lio/intercom/okhttp3/Dns;->SYSTEM:Lio/intercom/okhttp3/Dns;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->dns:Lio/intercom/okhttp3/Dns;

    iput-boolean v1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput v2, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v2, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v2, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method

.method constructor <init>(Lio/intercom/okhttp3/OkHttpClient;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->dispatcher:Lio/intercom/okhttp3/Dispatcher;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->dispatcher:Lio/intercom/okhttp3/Dispatcher;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lio/intercom/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lio/intercom/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->eventListenerFactory:Lio/intercom/okhttp3/EventListener$Factory;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lio/intercom/okhttp3/EventListener$Factory;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->cookieJar:Lio/intercom/okhttp3/CookieJar;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->cookieJar:Lio/intercom/okhttp3/CookieJar;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->cache:Lio/intercom/okhttp3/Cache;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->cache:Lio/intercom/okhttp3/Cache;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->certificateChainCleaner:Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->authenticator:Lio/intercom/okhttp3/Authenticator;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->authenticator:Lio/intercom/okhttp3/Authenticator;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient;->dns:Lio/intercom/okhttp3/Dns;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->dns:Lio/intercom/okhttp3/Dns;

    iget-boolean v0, p1, Lio/intercom/okhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iget-boolean v0, p1, Lio/intercom/okhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    iget-boolean v0, p1, Lio/intercom/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iget v0, p1, Lio/intercom/okhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    iget v0, p1, Lio/intercom/okhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->readTimeout:I

    iget v0, p1, Lio/intercom/okhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    iget v0, p1, Lio/intercom/okhttp3/OkHttpClient;->pingInterval:I

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method


# virtual methods
.method public final addInterceptor(Lio/intercom/okhttp3/Interceptor;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addNetworkInterceptor(Lio/intercom/okhttp3/Interceptor;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final authenticator(Lio/intercom/okhttp3/Authenticator;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->authenticator:Lio/intercom/okhttp3/Authenticator;

    return-object p0
.end method

.method public final build()Lio/intercom/okhttp3/OkHttpClient;
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/OkHttpClient;-><init>(Lio/intercom/okhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public final cache(Lio/intercom/okhttp3/Cache;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lio/intercom/okhttp3/Cache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->cache:Lio/intercom/okhttp3/Cache;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    return-object p0
.end method

.method public final certificatePinner(Lio/intercom/okhttp3/CertificatePinner;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    return-object p0
.end method

.method public final connectTimeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lio/intercom/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    return-object p0
.end method

.method public final connectionPool(Lio/intercom/okhttp3/ConnectionPool;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionPool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    return-object p0
.end method

.method public final connectionSpecs(Ljava/util/List;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/ConnectionSpec;",
            ">;)",
            "Lio/intercom/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lio/intercom/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public final cookieJar(Lio/intercom/okhttp3/CookieJar;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookieJar == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->cookieJar:Lio/intercom/okhttp3/CookieJar;

    return-object p0
.end method

.method public final dispatcher(Lio/intercom/okhttp3/Dispatcher;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->dispatcher:Lio/intercom/okhttp3/Dispatcher;

    return-object p0
.end method

.method public final dns(Lio/intercom/okhttp3/Dns;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->dns:Lio/intercom/okhttp3/Dns;

    return-object p0
.end method

.method public final eventListener(Lio/intercom/okhttp3/EventListener;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventListener == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lio/intercom/okhttp3/EventListener;->factory(Lio/intercom/okhttp3/EventListener;)Lio/intercom/okhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lio/intercom/okhttp3/EventListener$Factory;

    return-object p0
.end method

.method public final eventListenerFactory(Lio/intercom/okhttp3/EventListener$Factory;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventListenerFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lio/intercom/okhttp3/EventListener$Factory;

    return-object p0
.end method

.method public final followRedirects(Z)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 0

    iput-boolean p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    return-object p0
.end method

.method public final followSslRedirects(Z)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 0

    iput-boolean p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    return-object p0
.end method

.method public final hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hostnameVerifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public final networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public final pingInterval(JLjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, Lio/intercom/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->pingInterval:I

    return-object p0
.end method

.method public final protocols(Ljava/util/List;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Protocol;",
            ">;)",
            "Lio/intercom/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "protocols doesn\'t contain http/1.1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_1_0:Lio/intercom/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "protocols must not contain http/1.0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, Lio/intercom/okhttp3/Protocol;->SPDY_3:Lio/intercom/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    return-object p0
.end method

.method public final proxy(Ljava/net/Proxy;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public final proxyAuthenticator(Lio/intercom/okhttp3/Authenticator;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    return-object p0
.end method

.method public final proxySelector(Ljava/net/ProxySelector;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public final readTimeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lio/intercom/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->readTimeout:I

    return-object p0
.end method

.method public final retryOnConnectionFailure(Z)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 0

    iput-boolean p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    return-object p0
.end method

.method final setInternalCache(Lio/intercom/okhttp3/internal/cache/InternalCache;)V
    .locals 1
    .param p1    # Lio/intercom/okhttp3/internal/cache/InternalCache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->cache:Lio/intercom/okhttp3/Cache;

    return-void
.end method

.method public final socketFactory(Ljavax/net/SocketFactory;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {}, Lio/intercom/okhttp3/internal/platform/Platform;->get()Lio/intercom/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/SSLSocketFactory;)Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;

    return-object p0
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p2}, Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;

    return-object p0
.end method

.method public final writeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lio/intercom/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    return-object p0
.end method
