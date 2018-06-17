.class public final Lio/intercom/okhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Interceptor;


# instance fields
.field final cache:Lio/intercom/okhttp3/internal/cache/InternalCache;


# direct methods
.method public constructor <init>(Lio/intercom/okhttp3/internal/cache/InternalCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    return-void
.end method

.method private cacheWritingResponse(Lio/intercom/okhttp3/internal/cache/CacheRequest;Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-interface {p1}, Lio/intercom/okhttp3/internal/cache/CacheRequest;->body()Lio/intercom/b/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->source()Lio/intercom/b/e;

    move-result-object v1

    invoke-static {v0}, Lio/intercom/b/l;->b(Lio/intercom/b/r;)Lio/intercom/b/d;

    move-result-object v0

    new-instance v2, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;-><init>(Lio/intercom/okhttp3/internal/cache/CacheInterceptor;Lio/intercom/b/e;Lio/intercom/okhttp3/internal/cache/CacheRequest;Lio/intercom/b/d;)V

    const-string v0, "Content-Type"

    invoke-virtual {p2, v0}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v1

    new-instance v3, Lio/intercom/okhttp3/internal/http/RealResponseBody;

    invoke-static {v2}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v2

    invoke-direct {v3, v0, v4, v5, v2}, Lio/intercom/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLio/intercom/b/e;)V

    invoke-virtual {v1, v3}, Lio/intercom/okhttp3/Response$Builder;->body(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object p2

    goto :goto_0
.end method

.method private static combine(Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Headers;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Lio/intercom/okhttp3/Headers$Builder;

    invoke-direct {v2}, Lio/intercom/okhttp3/Headers$Builder;-><init>()V

    invoke-virtual {p0}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lio/intercom/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lio/intercom/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    invoke-static {v4}, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lio/intercom/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    invoke-virtual {v6, v2, v4, v5}, Lio/intercom/okhttp3/internal/Internal;->addLenient(Lio/intercom/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lio/intercom/okhttp3/internal/Internal;->addLenient(Lio/intercom/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static stripBody(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->body(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final intercept(Lio/intercom/okhttp3/Interceptor$Chain;)Lio/intercom/okhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    invoke-interface {p1}, Lio/intercom/okhttp3/Interceptor$Chain;->request()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/okhttp3/internal/cache/InternalCache;->get(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response;

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lio/intercom/okhttp3/Interceptor$Chain;->request()Lio/intercom/okhttp3/Request;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V

    invoke-virtual {v1}, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->get()Lio/intercom/okhttp3/internal/cache/CacheStrategy;

    move-result-object v1

    iget-object v2, v1, Lio/intercom/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lio/intercom/okhttp3/Request;

    iget-object v3, v1, Lio/intercom/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lio/intercom/okhttp3/Response;

    iget-object v4, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    invoke-interface {v4, v1}, Lio/intercom/okhttp3/internal/cache/InternalCache;->trackResponse(Lio/intercom/okhttp3/internal/cache/CacheStrategy;)V

    :cond_0
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    new-instance v0, Lio/intercom/okhttp3/Response$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Response$Builder;-><init>()V

    invoke-interface {p1}, Lio/intercom/okhttp3/Interceptor$Chain;->request()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->request(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->protocol(Lio/intercom/okhttp3/Protocol;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->code(I)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lio/intercom/okhttp3/internal/Util;->EMPTY_RESPONSE:Lio/intercom/okhttp3/ResponseBody;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->body(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lio/intercom/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/intercom/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {v3}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-static {v3}, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->cacheResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-interface {p1, v2}, Lio/intercom/okhttp3/Interceptor$Chain;->proceed(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_6
    if-eqz v3, :cond_9

    invoke-virtual {v1}, Lio/intercom/okhttp3/Response;->code()I

    move-result v0

    const/16 v4, 0x130

    if-ne v0, v4, :cond_8

    invoke-virtual {v3}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v3}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v4

    invoke-static {v2, v4}, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->combine(Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/Response$Builder;->headers(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lio/intercom/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/intercom/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lio/intercom/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/intercom/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-static {v3}, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/Response$Builder;->cacheResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-static {v1}, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/Response$Builder;->networkResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v1}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->close()V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    invoke-interface {v1}, Lio/intercom/okhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    invoke-interface {v1, v3, v0}, Lio/intercom/okhttp3/internal/cache/InternalCache;->update(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/Response;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_7
    throw v1

    :cond_8
    invoke-virtual {v3}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_9
    invoke-virtual {v1}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-static {v3}, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/intercom/okhttp3/Response$Builder;->cacheResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-static {v1}, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->networkResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->hasBody(Lio/intercom/okhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0, v2}, Lio/intercom/okhttp3/internal/cache/CacheStrategy;->isCacheable(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/Request;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    invoke-interface {v1, v0}, Lio/intercom/okhttp3/internal/cache/InternalCache;->put(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/internal/cache/CacheRequest;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lio/intercom/okhttp3/internal/cache/CacheRequest;Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v2}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/okhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cache:Lio/intercom/okhttp3/internal/cache/InternalCache;

    invoke-interface {v1, v2}, Lio/intercom/okhttp3/internal/cache/InternalCache;->remove(Lio/intercom/okhttp3/Request;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method
