.class public final Lcom/b/a/m;
.super Ljava/lang/Object;


# instance fields
.field bCG:I

.field final bIf:Lcom/b/a/o;

.field public final bIg:Lcom/b/a/c;

.field private final bIh:Lcom/b/a/n;

.field public bIi:Ljava/net/Socket;

.field bIj:Lcom/b/a/a/a/e;

.field bIk:Lcom/b/a/a/b/n;

.field public bIl:Lcom/b/a/y;

.field public bIm:Lcom/b/a/s;

.field buh:Ljava/lang/Object;

.field e:Z

.field i:J


# direct methods
.method public constructor <init>(Lcom/b/a/o;Lcom/b/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/m;->e:Z

    sget-object v0, Lcom/b/a/y;->bMk:Lcom/b/a/y;

    iput-object v0, p0, Lcom/b/a/m;->bIl:Lcom/b/a/y;

    iput-object p1, p0, Lcom/b/a/m;->bIf:Lcom/b/a/o;

    iput-object p2, p0, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v0, p1, Lcom/b/a/o;->bIn:Lcom/b/a/n;

    iput-object v0, p0, Lcom/b/a/m;->bIh:Lcom/b/a/n;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcom/b/a/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/b/a/m;->bIf:Lcom/b/a/o;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/m;->buh:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Connection already has an owner!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/b/a/m;->buh:Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final a()Z
    .locals 2

    iget-object v1, p0, Lcom/b/a/m;->bIf:Lcom/b/a/o;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/m;->buh:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/m;->buh:Ljava/lang/Object;

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final e()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final h()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/m;->bIk:Lcom/b/a/a/b/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/m;->bIk:Lcom/b/a/a/b/n;

    invoke-virtual {v0}, Lcom/b/a/a/b/n;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/m;->bIk:Lcom/b/a/a/b/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v1, v1, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    iget-object v1, v1, Lcom/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v1, v1, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    iget v1, v1, Lcom/b/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v1, v1, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v1, v1, Lcom/b/a/c;->bFU:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/b/a/m;->bIm:Lcom/b/a/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/m;->bIm:Lcom/b/a/s;

    iget-object v0, v0, Lcom/b/a/s;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/m;->bIl:Lcom/b/a/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method

.method final zs()J
    .locals 2

    iget-object v0, p0, Lcom/b/a/m;->bIk:Lcom/b/a/a/b/n;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/b/a/m;->i:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/m;->bIk:Lcom/b/a/a/b/n;

    invoke-virtual {v0}, Lcom/b/a/a/b/n;->c()J

    move-result-wide v0

    goto :goto_0
.end method
