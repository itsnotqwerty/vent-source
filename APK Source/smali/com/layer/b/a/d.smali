.class public final Lcom/layer/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/c/d;


# instance fields
.field private final bum:Ljava/security/KeyPair;

.field private final bun:Ljava/security/cert/Certificate;

.field private final buo:[Ljava/security/PublicKey;

.field private final bup:[Ljavax/net/ssl/X509KeyManager;


# direct methods
.method public constructor <init>(Lcom/layer/b/a/f;Ljava/security/KeyPair;Ljava/security/cert/Certificate;[Ljava/security/PublicKey;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null CryptoFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null KeyPair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null Certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null PublicKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p4

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No PublicKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p2, p0, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    iput-object p3, p0, Lcom/layer/b/a/d;->bun:Ljava/security/cert/Certificate;

    iput-object p4, p0, Lcom/layer/b/a/d;->buo:[Ljava/security/PublicKey;

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/X509KeyManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    iget-object v3, p0, Lcom/layer/b/a/d;->bun:Ljava/security/cert/Certificate;

    invoke-static {p1, v2, v3}, Lcom/layer/b/a/e;->a(Lcom/layer/b/a/f;Ljava/security/KeyPair;Ljava/security/cert/Certificate;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/a/d;->bup:[Ljavax/net/ssl/X509KeyManager;

    return-void
.end method

.method private static a(Ljava/security/Key;Ljava/security/Key;)Z
    .locals 2

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/layer/b/a/d;->bun:Ljava/security/cert/Certificate;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lb/f;->L([B)Lb/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lb/f;->L([B)Lb/f;

    move-result-object v1

    invoke-virtual {v1}, Lb/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lb/f;->L([B)Lb/f;

    move-result-object v1

    invoke-virtual {v1}, Lb/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/layer/b/a/d;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/layer/b/a/d;

    :try_start_0
    iget-object v2, p0, Lcom/layer/b/a/d;->bun:Ljava/security/cert/Certificate;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/layer/b/a/d;->bun:Ljava/security/cert/Certificate;

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    if-nez v2, :cond_4

    move v2, v1

    :goto_2
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    if-nez v2, :cond_6

    move v2, v1

    :goto_3
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/layer/b/a/d;->bun:Ljava/security/cert/Certificate;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/layer/b/a/d;->bun:Ljava/security/cert/Certificate;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/layer/b/a/d;->bun:Ljava/security/cert/Certificate;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    iget-object v3, p1, Lcom/layer/b/a/d;->bun:Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    iget-object v3, p1, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/b/a/d;->a(Ljava/security/Key;Ljava/security/Key;)Z

    move-result v2

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    iget-object v3, p1, Lcom/layer/b/a/d;->bum:Ljava/security/KeyPair;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/b/a/d;->a(Ljava/security/Key;Ljava/security/Key;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_3

    :cond_7
    move v2, v0

    goto :goto_3

    :catch_0
    move-exception v1

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public final wS()[Ljavax/net/ssl/X509KeyManager;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/a/d;->bup:[Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method public final wT()[Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/a/d;->buo:[Ljava/security/PublicKey;

    return-object v0
.end method
