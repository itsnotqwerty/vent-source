.class public Lcom/amazonaws/http/UrlHttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/http/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    }
.end annotation


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;


# instance fields
.field private final anS:Lcom/amazonaws/ClientConfiguration;

.field private aoi:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/UrlHttpClient;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/http/UrlHttpClient;->aoi:Ljavax/net/ssl/SSLContext;

    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    return-void
.end method

.method private static S(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/amazonaws/http/UrlHttpClient;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Lcom/amazonaws/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/amazonaws/http/HttpRequest;->method:Ljava/lang/String;

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/amazonaws/http/HttpResponse;->jE()Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v4

    iput v2, v4, Lcom/amazonaws/http/HttpResponse$Builder;->statusCode:I

    iput-object v1, v4, Lcom/amazonaws/http/HttpResponse$Builder;->aog:Ljava/lang/String;

    iput-object v0, v4, Lcom/amazonaws/http/HttpResponse$Builder;->amE:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, v4, Lcom/amazonaws/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/amazonaws/http/HttpResponse;

    iget-object v1, v4, Lcom/amazonaws/http/HttpResponse$Builder;->aog:Ljava/lang/String;

    iget v2, v4, Lcom/amazonaws/http/HttpResponse$Builder;->statusCode:I

    iget-object v3, v4, Lcom/amazonaws/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v4, Lcom/amazonaws/http/HttpResponse$Builder;->amE:Ljava/io/InputStream;

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/http/HttpResponse;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;B)V

    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p3, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x1

    iput-boolean v2, p2, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->aol:Z

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/amazonaws/http/HttpRequest;->aoe:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iget-boolean v1, v1, Lcom/amazonaws/ClientConfiguration;->amy:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;

    iget-object v2, p1, Lcom/amazonaws/http/HttpRequest;->aoe:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;-><init>(Lcom/amazonaws/http/UrlHttpClient;Ljava/net/URL;)V

    move-object v3, v1

    :goto_0
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iget v1, v1, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iget v1, v1, Lcom/amazonaws/ClientConfiguration;->ams:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-boolean v1, p1, Lcom/amazonaws/http/HttpRequest;->aof:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :cond_0
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/amazonaws/http/UrlHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iget-object v2, v2, Lcom/amazonaws/ClientConfiguration;->amx:Ljavax/net/ssl/TrustManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazonaws/http/UrlHttpClient;->aoi:Ljavax/net/ssl/SSLContext;

    if-nez v2, :cond_1

    new-array v2, v10, [Ljavax/net/ssl/TrustManager;

    iget-object v5, p0, Lcom/amazonaws/http/UrlHttpClient;->anS:Lcom/amazonaws/ClientConfiguration;

    iget-object v5, v5, Lcom/amazonaws/ClientConfiguration;->amx:Ljavax/net/ssl/TrustManager;

    aput-object v5, v2, v6

    :try_start_0
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/http/UrlHttpClient;->aoi:Ljavax/net/ssl/SSLContext;

    iget-object v5, p0, Lcom/amazonaws/http/UrlHttpClient;->aoi:Ljavax/net/ssl/SSLContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v2, p0, Lcom/amazonaws/http/UrlHttpClient;->aoi:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2
    iget-object v1, p1, Lcom/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v3, :cond_3

    iget-object v1, p1, Lcom/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    iget-object v2, v3, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->aoj:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v3, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->aoj:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_3
    iget-object v1, p1, Lcom/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "Content-Length"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "Host"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "Expect"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v3, v4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    iget-object v1, p1, Lcom/amazonaws/http/HttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    iput-object v1, v3, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->method:Ljava/lang/String;

    :cond_7
    iget-object v1, p1, Lcom/amazonaws/http/HttpRequest;->amE:Ljava/io/InputStream;

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_b

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-boolean v1, p1, Lcom/amazonaws/http/HttpRequest;->aof:Z

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v6

    long-to-int v1, v6

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :cond_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v2, v6, v8

    if-gez v2, :cond_d

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :cond_9
    :goto_2
    iget-object v2, p1, Lcom/amazonaws/http/HttpRequest;->amE:Ljava/io/InputStream;

    invoke-static {v2, v1, v3, v4}, Lcom/amazonaws/http/UrlHttpClient;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;Ljava/nio/ByteBuffer;)V

    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v3, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->aok:Ljava/lang/String;

    :cond_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v3}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->jG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/http/UrlHttpClient;->S(Ljava/lang/String;)V

    :cond_c
    :goto_3
    invoke-static {p1, v0}, Lcom/amazonaws/http/UrlHttpClient;->a(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Lcom/amazonaws/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_d
    iput-boolean v10, v3, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->aol:Z

    goto :goto_2

    :cond_e
    const-string v1, "Failed to create curl, content too long"

    invoke-static {v1}, Lcom/amazonaws/http/UrlHttpClient;->S(Ljava/lang/String;)V

    goto :goto_3
.end method
