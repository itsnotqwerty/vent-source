.class public final Lcom/b/a/a/a/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a/q$a;
    }
.end annotation


# instance fields
.field private final bJH:Lcom/b/a/m;

.field private final bJI:Lcom/b/a/o;


# direct methods
.method public constructor <init>(Lcom/b/a/m;Lcom/b/a/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/q;->bJH:Lcom/b/a/m;

    iput-object p2, p0, Lcom/b/a/a/a/q;->bJI:Lcom/b/a/o;

    return-void
.end method

.method public static a(IILcom/b/a/c;)Ljava/net/Socket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b/a/a/a/o;
        }
    .end annotation

    invoke-static {}, Lcom/b/a/a/g;->zw()Lcom/b/a/a/g;

    move-result-object v1

    :try_start_0
    iget-object v2, p2, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    iget-object v0, p2, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/b/a/a;->bFM:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p2, Lcom/b/a/c;->bFU:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v0, v2, p1}, Lcom/b/a/a/g;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/b/a/a/a/o;

    invoke-direct {v1, v0}, Lcom/b/a/a/a/o;-><init>(Ljava/io/IOException;)V

    throw v1
.end method


# virtual methods
.method public final a(IIILcom/b/a/aa;Lcom/b/a/c;Ljava/util/List;Z)Lcom/b/a/a/a/q$a;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/b/a/aa;",
            "Lcom/b/a/c;",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/p;",
            ">;Z)",
            "Lcom/b/a/a/a/q$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b/a/a/a/o;
        }
    .end annotation

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    new-instance v8, Lcom/b/a/a/a;

    move-object/from16 v0, p6

    invoke-direct {v8, v0}, Lcom/b/a/a/a;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    move-object v4, v2

    :goto_0
    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, p1, v1}, Lcom/b/a/a/a/q;->a(IILcom/b/a/c;)Ljava/net/Socket;

    move-result-object v9

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    iget-object v2, v2, Lcom/b/a/a;->bFN:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_4

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/a/i;->c(Ljava/net/URL;)I

    move-result v5

    const-string v2, "https"

    invoke-static {v2}, Lcom/b/a/a/i;->dD(Ljava/lang/String;)I

    move-result v2

    if-ne v5, v2, :cond_5

    move-object v2, v3

    :goto_2
    new-instance v6, Lcom/b/a/aa$a;

    invoke-direct {v6}, Lcom/b/a/aa$a;-><init>()V

    new-instance v10, Ljava/net/URL;

    const-string v11, "https"

    const-string v12, "/"

    invoke-direct {v10, v11, v3, v5, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/b/a/aa$a;->g(Ljava/net/URL;)Lcom/b/a/aa$a;

    move-result-object v3

    const-string v5, "Host"

    invoke-virtual {v3, v5, v2}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v2

    const-string v3, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v2, v3, v5}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v2

    const-string v3, "User-Agent"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, "User-Agent"

    invoke-virtual {v2, v5, v3}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_0
    const-string v3, "Proxy-Authorization"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "Proxy-Authorization"

    invoke-virtual {v2, v5, v3}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_1
    invoke-virtual {v2}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v2

    new-instance v5, Lcom/b/a/a/a/e;

    iget-object v3, p0, Lcom/b/a/a/a/q;->bJI:Lcom/b/a/o;

    iget-object v6, p0, Lcom/b/a/a/a/q;->bJH:Lcom/b/a/m;

    invoke-direct {v5, v3, v6, v9}, Lcom/b/a/a/a/e;-><init>(Lcom/b/a/o;Lcom/b/a/m;Ljava/net/Socket;)V

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Lcom/b/a/a/a/e;->aA(II)V

    invoke-virtual {v2}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "CONNECT "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/b/a/a/i;->c(Ljava/net/URL;)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " HTTP/1.1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    iget-object v3, v2, Lcom/b/a/aa;->bMo:Lcom/b/a/t;

    invoke-virtual {v5, v3, v6}, Lcom/b/a/a/a/e;->a(Lcom/b/a/t;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/b/a/a/a/e;->d()V

    invoke-virtual {v5}, Lcom/b/a/a/a/e;->zz()Lcom/b/a/ac$a;

    move-result-object v3

    iput-object v2, v3, Lcom/b/a/ac$a;->bIK:Lcom/b/a/aa;

    invoke-virtual {v3}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object v10

    invoke-static {v10}, Lcom/b/a/a/a/j;->i(Lcom/b/a/ac;)J

    move-result-wide v2

    const-wide/16 v12, -0x1

    cmp-long v11, v2, v12

    if-nez v11, :cond_3

    const-wide/16 v2, 0x0

    :cond_3
    invoke-virtual {v5, v2, v3}, Lcom/b/a/a/a/e;->P(J)Lb/s;

    move-result-object v2

    const v3, 0x7fffffff

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v11}, Lcom/b/a/a/i;->a(Lb/s;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v2}, Lb/s;->close()V

    iget v2, v10, Lcom/b/a/ac;->c:I

    sparse-switch v2, :sswitch_data_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response code for CONNECT: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v10, Lcom/b/a/ac;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Lcom/b/a/a/a/o;

    invoke-direct {v3, v2}, Lcom/b/a/a/a/o;-><init>(Ljava/io/IOException;)V

    throw v3

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :sswitch_0
    iget-object v2, v5, Lcom/b/a/a/a/e;->bIP:Lb/e;

    invoke-interface {v2}, Lb/e;->KU()Lb/c;

    move-result-object v2

    iget-wide v2, v2, Lb/c;->b:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_6

    new-instance v2, Ljava/io/IOException;

    const-string v3, "TLS tunnel buffered too many bytes!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_1
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    iget-object v2, v2, Lcom/b/a/a;->bFQ:Lcom/b/a/e;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    invoke-static {v2, v10, v3}, Lcom/b/a/a/a/j;->a(Lcom/b/a/e;Lcom/b/a/ac;Ljava/net/Proxy;)Lcom/b/a/aa;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to authenticate with proxy"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    const/4 v3, 0x0

    :try_start_2
    iget-object v2, v7, Lcom/b/a/a;->bFN:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v5, v7, Lcom/b/a/a;->b:Ljava/lang/String;

    iget v6, v7, Lcom/b/a/a;->c:I

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v5, v6, v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-virtual {v8, v2}, Lcom/b/a/a/a;->b(Ljavax/net/ssl/SSLSocket;)Lcom/b/a/p;

    move-result-object v5

    invoke-static {}, Lcom/b/a/a/g;->zw()Lcom/b/a/a/g;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    const/4 v3, 0x0

    :try_start_4
    iget-boolean v10, v5, Lcom/b/a/p;->e:Z

    if-eqz v10, :cond_7

    iget-object v10, v7, Lcom/b/a/a;->b:Ljava/lang/String;

    iget-object v11, v7, Lcom/b/a/a;->bCF:Ljava/util/List;

    invoke-virtual {v6, v2, v10, v11}, Lcom/b/a/a/g;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_7
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v10

    invoke-static {v10}, Lcom/b/a/s;->a(Ljavax/net/ssl/SSLSession;)Lcom/b/a/s;

    move-result-object v10

    iget-boolean v5, v5, Lcom/b/a/p;->e:Z

    if-eqz v5, :cond_8

    invoke-virtual {v6, v2}, Lcom/b/a/a/g;->e(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {v5}, Lcom/b/a/y;->dL(Ljava/lang/String;)Lcom/b/a/y;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    :cond_8
    :try_start_5
    invoke-virtual {v6, v2}, Lcom/b/a/a/g;->d(Ljavax/net/ssl/SSLSocket;)V

    iget-object v5, v7, Lcom/b/a/a;->bFO:Ljavax/net/ssl/HostnameVerifier;

    iget-object v6, v7, Lcom/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v11

    invoke-interface {v5, v6, v11}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    check-cast v3, Ljava/security/cert/X509Certificate;

    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Hostname "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v7, Lcom/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " not verified:\n    certificate: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/b/a/j;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "\n    DN: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "\n    subjectAltNames: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/b/a/a/c/b;->b(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v3

    move-object v5, v3

    move-object v6, v2

    :goto_3
    if-eqz p7, :cond_d

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/b/a/a/a;->d:Z

    instance-of v2, v5, Ljava/net/ProtocolException;

    if-nez v2, :cond_c

    instance-of v2, v5, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_c

    instance-of v2, v5, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_9

    invoke-virtual {v5}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_c

    :cond_9
    instance-of v2, v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_c

    instance-of v2, v5, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v2, :cond_a

    instance-of v2, v5, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v2, :cond_c

    :cond_a
    iget-boolean v2, v8, Lcom/b/a/a/a;->c:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_d

    const/4 v2, 0x1

    move v3, v2

    :goto_5
    invoke-static {v6}, Lcom/b/a/a/i;->a(Ljava/net/Socket;)V

    invoke-static {v9}, Lcom/b/a/a/i;->a(Ljava/net/Socket;)V

    if-nez v4, :cond_e

    new-instance v2, Lcom/b/a/a/a/o;

    invoke-direct {v2, v5}, Lcom/b/a/a/a/o;-><init>(Ljava/io/IOException;)V

    :goto_6
    if-nez v3, :cond_10

    throw v2

    :catchall_0
    move-exception v3

    :try_start_6
    invoke-virtual {v6, v2}, Lcom/b/a/a/g;->d(Ljavax/net/ssl/SSLSocket;)V

    throw v3

    :cond_b
    iget-object v5, v7, Lcom/b/a/a;->bFP:Lcom/b/a/j;

    iget-object v6, v7, Lcom/b/a/a;->b:Ljava/lang/String;

    iget-object v11, v10, Lcom/b/a/s;->b:Ljava/util/List;

    invoke-virtual {v5, v6, v11}, Lcom/b/a/j;->c(Ljava/lang/String;Ljava/util/List;)V

    new-instance v5, Lcom/b/a/a/a/q$a;

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v2, v3, v10}, Lcom/b/a/a/a/q$a;-><init>(Lcom/b/a/c;Ljavax/net/ssl/SSLSocket;Lcom/b/a/y;Lcom/b/a/s;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    return-object v5

    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    move v3, v2

    goto :goto_5

    :cond_e
    iget-object v2, v4, Lcom/b/a/a/a/o;->bJA:Ljava/io/IOException;

    sget-object v6, Lcom/b/a/a/a/o;->bID:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_f

    :try_start_7
    sget-object v6, Lcom/b/a/a/a/o;->bID:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v6, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_f
    :goto_7
    iput-object v5, v4, Lcom/b/a/a/a/o;->bJA:Ljava/io/IOException;

    move-object v2, v4

    goto :goto_6

    :cond_10
    move-object v4, v2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto :goto_7

    :catch_3
    move-exception v2

    goto :goto_7

    :catch_4
    move-exception v2

    move-object v5, v2

    move-object v6, v3

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method
