.class public Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lio/intercom/okhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lio/intercom/okhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V
    .locals 7

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    iput-wide p1, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iput-object p3, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    iput-object p4, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lio/intercom/okhttp3/Response;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lio/intercom/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    invoke-virtual {p4}, Lio/intercom/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    invoke-virtual {p4}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_5

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lio/intercom/okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    iput-object v4, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lio/intercom/okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lio/intercom/okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    iput-object v4, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v4, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v4, v6}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    :cond_5
    return-void
.end method

.method private cacheResponseAge()J
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v4, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    iget v2, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    iget-wide v2, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v4, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iget-wide v6, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private computeFreshnessLifetime()J
    .locals 6

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lio/intercom/okhttp3/Response;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->cacheControl()Lio/intercom/okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lio/intercom/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_1
    iget-object v4, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lio/intercom/okhttp3/Response;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_2
    iget-object v4, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_2

    :cond_5
    move-wide v0, v2

    goto :goto_0

    :cond_6
    move-wide v0, v2

    goto :goto_0
.end method

.method private getCandidate()Lio/intercom/okhttp3/internal/cache/CacheStrategy;
    .locals 14

    const-wide/16 v4, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lio/intercom/okhttp3/Response;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-direct {v0, v1, v12}, Lio/intercom/okhttp3/internal/cache/CacheStrategy;-><init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lio/intercom/okhttp3/Response;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->handshake()Lio/intercom/okhttp3/Handshake;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-direct {v0, v1, v12}, Lio/intercom/okhttp3/internal/cache/CacheStrategy;-><init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lio/intercom/okhttp3/Response;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-static {v0, v1}, Lio/intercom/okhttp3/internal/cache/CacheStrategy;->isCacheable(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/Request;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-direct {v0, v1, v12}, Lio/intercom/okhttp3/internal/cache/CacheStrategy;-><init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->cacheControl()Lio/intercom/okhttp3/CacheControl;

    move-result-object v6

    invoke-virtual {v6}, Lio/intercom/okhttp3/CacheControl;->noCache()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->hasConditions(Lio/intercom/okhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-direct {v0, v1, v12}, Lio/intercom/okhttp3/internal/cache/CacheStrategy;-><init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lio/intercom/okhttp3/Response;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->cacheControl()Lio/intercom/okhttp3/CacheControl;

    move-result-object v7

    invoke-virtual {v7}, Lio/intercom/okhttp3/CacheControl;->immutable()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lio/intercom/okhttp3/Response;

    invoke-direct {v0, v12, v1}, Lio/intercom/okhttp3/internal/cache/CacheStrategy;-><init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v8

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v0

    invoke-virtual {v6}, Lio/intercom/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v2

    if-eq v2, v13, :cond_6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lio/intercom/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_6
    invoke-virtual {v6}, Lio/intercom/okhttp3/CacheControl;->minFreshSeconds()I

    move-result v2

    if-eq v2, v13, :cond_e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lio/intercom/okhttp3/CacheControl;->minFreshSeconds()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :goto_1
    invoke-virtual {v7}, Lio/intercom/okhttp3/CacheControl;->mustRevalidate()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v6}, Lio/intercom/okhttp3/CacheControl;->maxStaleSeconds()I

    move-result v10

    if-eq v10, v13, :cond_7

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lio/intercom/okhttp3/CacheControl;->maxStaleSeconds()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :cond_7
    invoke-virtual {v7}, Lio/intercom/okhttp3/CacheControl;->noCache()Z

    move-result v6

    if-nez v6, :cond_a

    add-long v6, v8, v2

    add-long/2addr v4, v0

    cmp-long v4, v6, v4

    if-gez v4, :cond_a

    iget-object v4, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lio/intercom/okhttp3/Response;

    invoke-virtual {v4}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v4

    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_8

    const-string v0, "Warning"

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v4, v0, v1}, Lio/intercom/okhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;

    :cond_8
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v8, v0

    if-lez v0, :cond_9

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Warning"

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v0, v1}, Lio/intercom/okhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;

    :cond_9
    new-instance v0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;

    invoke-virtual {v4}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lio/intercom/okhttp3/internal/cache/CacheStrategy;-><init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v1, "If-None-Match"

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    :goto_2
    iget-object v2, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-virtual {v2}, Lio/intercom/okhttp3/Request;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/Headers;->newBuilder()Lio/intercom/okhttp3/Headers$Builder;

    move-result-object v2

    sget-object v3, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    invoke-virtual {v3, v2, v1, v0}, Lio/intercom/okhttp3/internal/Internal;->addLenient(Lio/intercom/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->newBuilder()Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Request$Builder;->headers(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v1

    new-instance v0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lio/intercom/okhttp3/Response;

    invoke-direct {v0, v1, v2}, Lio/intercom/okhttp3/internal/cache/CacheStrategy;-><init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_c

    const-string v1, "If-Modified-Since"

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_d

    const-string v1, "If-Modified-Since"

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_2

    :cond_d
    new-instance v0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-direct {v0, v1, v12}, Lio/intercom/okhttp3/internal/cache/CacheStrategy;-><init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V

    goto/16 :goto_0

    :cond_e
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method private static hasConditions(Lio/intercom/okhttp3/Request;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lio/intercom/okhttp3/Response;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->cacheControl()Lio/intercom/okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lio/intercom/okhttp3/internal/cache/CacheStrategy;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->getCandidate()Lio/intercom/okhttp3/internal/cache/CacheStrategy;

    move-result-object v0

    iget-object v1, v0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lio/intercom/okhttp3/Request;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lio/intercom/okhttp3/Request;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request;->cacheControl()Lio/intercom/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;

    invoke-direct {v0, v2, v2}, Lio/intercom/okhttp3/internal/cache/CacheStrategy;-><init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V

    :cond_0
    return-object v0
.end method
