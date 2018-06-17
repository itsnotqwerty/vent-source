.class final Lcom/layer/b/c/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic buI:Lcom/layer/b/c/c;


# direct methods
.method constructor <init>(Lcom/layer/b/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/c/c$1;->buI:Lcom/layer/b/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v7, 0x6

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-static {v7}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "checkServerTrusted: X509Certificate array is null"

    invoke-static {v0}, Lcom/layer/b/e/a;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "checkServerTrusted: X509Certificate array is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    if-gtz v0, :cond_3

    invoke-static {v7}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "checkServerTrusted: X509Certificate is empty"

    invoke-static {v0}, Lcom/layer/b/e/a;->c(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "checkServerTrusted: X509Certificate is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->checkValidity()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/layer/b/c/c$1;->buI:Lcom/layer/b/c/c;

    invoke-static {v0}, Lcom/layer/b/c/c;->a(Lcom/layer/b/c/c;)Lcom/layer/b/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/b/c/d;->wT()[Ljava/security/PublicKey;

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_7

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    move v3, v1

    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-object v6, v4, v3

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    :cond_5
    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-nez v2, :cond_9

    invoke-static {v7}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "checkServerTrusted: CertificateException : Pinning failure"

    invoke-static {v0}, Lcom/layer/b/e/a;->c(Ljava/lang/String;)V

    :cond_8
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Server is not trusted"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
