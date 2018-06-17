.class public final Lio/intercom/okhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Interceptor;


# instance fields
.field private final cookieJar:Lio/intercom/okhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lio/intercom/okhttp3/CookieJar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lio/intercom/okhttp3/CookieJar;

    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    if-lez v1, :cond_0

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/Cookie;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lio/intercom/okhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final intercept(Lio/intercom/okhttp3/Interceptor$Chain;)Lio/intercom/okhttp3/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Lio/intercom/okhttp3/Interceptor$Chain;->request()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request;->newBuilder()Lio/intercom/okhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request;->body()Lio/intercom/okhttp3/RequestBody;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lio/intercom/okhttp3/RequestBody;->contentType()Lio/intercom/okhttp3/MediaType;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "Content-Type"

    invoke-virtual {v4}, Lio/intercom/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    :cond_0
    invoke-virtual {v3}, Lio/intercom/okhttp3/RequestBody;->contentLength()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_8

    const-string v3, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    :cond_1
    :goto_0
    const-string v3, "Host"

    invoke-virtual {v1, v3}, Lio/intercom/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "Host"

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4, v0}, Lio/intercom/okhttp3/internal/Util;->hostHeader(Lio/intercom/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    :cond_2
    const-string v3, "Connection"

    invoke-virtual {v1, v3}, Lio/intercom/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    :cond_3
    const-string v3, "Accept-Encoding"

    invoke-virtual {v1, v3}, Lio/intercom/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "Range"

    invoke-virtual {v1, v3}, Lio/intercom/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v0, 0x1

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    :cond_4
    iget-object v3, p0, Lio/intercom/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lio/intercom/okhttp3/CookieJar;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/intercom/okhttp3/CookieJar;->loadForRequest(Lio/intercom/okhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "Cookie"

    invoke-direct {p0, v3}, Lio/intercom/okhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    :cond_5
    const-string v3, "User-Agent"

    invoke-virtual {v1, v3}, Lio/intercom/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, "User-Agent"

    invoke-static {}, Lio/intercom/okhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    :cond_6
    invoke-virtual {v2}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/intercom/okhttp3/Interceptor$Chain;->proceed(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lio/intercom/okhttp3/CookieJar;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v2}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->receiveHeaders(Lio/intercom/okhttp3/CookieJar;Lio/intercom/okhttp3/HttpUrl;Lio/intercom/okhttp3/Headers;)V

    invoke-virtual {v2}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/intercom/okhttp3/Response$Builder;->request(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v1

    if-eqz v0, :cond_7

    const-string v0, "gzip"

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->hasBody(Lio/intercom/okhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lio/intercom/b/j;

    invoke-virtual {v2}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/ResponseBody;->source()Lio/intercom/b/e;

    move-result-object v3

    invoke-direct {v0, v3}, Lio/intercom/b/j;-><init>(Lio/intercom/b/s;)V

    invoke-virtual {v2}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/Headers;->newBuilder()Lio/intercom/okhttp3/Headers$Builder;

    move-result-object v3

    const-string v4, "Content-Encoding"

    invoke-virtual {v3, v4}, Lio/intercom/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lio/intercom/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/intercom/okhttp3/Response$Builder;->headers(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Response$Builder;

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/intercom/okhttp3/internal/http/RealResponseBody;

    invoke-static {v0}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v0

    invoke-direct {v3, v2, v6, v7, v0}, Lio/intercom/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLio/intercom/b/e;)V

    invoke-virtual {v1, v3}, Lio/intercom/okhttp3/Response$Builder;->body(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/Response$Builder;

    :cond_7
    invoke-virtual {v1}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    return-object v0

    :cond_8
    const-string v3, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    goto/16 :goto_0
.end method
