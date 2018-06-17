.class public final Lio/intercom/okhttp3/Handshake;
.super Ljava/lang/Object;


# instance fields
.field private final cipherSuite:Lio/intercom/okhttp3/CipherSuite;

.field private final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final tlsVersion:Lio/intercom/okhttp3/TlsVersion;


# direct methods
.method private constructor <init>(Lio/intercom/okhttp3/TlsVersion;Lio/intercom/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/TlsVersion;",
            "Lio/intercom/okhttp3/CipherSuite;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/Handshake;->tlsVersion:Lio/intercom/okhttp3/TlsVersion;

    iput-object p2, p0, Lio/intercom/okhttp3/Handshake;->cipherSuite:Lio/intercom/okhttp3/CipherSuite;

    iput-object p3, p0, Lio/intercom/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    iput-object p4, p0, Lio/intercom/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-void
.end method

.method public static get(Lio/intercom/okhttp3/TlsVersion;Lio/intercom/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lio/intercom/okhttp3/Handshake;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/TlsVersion;",
            "Lio/intercom/okhttp3/CipherSuite;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lio/intercom/okhttp3/Handshake;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lio/intercom/okhttp3/Handshake;

    invoke-static {p2}, Lio/intercom/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {p3}, Lio/intercom/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lio/intercom/okhttp3/Handshake;-><init>(Lio/intercom/okhttp3/TlsVersion;Lio/intercom/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lio/intercom/okhttp3/Handshake;
    .locals 5

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lio/intercom/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lio/intercom/okhttp3/CipherSuite;

    move-result-object v2

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lio/intercom/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lio/intercom/okhttp3/TlsVersion;

    move-result-object v3

    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_2
    new-instance v4, Lio/intercom/okhttp3/Handshake;

    invoke-direct {v4, v3, v2, v0, v1}, Lio/intercom/okhttp3/Handshake;-><init>(Lio/intercom/okhttp3/TlsVersion;Lio/intercom/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v4

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public final cipherSuite()Lio/intercom/okhttp3/CipherSuite;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Handshake;->cipherSuite:Lio/intercom/okhttp3/CipherSuite;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    instance-of v1, p1, Lio/intercom/okhttp3/Handshake;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lio/intercom/okhttp3/Handshake;

    iget-object v1, p0, Lio/intercom/okhttp3/Handshake;->tlsVersion:Lio/intercom/okhttp3/TlsVersion;

    iget-object v2, p1, Lio/intercom/okhttp3/Handshake;->tlsVersion:Lio/intercom/okhttp3/TlsVersion;

    invoke-virtual {v1, v2}, Lio/intercom/okhttp3/TlsVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/okhttp3/Handshake;->cipherSuite:Lio/intercom/okhttp3/CipherSuite;

    iget-object v2, p1, Lio/intercom/okhttp3/Handshake;->cipherSuite:Lio/intercom/okhttp3/CipherSuite;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    iget-object v2, p1, Lio/intercom/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    iget-object v2, p1, Lio/intercom/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/Handshake;->tlsVersion:Lio/intercom/okhttp3/TlsVersion;

    invoke-virtual {v0}, Lio/intercom/okhttp3/TlsVersion;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/okhttp3/Handshake;->cipherSuite:Lio/intercom/okhttp3/CipherSuite;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final localCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-object v0
.end method

.method public final localPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final peerCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public final peerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final tlsVersion()Lio/intercom/okhttp3/TlsVersion;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Handshake;->tlsVersion:Lio/intercom/okhttp3/TlsVersion;

    return-object v0
.end method
