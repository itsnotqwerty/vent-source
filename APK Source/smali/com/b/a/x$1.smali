.class final Lcom/b/a/x$1;
.super Lcom/b/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/m;Lcom/b/a/a/a/g;)Lcom/b/a/a/a/t;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/b/a/m;->bIk:Lcom/b/a/a/b/n;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/b/a/a/a/r;

    iget-object v1, p1, Lcom/b/a/m;->bIk:Lcom/b/a/a/b/n;

    invoke-direct {v0, p2, v1}, Lcom/b/a/a/a/r;-><init>(Lcom/b/a/a/a/g;Lcom/b/a/a/b/n;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/b/a/a/a/i;

    iget-object v1, p1, Lcom/b/a/m;->bIj:Lcom/b/a/a/a/e;

    invoke-direct {v0, p2, v1}, Lcom/b/a/a/a/i;-><init>(Lcom/b/a/a/a/g;Lcom/b/a/a/a/e;)V

    goto :goto_0
.end method

.method public final a(Lcom/b/a/x;)Lcom/b/a/a/c;
    .locals 1

    iget-object v0, p1, Lcom/b/a/x;->bLY:Lcom/b/a/a/c;

    return-object v0
.end method

.method public final a(Lcom/b/a/m;Lcom/b/a/y;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p1, Lcom/b/a/m;->bIl:Lcom/b/a/y;

    return-void
.end method

.method public final a(Lcom/b/a/m;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/b/a/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p1, Lcom/b/a/m;->bIf:Lcom/b/a/o;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/b/a/m;->buh:Ljava/lang/Object;

    if-eq v0, p2, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/b/a/m;->buh:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lcom/b/a/o;Lcom/b/a/m;)V
    .locals 3

    invoke-virtual {p2}, Lcom/b/a/m;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/b/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/b/a/m;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-static {v0}, Lcom/b/a/a/i;->a(Ljava/net/Socket;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/b/a/a/g;->zw()Lcom/b/a/a/g;

    move-result-object v0

    iget-object v1, p2, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/b/a/o;->a(Lcom/b/a/m;)V

    iget v0, p2, Lcom/b/a/m;->bCG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/b/a/m;->bCG:I

    iget-object v0, p2, Lcom/b/a/m;->bIk:Lcom/b/a/a/b/n;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/b/a/a/g;->zw()Lcom/b/a/a/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to untagSocket(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/g;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-static {v0}, Lcom/b/a/a/i;->a(Ljava/net/Socket;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/b/a/m;->i:J

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/b/a/p;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/b/a/a/i;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_3

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    const-string v2, "TLS_FALLBACK_SCSV"

    aput-object v2, v1, v0

    :goto_1
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/b/a/p;->h:[Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/b/a/a/i;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Lcom/b/a/p$a;

    invoke-direct {v2, p1}, Lcom/b/a/p$a;-><init>(Lcom/b/a/p;)V

    invoke-virtual {v2, v1}, Lcom/b/a/p$a;->e([Ljava/lang/String;)Lcom/b/a/p$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/p$a;->f([Ljava/lang/String;)Lcom/b/a/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/p$a;->zZ()Lcom/b/a/p;

    move-result-object v0

    iget-object v1, v0, Lcom/b/a/p;->h:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    iget-object v0, v0, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public final a(Lcom/b/a/t$a;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, ":"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/t$a;->N(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    :goto_0
    return-void

    :cond_0
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/t$a;->N(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0, p2}, Lcom/b/a/t$a;->N(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    goto :goto_0
.end method

.method public final a(Lcom/b/a/x;Lcom/b/a/m;Lcom/b/a/a/a/g;Lcom/b/a/aa;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b/a/a/a/o;
        }
    .end annotation

    const/high16 v9, 0x10000

    const/4 v8, 0x0

    invoke-virtual {p2, p3}, Lcom/b/a/m;->a(Ljava/lang/Object;)V

    iget-boolean v0, p2, Lcom/b/a/m;->e:Z

    if-nez v0, :cond_9

    iget-object v0, p2, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v0, v0, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    iget-object v6, v0, Lcom/b/a/a;->j:Ljava/util/List;

    iget v1, p1, Lcom/b/a/x;->y:I

    iget v2, p1, Lcom/b/a/x;->z:I

    iget v3, p1, Lcom/b/a/x;->bMj:I

    iget-boolean v7, p1, Lcom/b/a/x;->bMi:Z

    iget-boolean v0, p2, Lcom/b/a/m;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/b/a/a/a/q;

    iget-object v4, p2, Lcom/b/a/m;->bIf:Lcom/b/a/o;

    invoke-direct {v0, p2, v4}, Lcom/b/a/a/a/q;-><init>(Lcom/b/a/m;Lcom/b/a/o;)V

    iget-object v4, p2, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v4, v4, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    iget-object v4, v4, Lcom/b/a/a;->bFN:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v4, :cond_3

    iget-object v5, p2, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/b/a/a/a/q;->a(IIILcom/b/a/aa;Lcom/b/a/c;Ljava/util/List;Z)Lcom/b/a/a/a/q$a;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lcom/b/a/a/a/q$a;->bJK:Ljava/net/Socket;

    iput-object v1, p2, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    iget-object v1, v0, Lcom/b/a/a/a/q$a;->bJM:Lcom/b/a/s;

    iput-object v1, p2, Lcom/b/a/m;->bIm:Lcom/b/a/s;

    iget-object v1, v0, Lcom/b/a/a/a/q$a;->bJL:Lcom/b/a/y;

    if-nez v1, :cond_5

    iget-object v0, p2, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v0, v0, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    iget-object v0, v0, Lcom/b/a/a;->bCF:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/y;

    iput-object v0, p2, Lcom/b/a/m;->bIl:Lcom/b/a/y;

    :goto_1
    iput-object v0, p2, Lcom/b/a/m;->bIl:Lcom/b/a/y;

    :try_start_0
    iget-object v0, p2, Lcom/b/a/m;->bIl:Lcom/b/a/y;

    sget-object v1, Lcom/b/a/y;->bJL:Lcom/b/a/y;

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lcom/b/a/m;->bIl:Lcom/b/a/y;

    sget-object v1, Lcom/b/a/y;->bMl:Lcom/b/a/y;

    if-ne v0, v1, :cond_6

    :cond_1
    iget-object v0, p2, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Lcom/b/a/a/b/n$a;

    iget-object v1, p2, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v1, v1, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    iget-object v1, v1, Lcom/b/a/a;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/b/n$a;-><init>(Ljava/lang/String;Ljava/net/Socket;)V

    iget-object v1, p2, Lcom/b/a/m;->bIl:Lcom/b/a/y;

    iput-object v1, v0, Lcom/b/a/a/b/n$a;->bLu:Lcom/b/a/y;

    new-instance v1, Lcom/b/a/a/b/n;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/b/a/a/b/n;-><init>(Lcom/b/a/a/b/n$a;B)V

    iput-object v1, p2, Lcom/b/a/m;->bIk:Lcom/b/a/a/b/n;

    iget-object v0, p2, Lcom/b/a/m;->bIk:Lcom/b/a/a/b/n;

    iget-object v1, v0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    invoke-interface {v1}, Lcom/b/a/a/b/c;->a()V

    iget-object v1, v0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    iget-object v2, v0, Lcom/b/a/a/b/n;->bLg:Lcom/b/a/a/b/l;

    invoke-interface {v1, v2}, Lcom/b/a/a/b/c;->b(Lcom/b/a/a/b/l;)V

    iget-object v1, v0, Lcom/b/a/a/b/n;->bLg:Lcom/b/a/a/b/l;

    invoke-virtual {v1}, Lcom/b/a/a/b/l;->zS()I

    move-result v1

    if-eq v1, v9, :cond_2

    iget-object v0, v0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    const/4 v2, 0x0

    sub-int/2addr v1, v9

    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, Lcom/b/a/a/b/c;->g(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/b/a/m;->e:Z

    invoke-virtual {p2}, Lcom/b/a/m;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, p1, Lcom/b/a/x;->bMf:Lcom/b/a/o;

    invoke-virtual {p2}, Lcom/b/a/m;->k()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    sget-object v0, Lcom/b/a/p;->bLN:Lcom/b/a/p;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/b/a/a/a/o;

    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CLEARTEXT communication not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/b/a/a/a/o;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_4
    iget-object v3, p2, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    invoke-static {v2, v1, v3}, Lcom/b/a/a/a/q;->a(IILcom/b/a/c;)Ljava/net/Socket;

    move-result-object v1

    new-instance v0, Lcom/b/a/a/a/q$a;

    invoke-direct {v0, v3, v1}, Lcom/b/a/a/a/q$a;-><init>(Lcom/b/a/c;Ljava/net/Socket;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, v0, Lcom/b/a/a/a/q$a;->bJL:Lcom/b/a/y;

    goto/16 :goto_1

    :cond_6
    :try_start_1
    new-instance v0, Lcom/b/a/a/a/e;

    iget-object v1, p2, Lcom/b/a/m;->bIf:Lcom/b/a/o;

    iget-object v2, p2, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-direct {v0, v1, p2, v2}, Lcom/b/a/a/a/e;-><init>(Lcom/b/a/o;Lcom/b/a/m;Ljava/net/Socket;)V

    iput-object v0, p2, Lcom/b/a/m;->bIj:Lcom/b/a/a/a/e;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/b/a/a/a/o;

    invoke-direct {v1, v0}, Lcom/b/a/a/a/o;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_7
    invoke-virtual {p2}, Lcom/b/a/m;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    monitor-enter v1

    :try_start_2
    invoke-virtual {v1, p2}, Lcom/b/a/o;->a(Lcom/b/a/m;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    iget-object v0, p1, Lcom/b/a/x;->bLV:Lcom/b/a/a/h;

    iget-object v1, p2, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    invoke-virtual {v0, v1}, Lcom/b/a/a/h;->b(Lcom/b/a/c;)V

    :cond_9
    iget v0, p1, Lcom/b/a/x;->z:I

    iget v1, p1, Lcom/b/a/x;->bMj:I

    iget-boolean v2, p2, Lcom/b/a/m;->e:Z

    if-nez v2, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTimeouts - not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_a
    iget-object v2, p2, Lcom/b/a/m;->bIj:Lcom/b/a/a/a/e;

    if-eqz v2, :cond_b

    :try_start_4
    iget-object v2, p2, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    iget-object v2, p2, Lcom/b/a/m;->bIj:Lcom/b/a/a/a/e;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/a/a/e;->aA(II)V

    :cond_b
    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lcom/b/a/a/a/o;

    invoke-direct {v1, v0}, Lcom/b/a/a/a/o;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final b(Lcom/b/a/x;)Lcom/b/a/a/h;
    .locals 1

    iget-object v0, p1, Lcom/b/a/x;->bLV:Lcom/b/a/a/h;

    return-object v0
.end method

.method public final b(Lcom/b/a/m;Lcom/b/a/a/a/g;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/b/a/m;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/b/a/m;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/b/a/m;->a()Z

    move-result v0

    return v0
.end method

.method public final c(Lcom/b/a/m;)I
    .locals 1

    iget v0, p1, Lcom/b/a/m;->bCG:I

    return v0
.end method

.method public final c(Lcom/b/a/x;)Lcom/b/a/a/e;
    .locals 1

    invoke-static {p1}, Lcom/b/a/x;->d(Lcom/b/a/x;)Lcom/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/b/a/m;)Z
    .locals 1

    iget-object v0, p1, Lcom/b/a/m;->bIj:Lcom/b/a/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/b/a/m;->bIj:Lcom/b/a/a/a/e;

    invoke-virtual {v0}, Lcom/b/a/a/a/e;->f()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
