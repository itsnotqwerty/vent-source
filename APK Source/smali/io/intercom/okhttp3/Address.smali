.class public final Lio/intercom/okhttp3/Address;
.super Ljava/lang/Object;


# instance fields
.field final certificatePinner:Lio/intercom/okhttp3/CertificatePinner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

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

.field final dns:Lio/intercom/okhttp3/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

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

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final url:Lio/intercom/okhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILio/intercom/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/intercom/okhttp3/CertificatePinner;Lio/intercom/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .param p5    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lio/intercom/okhttp3/CertificatePinner;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/intercom/okhttp3/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lio/intercom/okhttp3/CertificatePinner;",
            "Lio/intercom/okhttp3/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lio/intercom/okhttp3/HttpUrl$Builder;

    invoke-direct {v1}, Lio/intercom/okhttp3/HttpUrl$Builder;-><init>()V

    if-eqz p5, :cond_0

    const-string v0, "https"

    :goto_0
    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/intercom/okhttp3/HttpUrl$Builder;->port(I)Lio/intercom/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl$Builder;->build()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Address;->url:Lio/intercom/okhttp3/HttpUrl;

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "http"

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lio/intercom/okhttp3/Address;->dns:Lio/intercom/okhttp3/Dns;

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p4, p0, Lio/intercom/okhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    if-nez p8, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p8, p0, Lio/intercom/okhttp3/Address;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    if-nez p10, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p10}, Lio/intercom/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Address;->protocols:Ljava/util/List;

    if-nez p11, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p11}, Lio/intercom/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    if-nez p12, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object p12, p0, Lio/intercom/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iput-object p9, p0, Lio/intercom/okhttp3/Address;->proxy:Ljava/net/Proxy;

    iput-object p5, p0, Lio/intercom/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lio/intercom/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lio/intercom/okhttp3/Address;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    return-void
.end method


# virtual methods
.method public final certificatePinner()Lio/intercom/okhttp3/CertificatePinner;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    return-object v0
.end method

.method public final connectionSpecs()Ljava/util/List;
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

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public final dns()Lio/intercom/okhttp3/Dns;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->dns:Lio/intercom/okhttp3/Dns;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lio/intercom/okhttp3/Address;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/intercom/okhttp3/Address;->url:Lio/intercom/okhttp3/HttpUrl;

    move-object v0, p1

    check-cast v0, Lio/intercom/okhttp3/Address;

    iget-object v0, v0, Lio/intercom/okhttp3/Address;->url:Lio/intercom/okhttp3/HttpUrl;

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lio/intercom/okhttp3/Address;

    invoke-virtual {p0, p1}, Lio/intercom/okhttp3/Address;->equalsNonHost(Lio/intercom/okhttp3/Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final equalsNonHost(Lio/intercom/okhttp3/Address;)Z
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->dns:Lio/intercom/okhttp3/Dns;

    iget-object v1, p1, Lio/intercom/okhttp3/Address;->dns:Lio/intercom/okhttp3/Dns;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    iget-object v1, p1, Lio/intercom/okhttp3/Address;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->protocols:Ljava/util/List;

    iget-object v1, p1, Lio/intercom/okhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    iget-object v1, p1, Lio/intercom/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v1, p1, Lio/intercom/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->proxy:Ljava/net/Proxy;

    iget-object v1, p1, Lio/intercom/okhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lio/intercom/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lio/intercom/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lio/intercom/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lio/intercom/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lio/intercom/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    iget-object v1, p1, Lio/intercom/okhttp3/Address;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    invoke-static {v0, v1}, Lio/intercom/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p1}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->url:Lio/intercom/okhttp3/HttpUrl;

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/okhttp3/Address;->dns:Lio/intercom/okhttp3/Dns;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/okhttp3/Address;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/okhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/okhttp3/Address;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lio/intercom/okhttp3/Address;->certificatePinner:Lio/intercom/okhttp3/CertificatePinner;

    invoke-virtual {v1}, Lio/intercom/okhttp3/CertificatePinner;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final protocols()Ljava/util/List;
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

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public final proxy()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final proxyAuthenticator()Lio/intercom/okhttp3/Authenticator;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->proxyAuthenticator:Lio/intercom/okhttp3/Authenticator;

    return-object v0
.end method

.method public final proxySelector()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Address{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/okhttp3/Address;->url:Lio/intercom/okhttp3/HttpUrl;

    invoke-virtual {v1}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/Address;->url:Lio/intercom/okhttp3/HttpUrl;

    invoke-virtual {v1}, Lio/intercom/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/okhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final url()Lio/intercom/okhttp3/HttpUrl;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Address;->url:Lio/intercom/okhttp3/HttpUrl;

    return-object v0
.end method
