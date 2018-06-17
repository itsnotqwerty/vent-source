.class public final Lokhttp3/internal/b/c;
.super Lokhttp3/internal/e/g$b;


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lokhttp3/internal/b/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private cWq:Lokhttp3/u;

.field public cWs:Lokhttp3/o;

.field private final cZd:Lokhttp3/h;

.field public final dab:Lokhttp3/aa;

.field dac:Lokhttp3/internal/e/g;

.field dad:Ld/e;

.field dae:Ld/d;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private rawSocket:Ljava/net/Socket;

.field public socket:Ljava/net/Socket;

.field public successCount:I


# direct methods
.method public constructor <init>(Lokhttp3/h;Lokhttp3/aa;)V
    .locals 2

    invoke-direct {p0}, Lokhttp3/internal/e/g$b;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/b/c;->allocationLimit:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/b/c;->allocations:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lokhttp3/internal/b/c;->idleAtNanos:J

    iput-object p1, p0, Lokhttp3/internal/b/c;->cZd:Lokhttp3/h;

    iput-object p2, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    return-void
.end method

.method private a(Lokhttp3/internal/b/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v6, v0, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v0, v6, Lokhttp3/a;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/b/c;->rawSocket:Ljava/net/Socket;

    iget-object v5, v6, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v5, v5, Lokhttp3/q;->host:Ljava/lang/String;

    iget-object v7, v6, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget v7, v7, Lokhttp3/q;->port:I

    const/4 v8, 0x1

    invoke-virtual {v0, v1, v5, v7, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v1, p1, Lokhttp3/internal/b/b;->nextModeIndex:I

    iget-object v5, p1, Lokhttp3/internal/b/b;->connectionSpecs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move v5, v1

    :goto_0
    if-ge v5, v7, :cond_b

    iget-object v1, p1, Lokhttp3/internal/b/b;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/i;

    invoke-virtual {v1, v0}, Lokhttp3/i;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lokhttp3/internal/b/b;->nextModeIndex:I

    move-object v5, v1

    :goto_1
    if-nez v5, :cond_2

    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find acceptable protocols. isFallback="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Lokhttp3/internal/b/b;->isFallback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", modes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lokhttp3/internal/b/b;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", supported protocols="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_2
    invoke-static {v1}, Lokhttp3/internal/c;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_3
    if-eqz v2, :cond_0

    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lokhttp3/internal/g/f;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    invoke-static {v2}, Lokhttp3/internal/c;->closeQuietly(Ljava/net/Socket;)V

    throw v1

    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p1, v0}, Lokhttp3/internal/b/b;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    iput-boolean v1, p1, Lokhttp3/internal/b/b;->isFallbackPossible:Z

    sget-object v1, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    iget-boolean v7, p1, Lokhttp3/internal/b/b;->isFallback:Z

    invoke-virtual {v1, v5, v0, v7}, Lokhttp3/internal/a;->a(Lokhttp3/i;Ljavax/net/ssl/SSLSocket;Z)V

    iget-boolean v1, v5, Lokhttp3/i;->supportsTlsExtensions:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v1

    iget-object v7, v6, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v7, v7, Lokhttp3/q;->host:Ljava/lang/String;

    iget-object v8, v6, Lokhttp3/a;->protocols:Ljava/util/List;

    invoke-virtual {v1, v0, v7, v8}, Lokhttp3/internal/g/f;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    const-string v1, "NONE"

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    :goto_4
    if-nez v1, :cond_5

    new-instance v1, Ljava/io/IOException;

    const-string v2, "a valid ssl session was not established"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :cond_4
    move v1, v4

    goto :goto_4

    :cond_5
    invoke-static {v7}, Lokhttp3/o;->b(Ljavax/net/ssl/SSLSession;)Lokhttp3/o;

    move-result-object v1

    iget-object v3, v6, Lokhttp3/a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v4, v6, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v4, v4, Lokhttp3/q;->host:Ljava/lang/String;

    invoke-interface {v3, v4, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v1, v1, Lokhttp3/o;->peerCertificates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hostname "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v4, v4, Lokhttp3/q;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not verified:\n    certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lokhttp3/f;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n    DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n    subjectAltNames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lokhttp3/internal/h/d;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    iget-object v3, v6, Lokhttp3/a;->cWa:Lokhttp3/f;

    iget-object v4, v6, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v4, v4, Lokhttp3/q;->host:Ljava/lang/String;

    iget-object v6, v1, Lokhttp3/o;->peerCertificates:Ljava/util/List;

    invoke-virtual {v3, v4, v6}, Lokhttp3/f;->check(Ljava/lang/String;Ljava/util/List;)V

    iget-boolean v3, v5, Lokhttp3/i;->supportsTlsExtensions:Z

    if-eqz v3, :cond_7

    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/internal/g/f;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    iput-object v0, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-static {v3}, Ld/l;->j(Ljava/net/Socket;)Ld/s;

    move-result-object v3

    invoke-static {v3}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/b/c;->dad:Ld/e;

    iget-object v3, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-static {v3}, Ld/l;->i(Ljava/net/Socket;)Ld/r;

    move-result-object v3

    invoke-static {v3}, Ld/l;->a(Ld/r;)Ld/d;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/b/c;->dae:Ld/d;

    iput-object v1, p0, Lokhttp3/internal/b/c;->cWs:Lokhttp3/o;

    if-eqz v2, :cond_9

    invoke-static {v2}, Lokhttp3/u;->fx(Ljava/lang/String;)Lokhttp3/u;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lokhttp3/internal/b/c;->cWq:Lokhttp3/u;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_8

    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/g/f;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    :cond_8
    return-void

    :cond_9
    :try_start_4
    sget-object v1, Lokhttp3/u;->cZf:Lokhttp3/u;
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :cond_a
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2

    :cond_b
    move-object v5, v2

    goto/16 :goto_1
.end method

.method private aU(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v1, v0, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    iget-object v0, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v0, v0, Lokhttp3/aa;->cZz:Lokhttp3/a;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v0, v0, Lokhttp3/a;->socketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/b/c;->rawSocket:Ljava/net/Socket;

    invoke-static {}, Lokhttp3/n;->Mi()V

    iget-object v0, p0, Lokhttp3/internal/b/c;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/b/c;->rawSocket:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v2, v2, Lokhttp3/aa;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/internal/g/f;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/b/c;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Ld/l;->j(Ljava/net/Socket;)Ld/s;

    move-result-object v0

    invoke-static {v0}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/b/c;->dad:Ld/e;

    iget-object v0, p0, Lokhttp3/internal/b/c;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Ld/l;->i(Ljava/net/Socket;)Ld/r;

    move-result-object v0

    invoke-static {v0}, Ld/l;->a(Ld/r;)Ld/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/b/c;->dae:Ld/d;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v3, v3, Lokhttp3/aa;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "throw with null exception"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lokhttp3/internal/e/g;)V
    .locals 2

    iget-object v1, p0, Lokhttp3/internal/b/c;->cZd:Lokhttp3/h;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/e/g;->maxConcurrentStreams()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/b/c;->allocationLimit:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lokhttp3/internal/e/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokhttp3/internal/e/b;->das:Lokhttp3/internal/e/b;

    invoke-virtual {p1, v0}, Lokhttp3/internal/e/i;->b(Lokhttp3/internal/e/b;)V

    return-void
.end method

.method public final a(Lokhttp3/a;Lokhttp3/aa;)Z
    .locals 5
    .param p2    # Lokhttp3/aa;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lokhttp3/internal/b/c;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lokhttp3/internal/b/c;->allocationLimit:I

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lokhttp3/internal/b/c;->noNewStreams:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    iget-object v3, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v3, v3, Lokhttp3/aa;->cZz:Lokhttp3/a;

    invoke-virtual {v2, v3, p1}, Lokhttp3/internal/a;->a(Lokhttp3/a;Lokhttp3/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v2, v2, Lokhttp3/q;->host:Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v3, v3, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v3, v3, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v3, v3, Lokhttp3/q;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lokhttp3/internal/b/c;->dac:Lokhttp3/internal/e/g;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v2, v2, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v2, v2, Lokhttp3/aa;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p2, Lokhttp3/aa;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v2, v2, Lokhttp3/a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    sget-object v3, Lokhttp3/internal/h/d;->dbT:Lokhttp3/internal/h/d;

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lokhttp3/a;->cVX:Lokhttp3/q;

    invoke-virtual {p0, v2}, Lokhttp3/internal/b/c;->c(Lokhttp3/q;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p1, Lokhttp3/a;->cWa:Lokhttp3/f;

    iget-object v3, p1, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v3, v3, Lokhttp3/q;->host:Ljava/lang/String;

    iget-object v4, p0, Lokhttp3/internal/b/c;->cWs:Lokhttp3/o;

    iget-object v4, v4, Lokhttp3/o;->peerCertificates:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lokhttp3/f;->check(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final c(IIIIZ)V
    .locals 9

    iget-object v0, p0, Lokhttp3/internal/b/c;->cWq:Lokhttp3/u;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v1, v1, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v1, v1, Lokhttp3/a;->connectionSpecs:Ljava/util/List;

    new-instance v3, Lokhttp3/internal/b/b;

    invoke-direct {v3, v1}, Lokhttp3/internal/b/b;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v2, v2, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v2, v2, Lokhttp3/a;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_12

    sget-object v2, Lokhttp3/i;->cYL:Lokhttp3/i;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lokhttp3/internal/b/e;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/b/e;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v1, v1, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v1, v1, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v1, v1, Lokhttp3/q;->host:Ljava/lang/String;

    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/internal/g/f;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v0, Lokhttp3/internal/b/e;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEARTEXT communication to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not permitted by network security policy"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lokhttp3/internal/b/e;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2
    move-object v2, v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    invoke-virtual {v0}, Lokhttp3/aa;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lokhttp3/w$a;

    invoke-direct {v0}, Lokhttp3/w$a;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v1, v1, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v1, v1, Lokhttp3/a;->cVX:Lokhttp3/q;

    invoke-virtual {v0, v1}, Lokhttp3/w$a;->b(Lokhttp3/q;)Lokhttp3/w$a;

    move-result-object v0

    const-string v1, "Host"

    iget-object v4, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v4, v4, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v4, v4, Lokhttp3/a;->cVX:Lokhttp3/q;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lokhttp3/internal/c;->a(Lokhttp3/q;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v0, v1, v4}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v4, "okhttp/3.10.0"

    invoke-virtual {v0, v1, v4}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/w$a;->MH()Lokhttp3/w;

    move-result-object v0

    iget-object v1, v0, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/b/c;->aU(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CONNECT "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lokhttp3/internal/c;->a(Lokhttp3/q;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " HTTP/1.1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lokhttp3/internal/d/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lokhttp3/internal/b/c;->dad:Ld/e;

    iget-object v8, p0, Lokhttp3/internal/b/c;->dae:Ld/d;

    invoke-direct {v4, v5, v6, v7, v8}, Lokhttp3/internal/d/a;-><init>(Lokhttp3/t;Lokhttp3/internal/b/g;Ld/e;Ld/d;)V

    iget-object v5, p0, Lokhttp3/internal/b/c;->dad:Ld/e;

    invoke-interface {v5}, Ld/e;->MK()Ld/t;

    move-result-object v5

    int-to-long v6, p2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ld/t;->d(JLjava/util/concurrent/TimeUnit;)Ld/t;

    iget-object v5, p0, Lokhttp3/internal/b/c;->dae:Ld/d;

    invoke-interface {v5}, Ld/d;->MK()Ld/t;

    move-result-object v5

    int-to-long v6, p3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ld/t;->d(JLjava/util/concurrent/TimeUnit;)Ld/t;

    iget-object v5, v0, Lokhttp3/w;->cZo:Lokhttp3/p;

    invoke-virtual {v4, v5, v1}, Lokhttp3/internal/d/a;->a(Lokhttp3/p;Ljava/lang/String;)V

    invoke-virtual {v4}, Lokhttp3/internal/d/a;->finishRequest()V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lokhttp3/internal/d/a;->bz(Z)Lokhttp3/y$a;

    move-result-object v1

    iput-object v0, v1, Lokhttp3/y$a;->cZt:Lokhttp3/w;

    invoke-virtual {v1}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/internal/c/e;->f(Lokhttp3/y;)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_3

    const-wide/16 v0, 0x0

    :cond_3
    invoke-virtual {v4, v0, v1}, Lokhttp3/internal/d/a;->ay(J)Ld/s;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v4}, Lokhttp3/internal/c;->a(Ld/s;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, Ld/s;->close()V

    iget v0, v5, Lokhttp3/y;->code:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response code for CONNECT: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v5, Lokhttp3/y;->code:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lokhttp3/internal/c;->closeQuietly(Ljava/net/Socket;)V

    iget-object v1, p0, Lokhttp3/internal/b/c;->rawSocket:Ljava/net/Socket;

    invoke-static {v1}, Lokhttp3/internal/c;->closeQuietly(Ljava/net/Socket;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/b/c;->rawSocket:Ljava/net/Socket;

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/b/c;->dad:Ld/e;

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/b/c;->dae:Ld/d;

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/b/c;->cWs:Lokhttp3/o;

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/b/c;->cWq:Lokhttp3/u;

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/b/c;->dac:Lokhttp3/internal/e/g;

    invoke-static {}, Lokhttp3/n;->Mm()V

    if-nez v2, :cond_e

    new-instance v1, Lokhttp3/internal/b/e;

    invoke-direct {v1, v0}, Lokhttp3/internal/b/e;-><init>(Ljava/io/IOException;)V

    :goto_1
    if-eqz p5, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, v3, Lokhttp3/internal/b/b;->isFallback:Z

    iget-boolean v2, v3, Lokhttp3/internal/b/b;->isFallbackPossible:Z

    if-eqz v2, :cond_f

    instance-of v2, v0, Ljava/net/ProtocolException;

    if-nez v2, :cond_f

    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_f

    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_f

    :cond_4
    instance-of v2, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_f

    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v2, :cond_5

    instance-of v0, v0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_f

    :cond_5
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_2

    :cond_6
    throw v1

    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/b/c;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->Nj()Ld/c;

    move-result-object v0

    invoke-virtual {v0}, Ld/c;->Kr()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lokhttp3/internal/b/c;->dae:Ld/d;

    invoke-interface {v0}, Ld/d;->Nj()Ld/c;

    move-result-object v0

    invoke-virtual {v0}, Ld/c;->Kr()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iget-object v0, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v0, v0, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v0, v0, Lokhttp3/a;->cVZ:Lokhttp3/b;

    invoke-interface {v0}, Lokhttp3/b;->LV()Lokhttp3/w;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lokhttp3/internal/b/c;->rawSocket:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_a

    :goto_3
    iget-object v0, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    invoke-virtual {v0}, Lokhttp3/aa;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lokhttp3/internal/b/c;->rawSocket:Ljava/net/Socket;

    if-nez v0, :cond_10

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lokhttp3/internal/b/e;

    invoke-direct {v1, v0}, Lokhttp3/internal/b/e;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_9
    :try_start_2
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/b/c;->aU(II)V

    :cond_a
    iget-object v0, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v0, v0, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v0, v0, Lokhttp3/a;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_c

    sget-object v0, Lokhttp3/u;->cZf:Lokhttp3/u;

    iput-object v0, p0, Lokhttp3/internal/b/c;->cWq:Lokhttp3/u;

    iget-object v0, p0, Lokhttp3/internal/b/c;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    :cond_b
    :goto_4
    invoke-static {}, Lokhttp3/n;->Ml()V

    goto :goto_3

    :cond_c
    invoke-static {}, Lokhttp3/n;->Mj()V

    invoke-direct {p0, v3}, Lokhttp3/internal/b/c;->a(Lokhttp3/internal/b/b;)V

    invoke-static {}, Lokhttp3/n;->Mk()V

    iget-object v0, p0, Lokhttp3/internal/b/c;->cWq:Lokhttp3/u;

    sget-object v1, Lokhttp3/u;->cZh:Lokhttp3/u;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Lokhttp3/internal/e/g$a;

    invoke-direct {v0}, Lokhttp3/internal/e/g$a;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    iget-object v4, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v4, v4, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v4, v4, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v4, v4, Lokhttp3/q;->host:Ljava/lang/String;

    iget-object v5, p0, Lokhttp3/internal/b/c;->dad:Ld/e;

    iget-object v6, p0, Lokhttp3/internal/b/c;->dae:Ld/d;

    iput-object v1, v0, Lokhttp3/internal/e/g$a;->socket:Ljava/net/Socket;

    iput-object v4, v0, Lokhttp3/internal/e/g$a;->hostname:Ljava/lang/String;

    iput-object v5, v0, Lokhttp3/internal/e/g$a;->dad:Ld/e;

    iput-object v6, v0, Lokhttp3/internal/e/g$a;->dae:Ld/d;

    iput-object p0, v0, Lokhttp3/internal/e/g$a;->daZ:Lokhttp3/internal/e/g$b;

    iput p4, v0, Lokhttp3/internal/e/g$a;->dbk:I

    new-instance v1, Lokhttp3/internal/e/g;

    invoke-direct {v1, v0}, Lokhttp3/internal/e/g;-><init>(Lokhttp3/internal/e/g$a;)V

    iput-object v1, p0, Lokhttp3/internal/b/c;->dac:Lokhttp3/internal/e/g;

    iget-object v0, p0, Lokhttp3/internal/b/c;->dac:Lokhttp3/internal/e/g;

    iget-object v1, v0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    invoke-virtual {v1}, Lokhttp3/internal/e/j;->connectionPreface()V

    iget-object v1, v0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    iget-object v4, v0, Lokhttp3/internal/e/g;->dbd:Lokhttp3/internal/e/m;

    invoke-virtual {v1, v4}, Lokhttp3/internal/e/j;->c(Lokhttp3/internal/e/m;)V

    iget-object v1, v0, Lokhttp3/internal/e/g;->dbd:Lokhttp3/internal/e/m;

    invoke-virtual {v1}, Lokhttp3/internal/e/m;->getInitialWindowSize()I

    move-result v1

    const v4, 0xffff

    if-eq v1, v4, :cond_d

    iget-object v4, v0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    const/4 v5, 0x0

    const v6, 0xffff

    sub-int/2addr v1, v6

    int-to-long v6, v1

    invoke-virtual {v4, v5, v6, v7}, Lokhttp3/internal/e/j;->windowUpdate(IJ)V

    :cond_d
    new-instance v1, Ljava/lang/Thread;

    iget-object v0, v0, Lokhttp3/internal/e/g;->dbg:Lokhttp3/internal/e/g$d;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_e
    iget-object v1, v2, Lokhttp3/internal/b/e;->lastException:Ljava/io/IOException;

    invoke-static {v0, v1}, Lokhttp3/internal/b/e;->addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V

    iput-object v0, v2, Lokhttp3/internal/b/e;->lastException:Ljava/io/IOException;

    move-object v1, v2

    goto/16 :goto_1

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lokhttp3/internal/b/c;->dac:Lokhttp3/internal/e/g;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lokhttp3/internal/b/c;->cZd:Lokhttp3/h;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/b/c;->dac:Lokhttp3/internal/e/g;

    invoke-virtual {v0}, Lokhttp3/internal/e/g;->maxConcurrentStreams()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/b/c;->allocationLimit:I

    monitor-exit v1

    :cond_11
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_12
    move-object v2, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method public final c(Lokhttp3/q;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lokhttp3/q;->port:I

    iget-object v3, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v3, v3, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v3, v3, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget v3, v3, Lokhttp3/q;->port:I

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lokhttp3/q;->host:Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v3, v3, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v3, v3, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v3, v3, Lokhttp3/q;->host:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/b/c;->cWs:Lokhttp3/o;

    if-eqz v0, :cond_1

    sget-object v0, Lokhttp3/internal/h/d;->dbT:Lokhttp3/internal/h/d;

    iget-object v3, p1, Lokhttp3/q;->host:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/internal/b/c;->cWs:Lokhttp3/o;

    iget-object v0, v0, Lokhttp3/o;->peerCertificates:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v3, v0}, Lokhttp3/internal/h/d;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final isHealthy(Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lokhttp3/internal/b/c;->dac:Lokhttp3/internal/e/g;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lokhttp3/internal/b/c;->dac:Lokhttp3/internal/e/g;

    invoke-virtual {v2}, Lokhttp3/internal/e/g;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, Lokhttp3/internal/b/c;->dad:Ld/e;

    invoke-interface {v2}, Ld/e;->Kr()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v4, p0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final isMultiplexed()Z
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/b/c;->dac:Lokhttp3/internal/e/g;

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

    iget-object v1, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v1, v1, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v1, v1, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v1, v1, Lokhttp3/q;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v1, v1, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v1, v1, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget v1, v1, Lokhttp3/q;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v1, v1, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v1, v1, Lokhttp3/aa;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/internal/b/c;->cWs:Lokhttp3/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/b/c;->cWs:Lokhttp3/o;

    iget-object v0, v0, Lokhttp3/o;->cYR:Lokhttp3/g;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/b/c;->cWq:Lokhttp3/u;

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
