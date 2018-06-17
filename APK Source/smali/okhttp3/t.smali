.class public Lokhttp3/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/t$a;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/i;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cVY:Lokhttp3/m;

.field public final cVZ:Lokhttp3/b;

.field public final cWa:Lokhttp3/f;

.field final cWc:Lokhttp3/internal/a/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final cWw:Lokhttp3/internal/h/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final cYY:Lokhttp3/l;

.field final cYZ:Lokhttp3/n$a;

.field public final cZa:Lokhttp3/k;

.field public final cZb:Lokhttp3/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final cZc:Lokhttp3/b;

.field public final cZd:Lokhttp3/h;

.field final connectTimeout:I

.field public final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/i;",
            ">;"
        }
    .end annotation
.end field

.field public final followRedirects:Z

.field public final followSslRedirects:Z

.field public final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/r;",
            ">;"
        }
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/r;",
            ">;"
        }
    .end annotation
.end field

.field public final pingInterval:I

.field public final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/u;",
            ">;"
        }
    .end annotation
.end field

.field public final proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field public final retryOnConnectionFailure:Z

.field public final socketFactory:Ljavax/net/SocketFactory;

.field public final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
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

    new-array v0, v4, [Lokhttp3/u;

    sget-object v1, Lokhttp3/u;->cZh:Lokhttp3/u;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/u;->cZf:Lokhttp3/u;

    aput-object v1, v0, v3

    invoke-static {v0}, Lokhttp3/internal/c;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/t;->DEFAULT_PROTOCOLS:Ljava/util/List;

    new-array v0, v4, [Lokhttp3/i;

    sget-object v1, Lokhttp3/i;->cYJ:Lokhttp3/i;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/i;->cYL:Lokhttp3/i;

    aput-object v1, v0, v3

    invoke-static {v0}, Lokhttp3/internal/c;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/t;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    new-instance v0, Lokhttp3/t$1;

    invoke-direct {v0}, Lokhttp3/t$1;-><init>()V

    sput-object v0, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lokhttp3/t$a;

    invoke-direct {v0}, Lokhttp3/t$a;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/t;-><init>(Lokhttp3/t$a;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/t$a;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/t$a;->cYY:Lokhttp3/l;

    iput-object v0, p0, Lokhttp3/t;->cYY:Lokhttp3/l;

    iget-object v0, p1, Lokhttp3/t$a;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/t;->proxy:Ljava/net/Proxy;

    iget-object v0, p1, Lokhttp3/t$a;->protocols:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/t;->protocols:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/t$a;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/t;->connectionSpecs:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/t$a;->interceptors:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/c;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/t;->interceptors:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/t$a;->networkInterceptors:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/c;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/t;->networkInterceptors:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/t$a;->cYZ:Lokhttp3/n$a;

    iput-object v0, p0, Lokhttp3/t;->cYZ:Lokhttp3/n$a;

    iget-object v0, p1, Lokhttp3/t$a;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/t;->proxySelector:Ljava/net/ProxySelector;

    iget-object v0, p1, Lokhttp3/t$a;->cZa:Lokhttp3/k;

    iput-object v0, p0, Lokhttp3/t;->cZa:Lokhttp3/k;

    iget-object v0, p1, Lokhttp3/t$a;->cZb:Lokhttp3/c;

    iput-object v0, p0, Lokhttp3/t;->cZb:Lokhttp3/c;

    iget-object v0, p1, Lokhttp3/t$a;->cWc:Lokhttp3/internal/a/f;

    iput-object v0, p0, Lokhttp3/t;->cWc:Lokhttp3/internal/a/f;

    iget-object v0, p1, Lokhttp3/t$a;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/t;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v0, p0, Lokhttp3/t;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/i;

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lokhttp3/i;->tls:Z

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
    iget-object v0, p1, Lokhttp3/t$a;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-object v0, p1, Lokhttp3/t$a;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/t;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lokhttp3/t$a;->cWw:Lokhttp3/internal/h/c;

    iput-object v0, p0, Lokhttp3/t;->cWw:Lokhttp3/internal/h/c;

    :goto_2
    iget-object v0, p1, Lokhttp3/t$a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/t;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lokhttp3/t$a;->cWa:Lokhttp3/f;

    iget-object v2, p0, Lokhttp3/t;->cWw:Lokhttp3/internal/h/c;

    iget-object v1, v0, Lokhttp3/f;->cWw:Lokhttp3/internal/h/c;

    invoke-static {v1, v2}, Lokhttp3/internal/c;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iput-object v0, p0, Lokhttp3/t;->cWa:Lokhttp3/f;

    iget-object v0, p1, Lokhttp3/t$a;->cVZ:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/t;->cVZ:Lokhttp3/b;

    iget-object v0, p1, Lokhttp3/t$a;->cZc:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/t;->cZc:Lokhttp3/b;

    iget-object v0, p1, Lokhttp3/t$a;->cZd:Lokhttp3/h;

    iput-object v0, p0, Lokhttp3/t;->cZd:Lokhttp3/h;

    iget-object v0, p1, Lokhttp3/t$a;->cVY:Lokhttp3/m;

    iput-object v0, p0, Lokhttp3/t;->cVY:Lokhttp3/m;

    iget-boolean v0, p1, Lokhttp3/t$a;->followSslRedirects:Z

    iput-boolean v0, p0, Lokhttp3/t;->followSslRedirects:Z

    iget-boolean v0, p1, Lokhttp3/t$a;->followRedirects:Z

    iput-boolean v0, p0, Lokhttp3/t;->followRedirects:Z

    iget-boolean v0, p1, Lokhttp3/t$a;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lokhttp3/t;->retryOnConnectionFailure:Z

    iget v0, p1, Lokhttp3/t$a;->connectTimeout:I

    iput v0, p0, Lokhttp3/t;->connectTimeout:I

    iget v0, p1, Lokhttp3/t$a;->readTimeout:I

    iput v0, p0, Lokhttp3/t;->readTimeout:I

    iget v0, p1, Lokhttp3/t$a;->writeTimeout:I

    iput v0, p0, Lokhttp3/t;->writeTimeout:I

    iget v0, p1, Lokhttp3/t$a;->pingInterval:I

    iput v0, p0, Lokhttp3/t;->pingInterval:I

    iget-object v0, p0, Lokhttp3/t;->interceptors:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null interceptor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/t;->interceptors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {}, Lokhttp3/t;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/t;->systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/t;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/g/f;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/h/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/t;->cWw:Lokhttp3/internal/h/c;

    goto :goto_2

    :cond_5
    new-instance v1, Lokhttp3/f;

    iget-object v0, v0, Lokhttp3/f;->pins:Ljava/util/Set;

    invoke-direct {v1, v0, v2}, Lokhttp3/f;-><init>(Ljava/util/Set;Lokhttp3/internal/h/c;)V

    move-object v0, v1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lokhttp3/t;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null network interceptor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/t;->networkInterceptors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void
.end method

.method private static systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    :try_start_0
    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/g/f;->Ne()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p0, v2, v3

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

    invoke-static {v1, v0}, Lokhttp3/internal/c;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private static systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
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

    invoke-static {v1, v0}, Lokhttp3/internal/c;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

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
