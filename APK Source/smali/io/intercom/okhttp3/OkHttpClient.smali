.class public Lio/intercom/okhttp3/OkHttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Call$Factory;
.implements Lio/intercom/okhttp3/WebSocket$Factory;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lio/intercom/okhttp3/Authenticator;

.field final cache:Lio/intercom/okhttp3/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final certificateChainCleaner:Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lio/intercom/okhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lio/intercom/okhttp3/CookieJar;

.field final dispatcher:Lio/intercom/okhttp3/Dispatcher;

.field final dns:Lio/intercom/okhttp3/Dns;

.field final eventListenerFactory:Lio/intercom/okhttp3/EventListener$Factory;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

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

.field final internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;
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

.field final pingInterval:I

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Lio/intercom/okhttp3/Protocol;

    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_2:Lio/intercom/okhttp3/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    aput-object v1, v0, v3

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    new-array v0, v4, [Lio/intercom/okhttp3/ConnectionSpec;

    sget-object v1, Lio/intercom/okhttp3/ConnectionSpec;->MODERN_TLS:Lio/intercom/okhttp3/ConnectionSpec;

    aput-object v1, v0, v2

    sget-object v1, Lio/intercom/okhttp3/ConnectionSpec;->CLEARTEXT:Lio/intercom/okhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    new-instance v0, Lio/intercom/okhttp3/OkHttpClient$1;

    invoke-direct {v0}, Lio/intercom/okhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/okhttp3/OkHttpClient;-><init>(Lio/intercom/okhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method constructor <init>(Lio/intercom/okhttp3/OkHttpClient$Builder;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->dispatcher:Lio/intercom/okhttp3/Dispatcher;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->dispatcher:Lio/intercom/okhttp3/Dispatcher;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lio/intercom/okhttp3/EventListener$Factory;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->eventListenerFactory:Lio/intercom/okhttp3/EventListener$Factory;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->cookieJar:Lio/intercom/okhttp3/CookieJar;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->cookieJar:Lio/intercom/okhttp3/CookieJar;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->cache:Lio/intercom/okhttp3/Cache;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->cache:Lio/intercom/okhttp3/Cache;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/ConnectionSpec;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/intercom/okhttp3/ConnectionSpec;->isTls()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->certificateChainCleaner:Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;

    :goto_2
    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    iget-object v1, p0, Lio/intercom/okhttp3/OkHttpClient;->certificateChainCleaner:Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/CertificatePinner;->withCertificateChainCleaner(Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;)Lio/intercom/okhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->authenticator:Lio/intercom/okhttp3/Authenticator;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->authenticator:Lio/intercom/okhttp3/Authenticator;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    iget-object v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->dns:Lio/intercom/okhttp3/Dns;

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->dns:Lio/intercom/okhttp3/Dns;

    iget-boolean v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v0, p0, Lio/intercom/okhttp3/OkHttpClient;->followSslRedirects:Z

    iget-boolean v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v0, p0, Lio/intercom/okhttp3/OkHttpClient;->followRedirects:Z

    iget-boolean v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lio/intercom/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iget v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient;->connectTimeout:I

    iget v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient;->readTimeout:I

    iget v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient;->writeTimeout:I

    iget v0, p1, Lio/intercom/okhttp3/OkHttpClient$Builder;->pingInterval:I

    iput v0, p0, Lio/intercom/okhttp3/OkHttpClient;->pingInterval:I

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null interceptor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0}, Lio/intercom/okhttp3/OkHttpClient;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/okhttp3/OkHttpClient;->systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->certificateChainCleaner:Lio/intercom/okhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null network interceptor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method private systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "No System TLS"

    invoke-static {v1, v0}, Lio/intercom/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected default trust managers:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "No System TLS"

    invoke-static {v1, v0}, Lio/intercom/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method


# virtual methods
.method public authenticator()Lio/intercom/okhttp3/Authenticator;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->authenticator:Lio/intercom/okhttp3/Authenticator;

    return-object v0
.end method

.method public cache()Lio/intercom/okhttp3/Cache;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->cache:Lio/intercom/okhttp3/Cache;

    return-object v0
.end method

.method public certificatePinner()Lio/intercom/okhttp3/CertificatePinner;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    iget v0, p0, Lio/intercom/okhttp3/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Lio/intercom/okhttp3/ConnectionPool;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lio/intercom/okhttp3/CookieJar;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->cookieJar:Lio/intercom/okhttp3/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lio/intercom/okhttp3/Dispatcher;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->dispatcher:Lio/intercom/okhttp3/Dispatcher;

    return-object v0
.end method

.method public dns()Lio/intercom/okhttp3/Dns;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->dns:Lio/intercom/okhttp3/Dns;

    return-object v0
.end method

.method public eventListenerFactory()Lio/intercom/okhttp3/EventListener$Factory;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->eventListenerFactory:Lio/intercom/okhttp3/EventListener$Factory;

    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/okhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/okhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
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

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lio/intercom/okhttp3/internal/cache/InternalCache;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->cache:Lio/intercom/okhttp3/Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->cache:Lio/intercom/okhttp3/Cache;

    iget-object v0, v0, Lio/intercom/okhttp3/Cache;->internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->internalCache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    goto :goto_0
.end method

.method public networkInterceptors()Ljava/util/List;
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

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/OkHttpClient$Builder;-><init>(Lio/intercom/okhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Call;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/intercom/okhttp3/RealCall;->newRealCall(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Request;Z)Lio/intercom/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public newWebSocket(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/WebSocketListener;)Lio/intercom/okhttp3/WebSocket;
    .locals 2

    new-instance v0, Lio/intercom/okhttp3/internal/ws/RealWebSocket;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;-><init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/WebSocketListener;Ljava/util/Random;)V

    invoke-virtual {v0, p0}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->connect(Lio/intercom/okhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public pingIntervalMillis()I
    .locals 1

    iget v0, p0, Lio/intercom/okhttp3/OkHttpClient;->pingInterval:I

    return v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lio/intercom/okhttp3/Authenticator;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 1

    iget v0, p0, Lio/intercom/okhttp3/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 1

    iget v0, p0, Lio/intercom/okhttp3/OkHttpClient;->writeTimeout:I

    return v0
.end method
