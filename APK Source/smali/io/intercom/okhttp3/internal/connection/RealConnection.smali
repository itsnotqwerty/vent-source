.class public final Lio/intercom/okhttp3/internal/connection/RealConnection;
.super Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;

# interfaces
.implements Lio/intercom/okhttp3/Connection;


# static fields
.field private static final MAX_TUNNEL_ATTEMPTS:I = 0x15

.field private static final NPE_THROW_WITH_NULL:Ljava/lang/String; = "throw with null exception"


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lio/intercom/okhttp3/internal/connection/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectionPool:Lio/intercom/okhttp3/ConnectionPool;

.field private handshake:Lio/intercom/okhttp3/Handshake;

.field private http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lio/intercom/okhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lio/intercom/okhttp3/Route;

.field private sink:Lio/intercom/b/d;

.field private socket:Ljava/net/Socket;

.field private source:Lio/intercom/b/e;

.field public successCount:I


# direct methods
.method public constructor <init>(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Route;)V
    .locals 2

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    iput-object p1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    iput-object p2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    return-void
.end method

.method private connectSocket(IILio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_2

    :cond_0
    invoke-virtual {v0}, Lio/intercom/okhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p4, p3, v0, v1}, Lio/intercom/okhttp3/EventListener;->connectStart(Lio/intercom/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    invoke-static {}, Lio/intercom/okhttp3/internal/platform/Platform;->get()Lio/intercom/okhttp3/internal/platform/Platform;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v2}, Lio/intercom/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lio/intercom/okhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lio/intercom/b/l;->d(Ljava/net/Socket;)Lio/intercom/b/s;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lio/intercom/b/l;->c(Ljava/net/Socket;)Lio/intercom/b/r;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/b/l;->b(Lio/intercom/b/r;)Lio/intercom/b/d;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->sink:Lio/intercom/b/d;
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

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v3}, Lio/intercom/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

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

.method private connectTls(Lio/intercom/okhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lio/intercom/okhttp3/HttpUrl;->port()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lio/intercom/okhttp3/ConnectionSpec;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lio/intercom/okhttp3/internal/platform/Platform;->get()Lio/intercom/okhttp3/internal/platform/Platform;

    move-result-object v4

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lio/intercom/okhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Lio/intercom/okhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lio/intercom/okhttp3/Handshake;

    move-result-object v4

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lio/intercom/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Hostname "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not verified:\n    certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lio/intercom/okhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

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

    invoke-static {v1}, Lio/intercom/okhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_0
    :try_start_2
    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_1

    invoke-static {}, Lio/intercom/okhttp3/internal/platform/Platform;->get()Lio/intercom/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    :cond_1
    invoke-static {v2}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    throw v1

    :cond_2
    :try_start_3
    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->certificatePinner()Lio/intercom/okhttp3/CertificatePinner;

    move-result-object v5

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lio/intercom/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lio/intercom/okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Lio/intercom/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lio/intercom/okhttp3/internal/platform/Platform;->get()Lio/intercom/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lio/intercom/b/l;->d(Ljava/net/Socket;)Lio/intercom/b/s;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lio/intercom/b/l;->c(Ljava/net/Socket;)Lio/intercom/b/r;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/b/l;->b(Lio/intercom/b/r;)Lio/intercom/b/d;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->sink:Lio/intercom/b/d;

    iput-object v4, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->handshake:Lio/intercom/okhttp3/Handshake;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lio/intercom/okhttp3/Protocol;->get(Ljava/lang/String;)Lio/intercom/okhttp3/Protocol;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->protocol:Lio/intercom/okhttp3/Protocol;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    invoke-static {}, Lio/intercom/okhttp3/internal/platform/Platform;->get()Lio/intercom/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    :cond_4
    return-void

    :cond_5
    :try_start_4
    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_6
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method private connectTunnel(IIILio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->createTunnelRequest()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    invoke-direct {p0, p1, p2, p4, p5}, Lio/intercom/okhttp3/internal/connection/RealConnection;->connectSocket(IILio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;)V

    invoke-direct {p0, p2, p3, v1, v2}, Lio/intercom/okhttp3/internal/connection/RealConnection;->createTunnel(IILio/intercom/okhttp3/Request;Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/okhttp3/Request;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iput-object v5, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v5, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->sink:Lio/intercom/b/d;

    iput-object v5, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v3}, Lio/intercom/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v4}, Lio/intercom/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {p5, p4, v3, v4, v5}, Lio/intercom/okhttp3/EventListener;->connectEnd(Lio/intercom/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lio/intercom/okhttp3/Protocol;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createTunnel(IILio/intercom/okhttp3/Request;Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/okhttp3/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONNECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lio/intercom/okhttp3/internal/Util;->hostHeader(Lio/intercom/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v4, Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->sink:Lio/intercom/b/d;

    invoke-direct {v4, v2, v2, v0, v1}, Lio/intercom/okhttp3/internal/http1/Http1Codec;-><init>(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/b/e;Lio/intercom/b/d;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    invoke-interface {v0}, Lio/intercom/b/e;->timeout()Lio/intercom/b/t;

    move-result-object v0

    int-to-long v6, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lio/intercom/b/t;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/b/t;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->sink:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->timeout()Lio/intercom/b/t;

    move-result-object v0

    int-to-long v6, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lio/intercom/b/t;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/b/t;

    invoke-virtual {p3}, Lio/intercom/okhttp3/Request;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->writeRequest(Lio/intercom/okhttp3/Headers;Ljava/lang/String;)V

    invoke-virtual {v4}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->finishRequest()V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->readResponseHeaders(Z)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/intercom/okhttp3/Response$Builder;->request(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v5

    invoke-static {v5}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->contentLength(Lio/intercom/okhttp3/Response;)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    invoke-virtual {v4, v0, v1}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lio/intercom/b/s;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v4}, Lio/intercom/okhttp3/internal/Util;->skipAll(Lio/intercom/b/s;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, Lio/intercom/b/s;->close()V

    invoke-virtual {v5}, Lio/intercom/okhttp3/Response;->code()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/intercom/okhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    invoke-interface {v0}, Lio/intercom/b/e;->Kp()Lio/intercom/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/b/c;->Kr()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->sink:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->Kp()Lio/intercom/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/b/c;->Kr()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object p3, v2

    :goto_0
    return-object p3

    :sswitch_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Address;->proxyAuthenticator()Lio/intercom/okhttp3/Authenticator;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-interface {v0, v1, v5}, Lio/intercom/okhttp3/Authenticator;->authenticate(Lio/intercom/okhttp3/Route;Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Request;

    move-result-object p3

    if-nez p3, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "close"

    const-string v1, "Connection"

    invoke-virtual {v5, v1}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private createTunnelRequest()Lio/intercom/okhttp3/Request;
    .locals 4

    new-instance v0, Lio/intercom/okhttp3/Request$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Request$Builder;->url(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Host"

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v2}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/intercom/okhttp3/internal/Util;->hostHeader(Lio/intercom/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-static {}, Lio/intercom/okhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method private establishProtocol(Lio/intercom/okhttp3/internal/connection/ConnectionSpecSelector;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->protocol:Lio/intercom/okhttp3/Protocol;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3, p2}, Lio/intercom/okhttp3/EventListener;->secureConnectStart(Lio/intercom/okhttp3/Call;)V

    invoke-direct {p0, p1}, Lio/intercom/okhttp3/internal/connection/RealConnection;->connectTls(Lio/intercom/okhttp3/internal/connection/ConnectionSpecSelector;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->handshake:Lio/intercom/okhttp3/Handshake;

    invoke-virtual {p3, p2, v0}, Lio/intercom/okhttp3/EventListener;->secureConnectEnd(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Handshake;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->protocol:Lio/intercom/okhttp3/Protocol;

    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_2:Lio/intercom/okhttp3/Protocol;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;-><init>(Z)V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v2}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->sink:Lio/intercom/b/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lio/intercom/b/e;Lio/intercom/b/d;)Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->listener(Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;)Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->build()Lio/intercom/okhttp3/internal/http2/Http2Connection;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->start()V

    goto :goto_0
.end method

.method public static testConnection(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Route;Ljava/net/Socket;J)Lio/intercom/okhttp3/internal/connection/RealConnection;
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/internal/connection/RealConnection;

    invoke-direct {v0, p0, p1}, Lio/intercom/okhttp3/internal/connection/RealConnection;-><init>(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Route;)V

    iput-object p2, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iput-wide p3, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public final connect(IIIZLio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;)V
    .locals 9

    const/4 v7, 0x0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->protocol:Lio/intercom/okhttp3/Protocol;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v0

    new-instance v8, Lio/intercom/okhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v8, v0}, Lio/intercom/okhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_9

    sget-object v1, Lio/intercom/okhttp3/ConnectionSpec;->CLEARTEXT:Lio/intercom/okhttp3/ConnectionSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lio/intercom/okhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/intercom/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/intercom/okhttp3/internal/platform/Platform;->get()Lio/intercom/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Lio/intercom/okhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEARTEXT communication to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not permitted by network security policy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/intercom/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_2
    move-object v6, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lio/intercom/okhttp3/internal/connection/RealConnection;->connectTunnel(IIILio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-nez v0, :cond_7

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lio/intercom/okhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lio/intercom/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, p5, p6}, Lio/intercom/okhttp3/internal/connection/RealConnection;->connectSocket(IILio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;)V

    :cond_4
    invoke-direct {p0, v8, p5, p6}, Lio/intercom/okhttp3/internal/connection/RealConnection;->establishProtocol(Lio/intercom/okhttp3/internal/connection/ConnectionSpecSelector;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->protocol:Lio/intercom/okhttp3/Protocol;

    invoke-virtual {p6, p5, v0, v1, v2}, Lio/intercom/okhttp3/EventListener;->connectEnd(Lio/intercom/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lio/intercom/okhttp3/Protocol;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iput-object v7, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iput-object v7, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v7, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    iput-object v7, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->sink:Lio/intercom/b/d;

    iput-object v7, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->handshake:Lio/intercom/okhttp3/Handshake;

    iput-object v7, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->protocol:Lio/intercom/okhttp3/Protocol;

    iput-object v7, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v3

    move-object v0, p6

    move-object v1, p5

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lio/intercom/okhttp3/EventListener;->connectFailed(Lio/intercom/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lio/intercom/okhttp3/Protocol;Ljava/io/IOException;)V

    if-nez v6, :cond_6

    new-instance v0, Lio/intercom/okhttp3/internal/connection/RouteException;

    invoke-direct {v0, v5}, Lio/intercom/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    :goto_2
    if-eqz p4, :cond_5

    invoke-virtual {v8, v5}, Lio/intercom/okhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_5
    throw v0

    :cond_6
    invoke-virtual {v6, v5}, Lio/intercom/okhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    move-object v0, v6

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v0

    iput v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    monitor-exit v1

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_9
    move-object v6, v7

    goto/16 :goto_0
.end method

.method public final handshake()Lio/intercom/okhttp3/Handshake;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->handshake:Lio/intercom/okhttp3/Handshake;

    return-object v0
.end method

.method public final isEligible(Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/Route;)Z
    .locals 5
    .param p2    # Lio/intercom/okhttp3/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v3}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lio/intercom/okhttp3/internal/Internal;->equalsNonHost(Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/Address;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->route()Lio/intercom/okhttp3/Route;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lio/intercom/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v2}, Lio/intercom/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v2}, Lio/intercom/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p2}, Lio/intercom/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    sget-object v3, Lio/intercom/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lio/intercom/okhttp3/internal/tls/OkHostnameVerifier;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/intercom/okhttp3/internal/connection/RealConnection;->supportsUrl(Lio/intercom/okhttp3/HttpUrl;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/intercom/okhttp3/Address;->certificatePinner()Lio/intercom/okhttp3/CertificatePinner;

    move-result-object v2

    invoke-virtual {p1}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->handshake()Lio/intercom/okhttp3/Handshake;

    move-result-object v4

    invoke-virtual {v4}, Lio/intercom/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public final isHealthy(Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :try_start_1
    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    invoke-interface {v2}, Lio/intercom/b/e;->Kr()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    :try_start_2
    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

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

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newCodec(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Interceptor$Chain;Lio/intercom/okhttp3/internal/connection/StreamAllocation;)Lio/intercom/okhttp3/internal/http/HttpCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->http2Connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p1, p2, p3, v1}, Lio/intercom/okhttp3/internal/http2/Http2Codec;-><init>(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Interceptor$Chain;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http2/Http2Connection;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-interface {p2}, Lio/intercom/okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    invoke-interface {v0}, Lio/intercom/b/e;->timeout()Lio/intercom/b/t;

    move-result-object v0

    invoke-interface {p2}, Lio/intercom/okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/intercom/b/t;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/b/t;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->sink:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->timeout()Lio/intercom/b/t;

    move-result-object v0

    invoke-interface {p2}, Lio/intercom/okhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/intercom/b/t;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/b/t;

    new-instance v0, Lio/intercom/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->sink:Lio/intercom/b/d;

    invoke-direct {v0, p1, p3, v1, v2}, Lio/intercom/okhttp3/internal/http1/Http1Codec;-><init>(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/b/e;Lio/intercom/b/d;)V

    goto :goto_0
.end method

.method public final newWebSocketStreams(Lio/intercom/okhttp3/internal/connection/StreamAllocation;)Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;
    .locals 6

    new-instance v0, Lio/intercom/okhttp3/internal/connection/RealConnection$1;

    const/4 v2, 0x1

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->source:Lio/intercom/b/e;

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->sink:Lio/intercom/b/d;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/intercom/okhttp3/internal/connection/RealConnection$1;-><init>(Lio/intercom/okhttp3/internal/connection/RealConnection;ZLio/intercom/b/e;Lio/intercom/b/d;Lio/intercom/okhttp3/internal/connection/StreamAllocation;)V

    return-object v0
.end method

.method public final onSettings(Lio/intercom/okhttp3/internal/http2/Http2Connection;)V
    .locals 2

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v0

    iput v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onStream(Lio/intercom/okhttp3/internal/http2/Http2Stream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->close(Lio/intercom/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public final protocol()Lio/intercom/okhttp3/Protocol;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->protocol:Lio/intercom/okhttp3/Protocol;

    return-object v0
.end method

.method public final route()Lio/intercom/okhttp3/Route;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    return-object v0
.end method

.method public final socket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public final supportsUrl(Lio/intercom/okhttp3/HttpUrl;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lio/intercom/okhttp3/HttpUrl;->port()I

    move-result v0

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v3}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/HttpUrl;->port()I

    move-result v3

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v3}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->handshake:Lio/intercom/okhttp3/Handshake;

    if-eqz v0, :cond_1

    sget-object v3, Lio/intercom/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lio/intercom/okhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {p1}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->handshake:Lio/intercom/okhttp3/Handshake;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4, v0}, Lio/intercom/okhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

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

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Route;->address()Lio/intercom/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Address;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->handshake:Lio/intercom/okhttp3/Handshake;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->handshake:Lio/intercom/okhttp3/Handshake;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Handshake;->cipherSuite()Lio/intercom/okhttp3/CipherSuite;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection;->protocol:Lio/intercom/okhttp3/Protocol;

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
