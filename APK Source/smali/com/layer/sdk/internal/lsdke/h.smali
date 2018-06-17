.class public Lcom/layer/sdk/internal/lsdke/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/a/b;


# instance fields
.field private final a:[Ljava/security/PublicKey;

.field private final b:Lcom/layer/sdk/internal/lsdkk/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/a;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkk/a;-><init>()V

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdke/e;->a(Lcom/layer/b/a/f;)[Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/h;->a:[Ljava/security/PublicKey;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/n;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/h;->b:Lcom/layer/sdk/internal/lsdkk/n;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/net/Uri;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/h;->b:Lcom/layer/sdk/internal/lsdkk/n;

    const-string v2, "app_id"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/n;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/layer/b/a/a$a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/h;->b:Lcom/layer/sdk/internal/lsdkk/n;

    const-string v1, "session"

    invoke-virtual {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkk/n;->a(Ljava/lang/String;Ljava/io/Serializable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/layer/b/a/d;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/h;->b:Lcom/layer/sdk/internal/lsdkk/n;

    const-string v1, "tls"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/n;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/h;->b:Lcom/layer/sdk/internal/lsdkk/n;

    const-string v1, "tls"

    invoke-virtual {p1}, Lcom/layer/b/a/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/n;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()[Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/h;->a:[Ljava/security/PublicKey;

    return-object v0
.end method

.method public declared-synchronized b()Lcom/layer/b/a/a$a;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/h;->b:Lcom/layer/sdk/internal/lsdkk/n;

    const-string v1, "session"

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkk/n;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/a/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Landroid/net/Uri;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/h;->b:Lcom/layer/sdk/internal/lsdkk/n;

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkk/n;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/m;->a(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkd/m;->a(Ljava/util/UUID;Z)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lcom/layer/b/a/d;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TransportPersistence: Reading saved connection credentials"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/h;->b:Lcom/layer/sdk/internal/lsdkk/n;

    const-string v1, "tls"

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkk/n;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v1, Lcom/layer/sdk/internal/lsdkk/a;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdkk/a;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdke/h;->a()[Ljava/security/PublicKey;

    move-result-object v2

    const-string v3, "[|]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Input string has "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead 3 parts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v0, 0x0

    :try_start_2
    aget-object v0, v3, v0

    invoke-static {v0}, Lb/f;->fp(Ljava/lang/String;)Lb/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/f;->g()[B

    move-result-object v0

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Lb/f;->fp(Ljava/lang/String;)Lb/f;

    move-result-object v4

    invoke-virtual {v4}, Lb/f;->g()[B

    move-result-object v4

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-static {v3}, Lb/f;->fp(Ljava/lang/String;)Lb/f;

    move-result-object v3

    invoke-virtual {v3}, Lb/f;->g()[B

    move-result-object v3

    invoke-static {v1, v0, v4}, Lcom/layer/b/a/e;->a(Lcom/layer/b/a/f;[B[B)Ljava/security/KeyPair;

    move-result-object v4

    invoke-static {v1, v3}, Lcom/layer/b/a/e;->a(Lcom/layer/b/a/f;[B)Ljava/security/cert/Certificate;

    move-result-object v3

    new-instance v0, Lcom/layer/b/a/d;

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/layer/b/a/d;-><init>(Lcom/layer/b/a/f;Ljava/security/KeyPair;Ljava/security/cert/Certificate;[Ljava/security/PublicKey;)V

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TransportPersistence: Returning requested credentials"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
