.class public final Lcom/layer/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private btZ:Lcom/layer/b/c/d;

.field private bua:Lcom/layer/b/a/b;

.field public bub:Lcom/layer/b/a/j;

.field private buc:Lcom/layer/b/a/f;

.field private bud:Lcom/layer/b/d/a;

.field private bue:Ljava/net/URL;

.field public bug:Lcom/layer/b/a/g;

.field private final buh:Ljava/lang/Object;

.field private bui:Lcom/layer/b/a/a$a;

.field private h:Ljava/lang/String;

.field public final i:Ljava/lang/Object;

.field public j:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/layer/b/d/a;Lcom/layer/b/b/a;Lcom/layer/b/a/b;Lcom/layer/b/a/f;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/layer/b/a/a;-><init>(Lcom/layer/b/d/a;Lcom/layer/b/b/a;Lcom/layer/b/a/b;Lcom/layer/b/a/f;B)V

    return-void
.end method

.method private constructor <init>(Lcom/layer/b/d/a;Lcom/layer/b/b/a;Lcom/layer/b/a/b;Lcom/layer/b/a/f;B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/b/a/a;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/b/a/a;->i:Ljava/lang/Object;

    iput-object v1, p0, Lcom/layer/b/a/a;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/layer/b/a/a;->bug:Lcom/layer/b/a/g;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/b/a/a;->buh:Ljava/lang/Object;

    iput-object p3, p0, Lcom/layer/b/a/a;->bua:Lcom/layer/b/a/b;

    iput-object v1, p0, Lcom/layer/b/a/a;->bub:Lcom/layer/b/a/j;

    iput-object p4, p0, Lcom/layer/b/a/a;->buc:Lcom/layer/b/a/f;

    iput-object p1, p0, Lcom/layer/b/a/a;->bud:Lcom/layer/b/d/a;

    invoke-virtual {p0, p2}, Lcom/layer/b/a/a;->a(Lcom/layer/b/b/a;)V

    iput-object v1, p0, Lcom/layer/b/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/layer/b/a/d;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/b/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/b/a/a;->btZ:Lcom/layer/b/c/d;

    iget-object v0, p0, Lcom/layer/b/a/a;->bua:Lcom/layer/b/a/b;

    invoke-interface {v0, p1}, Lcom/layer/b/a/b;->a(Lcom/layer/b/a/d;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Lcom/layer/b/a/a$a;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/b/a/a;->buh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/b/a/a;->bui:Lcom/layer/b/a/a$a;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Layer session-token=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/layer/b/a/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/a/a;->n:Ljava/lang/String;

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/a/a;->n:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/b/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/b/a/a;->j:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i()V
    .locals 2

    iget-object v1, p0, Lcom/layer/b/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/layer/b/a/a;->bug:Lcom/layer/b/a/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/a/a;->j:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private wM()Lcom/layer/b/a/g;
    .locals 2

    iget-object v1, p0, Lcom/layer/b/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/b/a/a;->bug:Lcom/layer/b/a/g;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private wN()Lcom/layer/b/c/d;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Initializing TLS: Generating CSR"

    invoke-static {v0}, Lcom/layer/b/e/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/b/a/a;->buc:Lcom/layer/b/a/f;

    invoke-static {v0}, Lcom/layer/b/a/e;->c(Lcom/layer/b/a/f;)Ljava/security/KeyPair;

    move-result-object v1

    iget-object v0, p0, Lcom/layer/b/a/a;->bud:Lcom/layer/b/d/a;

    invoke-virtual {v0}, Lcom/layer/b/d/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/layer/b/a/a;->bud:Lcom/layer/b/d/a;

    invoke-virtual {v2}, Lcom/layer/b/d/a;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "typ"

    const-string v5, "JWS"

    invoke-static {v3, v4, v5}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "cty"

    const-string v5, "layer-csr;v=1"

    invoke-static {v3, v4, v5}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "alg"

    const-string v5, "RS256"

    invoke-static {v3, v4, v5}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "uat"

    invoke-static {v4, v5, v0}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "prn"

    invoke-static {v4, v0, v2}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "pka"

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lb/f;->L([B)Lb/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pky"

    invoke-static {v4, v2, v0}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/b/a/e;->dx(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    const-string v5, "SHA256withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v5, v2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v5}, Ljava/security/Signature;->sign()[B

    move-result-object v2

    invoke-static {v2}, Lb/f;->L([B)Lb/f;

    move-result-object v2

    invoke-virtual {v2}, Lb/f;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Wrong number of components: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v2, v3

    invoke-static {v3}, Lb/f;->fp(Ljava/lang/String;)Lb/f;

    move-result-object v3

    invoke-virtual {v3}, Lb/f;->g()[B

    move-result-object v3

    invoke-static {v3}, Lcom/layer/b/a/e;->r([B)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "typ"

    const-string v5, "JWS"

    invoke-static {v3, v4, v5}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "cty"

    const-string v5, "layer-csr;v=1"

    invoke-static {v3, v4, v5}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "alg"

    const-string v5, "RS256"

    invoke-static {v3, v4, v5}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Lb/f;->fp(Ljava/lang/String;)Lb/f;

    move-result-object v3

    invoke-virtual {v3}, Lb/f;->g()[B

    move-result-object v3

    invoke-static {v3}, Lcom/layer/b/a/e;->r([B)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pka"

    const-string v5, "RSA"

    invoke-static {v3, v4, v5}, Lcom/layer/b/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pky"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lb/f;->fp(Ljava/lang/String;)Lb/f;

    move-result-object v3

    invoke-virtual {v3}, Lb/f;->g()[B

    move-result-object v3

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/layer/b/a/e;->dx(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v2}, Lb/f;->fp(Ljava/lang/String;)Lb/f;

    move-result-object v2

    invoke-virtual {v2}, Lb/f;->g()[B

    move-result-object v2

    const-string v5, "SHA256withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v5, v4}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v5, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Signature doesn\'t match"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Initializing TLS: Posting CSR"

    invoke-static {v2}, Lcom/layer/b/e/a;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/layer/b/a/a;->bud:Lcom/layer/b/d/a;

    iget-object v3, p0, Lcom/layer/b/a/a;->bue:Ljava/net/URL;

    iget-object v4, p0, Lcom/layer/b/a/a;->buc:Lcom/layer/b/a/f;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "csr"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2, v3, v5}, Lcom/layer/b/a/h;->a(Lcom/layer/b/d/a;Ljava/net/URL;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "certificate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no \'certificate\' attribute found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v2, "certificate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/f;->fp(Ljava/lang/String;)Lb/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/f;->g()[B

    move-result-object v0

    invoke-static {v4, v0}, Lcom/layer/b/a/e;->a(Lcom/layer/b/a/f;[B)Ljava/security/cert/Certificate;

    move-result-object v2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Initializing TLS: Saving certificate"

    invoke-static {v0}, Lcom/layer/b/e/a;->a(Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lcom/layer/b/a/d;

    iget-object v3, p0, Lcom/layer/b/a/a;->buc:Lcom/layer/b/a/f;

    iget-object v4, p0, Lcom/layer/b/a/a;->bua:Lcom/layer/b/a/b;

    invoke-interface {v4}, Lcom/layer/b/a/b;->a()[Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/layer/b/a/d;-><init>(Lcom/layer/b/a/f;Ljava/security/KeyPair;Ljava/security/cert/Certificate;[Ljava/security/PublicKey;)V

    invoke-direct {p0, v0}, Lcom/layer/b/a/a;->a(Lcom/layer/b/a/d;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Initializing TLS: Certificate ready"

    invoke-static {v1}, Lcom/layer/b/e/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/b/a/t;)V
    .locals 8

    const-string v0, "x-layer-user-id"

    invoke-virtual {p1, v0}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "x-layer-session-token"

    invoke-virtual {p1, v0}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "x-layer-session-ttl"

    invoke-virtual {p1, v0}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "x-layer-user-id"

    invoke-virtual {p1, v0}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "x-layer-session-token"

    invoke-virtual {p1, v1}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    const-string v3, "x-layer-session-ttl"

    invoke-virtual {p1, v3}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0}, Lcom/layer/b/a/a;->wM()Lcom/layer/b/a/g;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Lcom/layer/b/a/a$a;

    iget-object v3, v3, Lcom/layer/b/a/g;->c:Ljava/lang/String;

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/layer/b/a/a$a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    iget-object v1, p0, Lcom/layer/b/a/a;->buh:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v4}, Lcom/layer/b/a/a;->b(Lcom/layer/b/a/a$a;)V

    iget-object v0, p0, Lcom/layer/b/a/a;->bua:Lcom/layer/b/a/b;

    invoke-interface {v0, v4}, Lcom/layer/b/a/b;->a(Lcom/layer/b/a/a$a;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-direct {p0}, Lcom/layer/b/a/a;->i()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    :try_start_4
    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/layer/b/a/a;->i()V

    throw v0

    :cond_3
    :try_start_5
    invoke-virtual {p0}, Lcom/layer/b/a/a;->e()V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v1, 0x6

    :try_start_6
    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public final a(Lcom/layer/b/b/a;)V
    .locals 1

    invoke-interface {p1}, Lcom/layer/b/b/a;->wC()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/a/a;->bue:Ljava/net/URL;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 11

    if-nez p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Challenge may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    throw v0

    :cond_1
    const/16 v0, 0x20

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/layer/b/a/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid challenge: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/b/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v5, 0x0

    const/4 v2, 0x0

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_f

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v6, v6, 0x1

    if-eqz v4, :cond_7

    const/16 v10, 0x3d

    if-ne v1, v10, :cond_5

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v5, v4

    :goto_1
    if-ne v6, v8, :cond_3

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v0, 0x1

    :cond_3
    :goto_2
    if-eqz v0, :cond_e

    if-eqz v5, :cond_4

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_4
    new-instance v0, Lcom/layer/b/a/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid challenge: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/b/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v10, 0x2c

    if-ne v1, v10, :cond_6

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v1, v4

    goto :goto_1

    :cond_6
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v4

    goto :goto_1

    :cond_7
    if-nez v3, :cond_b

    const/16 v10, 0x2c

    if-ne v1, v10, :cond_9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v2, v1

    :cond_8
    :goto_3
    if-ne v6, v8, :cond_10

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    move v1, v4

    goto :goto_2

    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-nez v10, :cond_a

    const/16 v10, 0x20

    if-eq v1, v10, :cond_8

    const/16 v10, 0x9

    if-eq v1, v10, :cond_8

    const/16 v10, 0xa

    if-eq v1, v10, :cond_8

    const/16 v10, 0xd

    if-eq v1, v10, :cond_8

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v10, 0x22

    if-ne v1, v10, :cond_8

    const/4 v1, 0x1

    move v3, v1

    goto :goto_3

    :cond_a
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_b
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v10, 0x22

    if-ne v1, v10, :cond_8

    const/4 v1, 0x0

    move v3, v1

    goto :goto_3

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_d
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v0, 0x0

    :cond_e
    move v4, v1

    goto/16 :goto_0

    :cond_f
    const-string v0, "realm"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/a/a;->h:Ljava/lang/String;

    const-string v0, "nonce"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/layer/b/a/a;->bub:Lcom/layer/b/a/j;

    invoke-interface {v1, v0}, Lcom/layer/b/a/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_10
    move v1, v4

    goto/16 :goto_2
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/layer/b/a/a;->buh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/b/a/a;->wQ()Lcom/layer/b/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/layer/b/a/a$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/layer/b/a/a$a;->d:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/a/a;->n:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/layer/b/a/a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Layer realm=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/b/a/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", app-id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/b/a/a;->bud:Lcom/layer/b/d/a;

    invoke-virtual {v2}, Lcom/layer/b/d/a;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", identity-token=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    iget-object v1, p0, Lcom/layer/b/a/a;->buh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/b/a/a;->bua:Lcom/layer/b/a/b;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/layer/b/a/b;->a(Lcom/layer/b/a/a$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/a/a;->bui:Lcom/layer/b/a/a$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/a/a;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/layer/b/a/a;->i()V

    iget-object v0, p0, Lcom/layer/b/a/a;->bub:Lcom/layer/b/a/j;

    invoke-interface {v0}, Lcom/layer/b/a/j;->b()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/b/a/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/layer/b/a/a;->a(Lcom/layer/b/a/d;)V

    iget-object v0, p0, Lcom/layer/b/a/a;->bub:Lcom/layer/b/a/j;

    invoke-interface {v0}, Lcom/layer/b/a/j;->a()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/layer/b/a/a;->a(Lcom/layer/b/a/d;)V

    iget-object v1, p0, Lcom/layer/b/a/a;->bub:Lcom/layer/b/a/j;

    invoke-interface {v1}, Lcom/layer/b/a/j;->a()V

    throw v0
.end method

.method public final wO()Lcom/layer/b/c/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/b/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/b/a/a;->btZ:Lcom/layer/b/c/d;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/a/a;->bua:Lcom/layer/b/a/b;

    invoke-interface {v0}, Lcom/layer/b/a/b;->d()Lcom/layer/b/a/d;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "No saved TLS credentials, generating new credentials"

    invoke-static {v0}, Lcom/layer/b/e/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/layer/b/a/a;->wN()Lcom/layer/b/c/d;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/layer/b/a/a;->btZ:Lcom/layer/b/c/d;

    :cond_2
    iget-object v0, p0, Lcom/layer/b/a/a;->btZ:Lcom/layer/b/c/d;

    monitor-exit v1

    return-object v0

    :cond_3
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Using saved TLS credentials"

    invoke-static {v2}, Lcom/layer/b/e/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final wP()Lcom/layer/b/c/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/b/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection error, clearing and re-generating TLS credentials"

    invoke-static {v0}, Lcom/layer/b/e/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/b/a/a;->f()V

    invoke-direct {p0}, Lcom/layer/b/a/a;->wN()Lcom/layer/b/c/d;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final wQ()Lcom/layer/b/a/a$a;
    .locals 2

    iget-object v1, p0, Lcom/layer/b/a/a;->buh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/b/a/a;->bui:Lcom/layer/b/a/a$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/a/a;->bua:Lcom/layer/b/a/b;

    invoke-interface {v0}, Lcom/layer/b/a/b;->b()Lcom/layer/b/a/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layer/b/a/a;->b(Lcom/layer/b/a/a$a;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/b/a/a;->bui:Lcom/layer/b/a/a$a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
