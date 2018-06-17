.class public final Lokhttp3/internal/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/r;


# instance fields
.field final cZO:Lokhttp3/internal/a/f;


# direct methods
.method public constructor <init>(Lokhttp3/internal/a/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/a/a;->cZO:Lokhttp3/internal/a/f;

    return-void
.end method

.method private static a(Lokhttp3/p;Lokhttp3/p;)Lokhttp3/p;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Lokhttp3/p$a;

    invoke-direct {v2}, Lokhttp3/p$a;-><init>()V

    iget-object v1, p0, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v3, v1, 0x2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lokhttp3/p;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lokhttp3/p;->value(I)Ljava/lang/String;

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
    invoke-static {v4}, Lokhttp3/internal/a/a;->fB(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Lokhttp3/internal/a/a;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lokhttp3/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    invoke-virtual {v6, v2, v4, v5}, Lokhttp3/internal/a;->a(Lokhttp3/p$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Lokhttp3/p;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/a/a;->fB(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lokhttp3/internal/a/a;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    invoke-virtual {p1, v0}, Lokhttp3/p;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lokhttp3/internal/a;->a(Lokhttp3/p$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lokhttp3/p$a;->MB()Lokhttp3/p;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lokhttp3/y;)Lokhttp3/y;
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lokhttp3/y;->cZu:Lokhttp3/z;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/y;->MI()Lokhttp3/y$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lokhttp3/y$a;->cZu:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static fB(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private static isEndToEnd(Ljava/lang/String;)Z
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


# virtual methods
.method public final a(Lokhttp3/r$a;)Lokhttp3/y;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/a/a;->cZO:Lokhttp3/internal/a/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/a/a;->cZO:Lokhttp3/internal/a/f;

    invoke-interface {p1}, Lokhttp3/r$a;->MD()Lokhttp3/w;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/a/f;->a(Lokhttp3/w;)Lokhttp3/y;

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v8, Lokhttp3/internal/a/c$a;

    invoke-interface {p1}, Lokhttp3/r$a;->MD()Lokhttp3/w;

    move-result-object v1

    invoke-direct {v8, v2, v3, v1, v0}, Lokhttp3/internal/a/c$a;-><init>(JLokhttp3/w;Lokhttp3/y;)V

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZw:Lokhttp3/y;

    if-nez v1, :cond_5

    new-instance v1, Lokhttp3/internal/a/c;

    iget-object v2, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/w;Lokhttp3/y;)V

    :goto_1
    iget-object v2, v1, Lokhttp3/internal/a/c;->cZT:Lokhttp3/w;

    if-eqz v2, :cond_0

    iget-object v2, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    invoke-virtual {v2}, Lokhttp3/w;->MG()Lokhttp3/d;

    move-result-object v2

    iget-boolean v2, v2, Lokhttp3/d;->onlyIfCached:Z

    if-eqz v2, :cond_0

    new-instance v1, Lokhttp3/internal/a/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/w;Lokhttp3/y;)V

    :cond_0
    iget-object v2, v1, Lokhttp3/internal/a/c;->cZT:Lokhttp3/w;

    iget-object v3, v1, Lokhttp3/internal/a/c;->cZw:Lokhttp3/y;

    iget-object v4, p0, Lokhttp3/internal/a/a;->cZO:Lokhttp3/internal/a/f;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lokhttp3/internal/a/a;->cZO:Lokhttp3/internal/a/f;

    invoke-interface {v4, v1}, Lokhttp3/internal/a/f;->a(Lokhttp3/internal/a/c;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    iget-object v1, v0, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-static {v1}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_21

    if-nez v3, :cond_21

    new-instance v0, Lokhttp3/y$a;

    invoke-direct {v0}, Lokhttp3/y$a;-><init>()V

    invoke-interface {p1}, Lokhttp3/r$a;->MD()Lokhttp3/w;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/y$a;->cZt:Lokhttp3/w;

    sget-object v1, Lokhttp3/u;->cZf:Lokhttp3/u;

    iput-object v1, v0, Lokhttp3/y$a;->cWq:Lokhttp3/u;

    const/16 v1, 0x1f8

    iput v1, v0, Lokhttp3/y$a;->code:I

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    iput-object v1, v0, Lokhttp3/y$a;->message:Ljava/lang/String;

    sget-object v1, Lokhttp3/internal/c;->cZH:Lokhttp3/z;

    iput-object v1, v0, Lokhttp3/y$a;->cZu:Lokhttp3/z;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lokhttp3/y$a;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lokhttp3/y$a;->receivedResponseAtMillis:J

    invoke-virtual {v0}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v0

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    iget-object v1, v1, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-virtual {v1}, Lokhttp3/q;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZw:Lokhttp3/y;

    iget-object v1, v1, Lokhttp3/y;->cWs:Lokhttp3/o;

    if-nez v1, :cond_6

    new-instance v1, Lokhttp3/internal/a/c;

    iget-object v2, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/w;Lokhttp3/y;)V

    goto :goto_1

    :cond_6
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZw:Lokhttp3/y;

    iget-object v2, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    invoke-static {v1, v2}, Lokhttp3/internal/a/c;->a(Lokhttp3/y;Lokhttp3/w;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lokhttp3/internal/a/c;

    iget-object v2, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/w;Lokhttp3/y;)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    invoke-virtual {v1}, Lokhttp3/w;->MG()Lokhttp3/d;

    move-result-object v9

    iget-boolean v1, v9, Lokhttp3/d;->noCache:Z

    if-nez v1, :cond_9

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2}, Lokhttp3/w;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, "If-None-Match"

    invoke-virtual {v1, v2}, Lokhttp3/w;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    :cond_8
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_b

    :cond_9
    new-instance v1, Lokhttp3/internal/a/c;

    iget-object v2, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/w;Lokhttp3/y;)V

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZw:Lokhttp3/y;

    invoke-virtual {v1}, Lokhttp3/y;->MG()Lokhttp3/d;

    move-result-object v10

    iget-boolean v1, v10, Lokhttp3/d;->immutable:Z

    if-eqz v1, :cond_c

    new-instance v1, Lokhttp3/internal/a/c;

    const/4 v2, 0x0

    iget-object v3, v8, Lokhttp3/internal/a/c$a;->cZw:Lokhttp3/y;

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/w;Lokhttp3/y;)V

    goto/16 :goto_1

    :cond_c
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->servedDate:Ljava/util/Date;

    if-eqz v1, :cond_14

    const-wide/16 v2, 0x0

    iget-wide v4, v8, Lokhttp3/internal/a/c$a;->receivedResponseMillis:J

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->servedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_4
    iget v1, v8, Lokhttp3/internal/a/c$a;->ageSeconds:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v4, v8, Lokhttp3/internal/a/c$a;->ageSeconds:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_d
    iget-wide v4, v8, Lokhttp3/internal/a/c$a;->receivedResponseMillis:J

    iget-wide v6, v8, Lokhttp3/internal/a/c$a;->sentRequestMillis:J

    sub-long/2addr v4, v6

    iget-wide v6, v8, Lokhttp3/internal/a/c$a;->nowMillis:J

    iget-wide v12, v8, Lokhttp3/internal/a/c$a;->receivedResponseMillis:J

    sub-long/2addr v6, v12

    add-long/2addr v2, v4

    add-long v12, v2, v6

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZw:Lokhttp3/y;

    invoke-virtual {v1}, Lokhttp3/y;->MG()Lokhttp3/d;

    move-result-object v1

    iget v2, v1, Lokhttp3/d;->maxAgeSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, v1, Lokhttp3/d;->maxAgeSeconds:I

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_e
    :goto_5
    iget v1, v9, Lokhttp3/d;->maxAgeSeconds:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_f

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v4, v9, Lokhttp3/d;->maxAgeSeconds:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_f
    const-wide/16 v4, 0x0

    iget v1, v9, Lokhttp3/d;->minFreshSeconds:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_10

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v4, v9, Lokhttp3/d;->minFreshSeconds:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :cond_10
    const-wide/16 v6, 0x0

    iget-boolean v1, v10, Lokhttp3/d;->mustRevalidate:Z

    if-nez v1, :cond_11

    iget v1, v9, Lokhttp3/d;->maxStaleSeconds:I

    const/4 v11, -0x1

    if-eq v1, v11, :cond_11

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v6, v9, Lokhttp3/d;->maxStaleSeconds:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    :cond_11
    iget-boolean v1, v10, Lokhttp3/d;->noCache:Z

    if-nez v1, :cond_1d

    add-long v10, v12, v4

    add-long/2addr v6, v2

    cmp-long v1, v10, v6

    if-gez v1, :cond_1d

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZw:Lokhttp3/y;

    invoke-virtual {v1}, Lokhttp3/y;->MI()Lokhttp3/y$a;

    move-result-object v6

    add-long/2addr v4, v12

    cmp-long v1, v4, v2

    if-ltz v1, :cond_12

    const-string v1, "Warning"

    const-string v2, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v6, v1, v2}, Lokhttp3/y$a;->aa(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    :cond_12
    const-wide/32 v2, 0x5265c00

    cmp-long v1, v12, v2

    if-lez v1, :cond_13

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZw:Lokhttp3/y;

    invoke-virtual {v1}, Lokhttp3/y;->MG()Lokhttp3/d;

    move-result-object v1

    iget v1, v1, Lokhttp3/d;->maxAgeSeconds:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->expires:Ljava/util/Date;

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_13

    const-string v1, "Warning"

    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v6, v1, v2}, Lokhttp3/y$a;->aa(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    :cond_13
    new-instance v1, Lokhttp3/internal/a/c;

    const/4 v2, 0x0

    invoke-virtual {v6}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/w;Lokhttp3/y;)V

    goto/16 :goto_1

    :cond_14
    const-wide/16 v2, 0x0

    goto/16 :goto_4

    :cond_15
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->expires:Ljava/util/Date;

    if-eqz v1, :cond_17

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->servedDate:Ljava/util/Date;

    if-eqz v1, :cond_16

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->servedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_7
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->expires:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_e

    const-wide/16 v2, 0x0

    goto/16 :goto_5

    :cond_16
    iget-wide v2, v8, Lokhttp3/internal/a/c$a;->receivedResponseMillis:J

    goto :goto_7

    :cond_17
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_1b

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZw:Lokhttp3/y;

    iget-object v1, v1, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v1, v1, Lokhttp3/w;->cVX:Lokhttp3/q;

    iget-object v2, v1, Lokhttp3/q;->queryNamesAndValues:Ljava/util/List;

    if-nez v2, :cond_18

    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_1b

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->servedDate:Ljava/util/Date;

    if-eqz v1, :cond_19

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->servedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_9
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1a

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    goto/16 :goto_5

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lokhttp3/q;->queryNamesAndValues:Ljava/util/List;

    invoke-static {v2, v1}, Lokhttp3/q;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_19
    iget-wide v2, v8, Lokhttp3/internal/a/c$a;->sentRequestMillis:J

    goto :goto_9

    :cond_1a
    const-wide/16 v2, 0x0

    goto/16 :goto_5

    :cond_1b
    const-wide/16 v2, 0x0

    goto/16 :goto_5

    :cond_1c
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_1d
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->etag:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const-string v2, "If-None-Match"

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->etag:Ljava/lang/String;

    :goto_a
    iget-object v3, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    iget-object v3, v3, Lokhttp3/w;->cZo:Lokhttp3/p;

    invoke-virtual {v3}, Lokhttp3/p;->MA()Lokhttp3/p$a;

    move-result-object v3

    sget-object v4, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    invoke-virtual {v4, v3, v2, v1}, Lokhttp3/internal/a;->a(Lokhttp3/p$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    invoke-virtual {v1}, Lokhttp3/w;->MF()Lokhttp3/w$a;

    move-result-object v1

    invoke-virtual {v3}, Lokhttp3/p$a;->MB()Lokhttp3/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/w$a;->b(Lokhttp3/p;)Lokhttp3/w$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/w$a;->MH()Lokhttp3/w;

    move-result-object v2

    new-instance v1, Lokhttp3/internal/a/c;

    iget-object v3, v8, Lokhttp3/internal/a/c$a;->cZw:Lokhttp3/y;

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/w;Lokhttp3/y;)V

    goto/16 :goto_1

    :cond_1e
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_1f

    const-string v2, "If-Modified-Since"

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->lastModifiedString:Ljava/lang/String;

    goto :goto_a

    :cond_1f
    iget-object v1, v8, Lokhttp3/internal/a/c$a;->servedDate:Ljava/util/Date;

    if-eqz v1, :cond_20

    const-string v2, "If-Modified-Since"

    iget-object v1, v8, Lokhttp3/internal/a/c$a;->servedDateString:Ljava/lang/String;

    goto :goto_a

    :cond_20
    new-instance v1, Lokhttp3/internal/a/c;

    iget-object v2, v8, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/a/c;-><init>(Lokhttp3/w;Lokhttp3/y;)V

    goto/16 :goto_1

    :cond_21
    if-nez v2, :cond_22

    invoke-virtual {v3}, Lokhttp3/y;->MI()Lokhttp3/y$a;

    move-result-object v0

    invoke-static {v3}, Lokhttp3/internal/a/a;->d(Lokhttp3/y;)Lokhttp3/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/y$a;->c(Lokhttp3/y;)Lokhttp3/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v0

    goto/16 :goto_2

    :cond_22
    :try_start_0
    invoke-interface {p1, v2}, Lokhttp3/r$a;->c(Lokhttp3/w;)Lokhttp3/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_23

    if-eqz v0, :cond_23

    iget-object v0, v0, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-static {v0}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    :cond_23
    if-eqz v3, :cond_26

    iget v0, v1, Lokhttp3/y;->code:I

    const/16 v4, 0x130

    if-ne v0, v4, :cond_25

    invoke-virtual {v3}, Lokhttp3/y;->MI()Lokhttp3/y$a;

    move-result-object v0

    iget-object v2, v3, Lokhttp3/y;->cZo:Lokhttp3/p;

    iget-object v4, v1, Lokhttp3/y;->cZo:Lokhttp3/p;

    invoke-static {v2, v4}, Lokhttp3/internal/a/a;->a(Lokhttp3/p;Lokhttp3/p;)Lokhttp3/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/y$a;->c(Lokhttp3/p;)Lokhttp3/y$a;

    move-result-object v0

    iget-wide v4, v1, Lokhttp3/y;->sentRequestAtMillis:J

    iput-wide v4, v0, Lokhttp3/y$a;->sentRequestAtMillis:J

    iget-wide v4, v1, Lokhttp3/y;->receivedResponseAtMillis:J

    iput-wide v4, v0, Lokhttp3/y$a;->receivedResponseAtMillis:J

    invoke-static {v3}, Lokhttp3/internal/a/a;->d(Lokhttp3/y;)Lokhttp3/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/y$a;->c(Lokhttp3/y;)Lokhttp3/y$a;

    move-result-object v0

    invoke-static {v1}, Lokhttp3/internal/a/a;->d(Lokhttp3/y;)Lokhttp3/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/y$a;->b(Lokhttp3/y;)Lokhttp3/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v0

    iget-object v1, v1, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->close()V

    iget-object v1, p0, Lokhttp3/internal/a/a;->cZO:Lokhttp3/internal/a/f;

    invoke-interface {v1}, Lokhttp3/internal/a/f;->trackConditionalCacheHit()V

    iget-object v1, p0, Lokhttp3/internal/a/a;->cZO:Lokhttp3/internal/a/f;

    invoke-interface {v1, v3, v0}, Lokhttp3/internal/a/f;->a(Lokhttp3/y;Lokhttp3/y;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_24

    iget-object v0, v0, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-static {v0}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    :cond_24
    throw v1

    :cond_25
    iget-object v0, v3, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-static {v0}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    :cond_26
    invoke-virtual {v1}, Lokhttp3/y;->MI()Lokhttp3/y$a;

    move-result-object v0

    invoke-static {v3}, Lokhttp3/internal/a/a;->d(Lokhttp3/y;)Lokhttp3/y;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/y$a;->c(Lokhttp3/y;)Lokhttp3/y$a;

    move-result-object v0

    invoke-static {v1}, Lokhttp3/internal/a/a;->d(Lokhttp3/y;)Lokhttp3/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/y$a;->b(Lokhttp3/y;)Lokhttp3/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/a/a;->cZO:Lokhttp3/internal/a/f;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lokhttp3/internal/c/e;->i(Lokhttp3/y;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {v0, v2}, Lokhttp3/internal/a/c;->a(Lokhttp3/y;Lokhttp3/w;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lokhttp3/internal/a/a;->cZO:Lokhttp3/internal/a/f;

    invoke-interface {v1, v0}, Lokhttp3/internal/a/f;->a(Lokhttp3/y;)Lokhttp3/internal/a/b;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lokhttp3/internal/a/b;->LW()Ld/r;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v0, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-virtual {v3}, Lokhttp3/z;->LY()Ld/e;

    move-result-object v3

    invoke-static {v2}, Ld/l;->a(Ld/r;)Ld/d;

    move-result-object v2

    new-instance v4, Lokhttp3/internal/a/a$1;

    invoke-direct {v4, p0, v3, v1, v2}, Lokhttp3/internal/a/a$1;-><init>(Lokhttp3/internal/a/a;Ld/e;Lokhttp3/internal/a/b;Ld/d;)V

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/y;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->contentLength()J

    move-result-wide v2

    invoke-virtual {v0}, Lokhttp3/y;->MI()Lokhttp3/y$a;

    move-result-object v0

    new-instance v5, Lokhttp3/internal/c/h;

    invoke-static {v4}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v4

    invoke-direct {v5, v1, v2, v3, v4}, Lokhttp3/internal/c/h;-><init>(Ljava/lang/String;JLd/e;)V

    iput-object v5, v0, Lokhttp3/y$a;->cZu:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v0

    goto/16 :goto_2

    :cond_27
    iget-object v1, v2, Lokhttp3/w;->method:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/internal/c/f;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/a/a;->cZO:Lokhttp3/internal/a/f;

    invoke-interface {v1, v2}, Lokhttp3/internal/a/f;->b(Lokhttp3/w;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_2
.end method
