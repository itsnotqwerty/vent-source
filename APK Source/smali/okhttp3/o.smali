.class public final Lokhttp3/o;
.super Ljava/lang/Object;


# instance fields
.field final cYQ:Lokhttp3/ab;

.field public final cYR:Lokhttp3/g;

.field final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public final peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokhttp3/ab;Lokhttp3/g;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ab;",
            "Lokhttp3/g;",
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

    iput-object p1, p0, Lokhttp3/o;->cYQ:Lokhttp3/ab;

    iput-object p2, p0, Lokhttp3/o;->cYR:Lokhttp3/g;

    iput-object p3, p0, Lokhttp3/o;->peerCertificates:Ljava/util/List;

    iput-object p4, p0, Lokhttp3/o;->localCertificates:Ljava/util/List;

    return-void
.end method

.method public static b(Ljavax/net/ssl/SSLSession;)Lokhttp3/o;
    .locals 5

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lokhttp3/g;->fq(Ljava/lang/String;)Lokhttp3/g;

    move-result-object v2

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lokhttp3/ab;->fA(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v3

    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lokhttp3/internal/c;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lokhttp3/internal/c;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_2
    new-instance v4, Lokhttp3/o;

    invoke-direct {v4, v3, v2, v0, v1}, Lokhttp3/o;-><init>(Lokhttp3/ab;Lokhttp3/g;Ljava/util/List;Ljava/util/List;)V

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
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    instance-of v1, p1, Lokhttp3/o;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lokhttp3/o;

    iget-object v1, p0, Lokhttp3/o;->cYQ:Lokhttp3/ab;

    iget-object v2, p1, Lokhttp3/o;->cYQ:Lokhttp3/ab;

    invoke-virtual {v1, v2}, Lokhttp3/ab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/o;->cYR:Lokhttp3/g;

    iget-object v2, p1, Lokhttp3/o;->cYR:Lokhttp3/g;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/o;->peerCertificates:Ljava/util/List;

    iget-object v2, p1, Lokhttp3/o;->peerCertificates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/o;->localCertificates:Ljava/util/List;

    iget-object v2, p1, Lokhttp3/o;->localCertificates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lokhttp3/o;->cYQ:Lokhttp3/ab;

    invoke-virtual {v0}, Lokhttp3/ab;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/o;->cYR:Lokhttp3/g;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/o;->peerCertificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/o;->localCertificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
