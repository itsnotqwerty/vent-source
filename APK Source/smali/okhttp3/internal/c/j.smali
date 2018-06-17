.class public final Lokhttp3/internal/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/r;


# instance fields
.field public callStackTrace:Ljava/lang/Object;

.field public volatile canceled:Z

.field private final cgQ:Lokhttp3/t;

.field private volatile dak:Lokhttp3/internal/b/g;

.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Lokhttp3/t;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iput-boolean p2, p0, Lokhttp3/internal/c/j;->forWebSocket:Z

    return-void
.end method

.method private static a(Lokhttp3/y;I)I
    .locals 2

    const-string v0, "Retry-After"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/y;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    goto :goto_0
.end method

.method private a(Ljava/io/IOException;Lokhttp3/internal/b/g;ZLokhttp3/w;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2, p1}, Lokhttp3/internal/b/g;->streamFailed(Ljava/io/IOException;)V

    iget-object v2, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-boolean v2, v2, Lokhttp3/t;->retryOnConnectionFailure:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v2, p4, Lokhttp3/w;->cZp:Lokhttp3/x;

    instance-of v2, v2, Lokhttp3/internal/c/l;

    if-nez v2, :cond_0

    :cond_2
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_5

    move v2, v0

    :goto_1
    if-eqz v2, :cond_0

    iget-object v2, p2, Lokhttp3/internal/b/g;->dab:Lokhttp3/aa;

    if-nez v2, :cond_4

    iget-object v2, p2, Lokhttp3/internal/b/g;->dag:Lokhttp3/internal/b/f$a;

    if-eqz v2, :cond_3

    iget-object v2, p2, Lokhttp3/internal/b/g;->dag:Lokhttp3/internal/b/f$a;

    invoke-virtual {v2}, Lokhttp3/internal/b/f$a;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p2, Lokhttp3/internal/b/g;->dah:Lokhttp3/internal/b/f;

    invoke-virtual {v2}, Lokhttp3/internal/b/f;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    move v2, v1

    :goto_2
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_7

    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_6

    if-eqz p3, :cond_9

    :cond_6
    move v2, v0

    goto :goto_1

    :cond_7
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_1

    :cond_8
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v2, :cond_9

    move v2, v0

    goto :goto_1

    :cond_9
    move v2, v1

    goto :goto_1

    :cond_a
    move v2, v0

    goto :goto_2
.end method

.method private static a(Lokhttp3/y;Lokhttp3/q;)Z
    .locals 3

    iget-object v0, p0, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v0, v0, Lokhttp3/w;->cVX:Lokhttp3/q;

    iget-object v1, v0, Lokhttp3/q;->host:Ljava/lang/String;

    iget-object v2, p1, Lokhttp3/q;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lokhttp3/q;->port:I

    iget v2, p1, Lokhttp3/q;->port:I

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lokhttp3/q;->scheme:Ljava/lang/String;

    iget-object v1, p1, Lokhttp3/q;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lokhttp3/q;)Lokhttp3/a;
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p1}, Lokhttp3/q;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v5, v0, Lokhttp3/t;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v6, v0, Lokhttp3/t;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v7, v0, Lokhttp3/t;->cWa:Lokhttp3/f;

    :goto_0
    new-instance v0, Lokhttp3/a;

    iget-object v1, p1, Lokhttp3/q;->host:Ljava/lang/String;

    iget v2, p1, Lokhttp3/q;->port:I

    iget-object v3, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v3, v3, Lokhttp3/t;->cVY:Lokhttp3/m;

    iget-object v4, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v4, v4, Lokhttp3/t;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v8, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v8, v8, Lokhttp3/t;->cVZ:Lokhttp3/b;

    iget-object v9, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v9, v9, Lokhttp3/t;->proxy:Ljava/net/Proxy;

    iget-object v10, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v10, v10, Lokhttp3/t;->protocols:Ljava/util/List;

    iget-object v11, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v11, v11, Lokhttp3/t;->connectionSpecs:Ljava/util/List;

    iget-object v12, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v12, v12, Lokhttp3/t;->proxySelector:Ljava/net/ProxySelector;

    invoke-direct/range {v0 .. v12}, Lokhttp3/a;-><init>(Ljava/lang/String;ILokhttp3/m;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/f;Lokhttp3/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0

    :cond_0
    move-object v7, v0

    move-object v6, v0

    move-object v5, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lokhttp3/r$a;)Lokhttp3/y;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-interface {p1}, Lokhttp3/r$a;->MD()Lokhttp3/w;

    move-result-object v7

    check-cast p1, Lokhttp3/internal/c/g;

    iget-object v3, p1, Lokhttp3/internal/c/g;->daf:Lokhttp3/e;

    iget-object v4, p1, Lokhttp3/internal/c/g;->cZl:Lokhttp3/n;

    new-instance v0, Lokhttp3/internal/b/g;

    iget-object v1, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v1, v1, Lokhttp3/t;->cZd:Lokhttp3/h;

    iget-object v2, v7, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-direct {p0, v2}, Lokhttp3/internal/c/j;->e(Lokhttp3/q;)Lokhttp3/a;

    move-result-object v2

    iget-object v5, p0, Lokhttp3/internal/c/j;->callStackTrace:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/b/g;-><init>(Lokhttp3/h;Lokhttp3/a;Lokhttp3/e;Lokhttp3/n;Ljava/lang/Object;)V

    iput-object v0, p0, Lokhttp3/internal/c/j;->dak:Lokhttp3/internal/b/g;

    move-object v2, v6

    move v5, v8

    move-object v1, v0

    move-object v10, v7

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/c/j;->canceled:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lokhttp3/internal/b/g;->release()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, v10, v1, v0, v7}, Lokhttp3/internal/c/g;->a(Lokhttp3/w;Lokhttp3/internal/b/g;Lokhttp3/internal/c/c;Lokhttp3/internal/b/c;)Lokhttp3/y;
    :try_end_0
    .catch Lokhttp3/internal/b/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v2, :cond_4

    invoke-virtual {v7}, Lokhttp3/y;->MI()Lokhttp3/y$a;

    move-result-object v0

    invoke-virtual {v2}, Lokhttp3/y;->MI()Lokhttp3/y$a;

    move-result-object v2

    iput-object v6, v2, Lokhttp3/y$a;->cZu:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v2

    iget-object v7, v2, Lokhttp3/y;->cZu:Lokhttp3/z;

    if-eqz v7, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v7, v0, Lokhttp3/internal/b/e;->lastException:Ljava/io/IOException;

    const/4 v9, 0x0

    invoke-direct {p0, v7, v1, v9, v10}, Lokhttp3/internal/c/j;->a(Ljava/io/IOException;Lokhttp3/internal/b/g;ZLokhttp3/w;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v0, v0, Lokhttp3/internal/b/e;->lastException:Ljava/io/IOException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v6}, Lokhttp3/internal/b/g;->streamFailed(Ljava/io/IOException;)V

    invoke-virtual {v1}, Lokhttp3/internal/b/g;->release()V

    throw v0

    :catch_1
    move-exception v7

    :try_start_2
    instance-of v0, v7, Lokhttp3/internal/e/a;

    if-nez v0, :cond_2

    move v0, v11

    :goto_1
    invoke-direct {p0, v7, v1, v0, v10}, Lokhttp3/internal/c/j;->a(Ljava/io/IOException;Lokhttp3/internal/b/g;ZLokhttp3/w;)Z

    move-result v0

    if-nez v0, :cond_0

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move v0, v8

    goto :goto_1

    :cond_3
    iput-object v2, v0, Lokhttp3/y$a;->cZx:Lokhttp3/y;

    invoke-virtual {v0}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v7

    :cond_4
    iget-object v0, v1, Lokhttp3/internal/b/g;->dab:Lokhttp3/aa;

    if-nez v7, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_5
    iget v2, v7, Lokhttp3/y;->code:I

    iget-object v9, v7, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v9, v9, Lokhttp3/w;->method:Ljava/lang/String;

    sparse-switch v2, :sswitch_data_0

    :cond_6
    move-object v10, v6

    :goto_2
    if-nez v10, :cond_15

    iget-boolean v0, p0, Lokhttp3/internal/c/j;->forWebSocket:Z

    if-nez v0, :cond_7

    invoke-virtual {v1}, Lokhttp3/internal/b/g;->release()V

    :cond_7
    return-object v7

    :sswitch_0
    if-eqz v0, :cond_8

    iget-object v0, v0, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    :goto_3
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v0, v2, :cond_9

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v0, v0, Lokhttp3/t;->proxy:Ljava/net/Proxy;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v0, v0, Lokhttp3/t;->cVZ:Lokhttp3/b;

    invoke-interface {v0}, Lokhttp3/b;->LV()Lokhttp3/w;

    move-result-object v10

    goto :goto_2

    :sswitch_1
    iget-object v0, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v0, v0, Lokhttp3/t;->cZc:Lokhttp3/b;

    invoke-interface {v0}, Lokhttp3/b;->LV()Lokhttp3/w;

    move-result-object v10

    goto :goto_2

    :sswitch_2
    const-string v0, "GET"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "HEAD"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_a
    :sswitch_3
    iget-object v0, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-boolean v0, v0, Lokhttp3/t;->followRedirects:Z

    if-eqz v0, :cond_6

    const-string v0, "Location"

    invoke-virtual {v7, v0}, Lokhttp3/y;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, v7, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v2, v2, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-virtual {v2, v0}, Lokhttp3/q;->ft(Ljava/lang/String;)Lokhttp3/q$a;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lokhttp3/q$a;->MC()Lokhttp3/q;

    move-result-object v0

    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_6

    iget-object v0, v2, Lokhttp3/q;->scheme:Ljava/lang/String;

    iget-object v10, v7, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v10, v10, Lokhttp3/w;->cVX:Lokhttp3/q;

    iget-object v10, v10, Lokhttp3/q;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-boolean v0, v0, Lokhttp3/t;->followSslRedirects:Z

    if-eqz v0, :cond_6

    :cond_b
    iget-object v0, v7, Lokhttp3/y;->cZt:Lokhttp3/w;

    invoke-virtual {v0}, Lokhttp3/w;->MF()Lokhttp3/w$a;

    move-result-object v10

    invoke-static {v9}, Lokhttp3/internal/c/f;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "PROPFIND"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v0, "PROPFIND"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v11

    :goto_5
    if-eqz v0, :cond_10

    const-string v0, "GET"

    invoke-virtual {v10, v0, v6}, Lokhttp3/w$a;->a(Ljava/lang/String;Lokhttp3/x;)Lokhttp3/w$a;

    :goto_6
    if-nez v12, :cond_c

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v10, v0}, Lokhttp3/w$a;->fz(Ljava/lang/String;)Lokhttp3/w$a;

    const-string v0, "Content-Length"

    invoke-virtual {v10, v0}, Lokhttp3/w$a;->fz(Ljava/lang/String;)Lokhttp3/w$a;

    const-string v0, "Content-Type"

    invoke-virtual {v10, v0}, Lokhttp3/w$a;->fz(Ljava/lang/String;)Lokhttp3/w$a;

    :cond_c
    invoke-static {v7, v2}, Lokhttp3/internal/c/j;->a(Lokhttp3/y;Lokhttp3/q;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "Authorization"

    invoke-virtual {v10, v0}, Lokhttp3/w$a;->fz(Ljava/lang/String;)Lokhttp3/w$a;

    :cond_d
    invoke-virtual {v10, v2}, Lokhttp3/w$a;->b(Lokhttp3/q;)Lokhttp3/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/w$a;->MH()Lokhttp3/w;

    move-result-object v10

    goto/16 :goto_2

    :cond_e
    move-object v2, v6

    goto :goto_4

    :cond_f
    move v0, v8

    goto :goto_5

    :cond_10
    if-eqz v12, :cond_11

    iget-object v0, v7, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v0, v0, Lokhttp3/w;->cZp:Lokhttp3/x;

    :goto_7
    invoke-virtual {v10, v9, v0}, Lokhttp3/w$a;->a(Ljava/lang/String;Lokhttp3/x;)Lokhttp3/w$a;

    goto :goto_6

    :cond_11
    move-object v0, v6

    goto :goto_7

    :sswitch_4
    iget-object v0, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-boolean v0, v0, Lokhttp3/t;->retryOnConnectionFailure:Z

    if-eqz v0, :cond_6

    iget-object v0, v7, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v0, v0, Lokhttp3/w;->cZp:Lokhttp3/x;

    instance-of v0, v0, Lokhttp3/internal/c/l;

    if-nez v0, :cond_6

    iget-object v0, v7, Lokhttp3/y;->cZx:Lokhttp3/y;

    if-eqz v0, :cond_12

    iget-object v0, v7, Lokhttp3/y;->cZx:Lokhttp3/y;

    iget v0, v0, Lokhttp3/y;->code:I

    const/16 v2, 0x198

    if-eq v0, v2, :cond_6

    :cond_12
    invoke-static {v7, v8}, Lokhttp3/internal/c/j;->a(Lokhttp3/y;I)I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v10, v7, Lokhttp3/y;->cZt:Lokhttp3/w;

    goto/16 :goto_2

    :sswitch_5
    iget-object v0, v7, Lokhttp3/y;->cZx:Lokhttp3/y;

    if-eqz v0, :cond_13

    iget-object v0, v7, Lokhttp3/y;->cZx:Lokhttp3/y;

    iget v0, v0, Lokhttp3/y;->code:I

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_6

    :cond_13
    const v0, 0x7fffffff

    invoke-static {v7, v0}, Lokhttp3/internal/c/j;->a(Lokhttp3/y;I)I

    move-result v0

    if-nez v0, :cond_14

    iget-object v10, v7, Lokhttp3/y;->cZt:Lokhttp3/w;

    goto/16 :goto_2

    :cond_14
    move-object v10, v6

    goto/16 :goto_2

    :cond_15
    iget-object v0, v7, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-static {v0}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v9, v5, 0x1

    const/16 v0, 0x14

    if-le v9, v0, :cond_16

    invoke-virtual {v1}, Lokhttp3/internal/b/g;->release()V

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too many follow-up requests: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-object v0, v10, Lokhttp3/w;->cZp:Lokhttp3/x;

    instance-of v0, v0, Lokhttp3/internal/c/l;

    if-eqz v0, :cond_17

    invoke-virtual {v1}, Lokhttp3/internal/b/g;->release()V

    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed HTTP body"

    iget v2, v7, Lokhttp3/y;->code:I

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_17
    iget-object v0, v10, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-static {v7, v0}, Lokhttp3/internal/c/j;->a(Lokhttp3/y;Lokhttp3/q;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v1}, Lokhttp3/internal/b/g;->release()V

    new-instance v0, Lokhttp3/internal/b/g;

    iget-object v1, p0, Lokhttp3/internal/c/j;->cgQ:Lokhttp3/t;

    iget-object v1, v1, Lokhttp3/t;->cZd:Lokhttp3/h;

    iget-object v2, v10, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-direct {p0, v2}, Lokhttp3/internal/c/j;->e(Lokhttp3/q;)Lokhttp3/a;

    move-result-object v2

    iget-object v5, p0, Lokhttp3/internal/c/j;->callStackTrace:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/b/g;-><init>(Lokhttp3/h;Lokhttp3/a;Lokhttp3/e;Lokhttp3/n;Ljava/lang/Object;)V

    iput-object v0, p0, Lokhttp3/internal/c/j;->dak:Lokhttp3/internal/b/g;

    :goto_8
    move-object v2, v7

    move v5, v9

    move-object v1, v0

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v1}, Lokhttp3/internal/b/g;->MP()Lokhttp3/internal/c/c;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Closing the body of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v0, v1

    goto :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
        0x1f7 -> :sswitch_5
    .end sparse-switch
.end method
