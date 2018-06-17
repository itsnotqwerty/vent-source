.class public final Lio/intercom/okhttp3/internal/http1/Http1Codec;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;,
        Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSource;,
        Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSource;,
        Lio/intercom/okhttp3/internal/http1/Http1Codec$AbstractSource;,
        Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;,
        Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final HEADER_LIMIT:I = 0x40000

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field final client:Lio/intercom/okhttp3/OkHttpClient;

.field private headerLimit:J

.field final sink:Lio/intercom/b/d;

.field final source:Lio/intercom/b/e;

.field state:I

.field final streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/b/e;Lio/intercom/b/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->client:Lio/intercom/okhttp3/OkHttpClient;

    iput-object p2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iput-object p3, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->source:Lio/intercom/b/e;

    iput-object p4, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    return-void
.end method

.method private readHeaderLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->source:Lio/intercom/b/e;

    iget-wide v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    invoke-interface {v0, v2, v3}, Lio/intercom/b/e;->ae(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection()Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->cancel()V

    :cond_0
    return-void
.end method

.method public final createRequestBody(Lio/intercom/okhttp3/Request;J)Lio/intercom/b/r;
    .locals 2

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lio/intercom/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->newChunkedSink()Lio/intercom/b/r;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->newFixedLengthSink(J)Lio/intercom/b/r;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final detachTimeout(Lio/intercom/b/i;)V
    .locals 2

    iget-object v0, p1, Lio/intercom/b/i;->cUa:Lio/intercom/b/t;

    sget-object v1, Lio/intercom/b/t;->NONE:Lio/intercom/b/t;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, p1, Lio/intercom/b/i;->cUa:Lio/intercom/b/t;

    invoke-virtual {v0}, Lio/intercom/b/t;->clearDeadline()Lio/intercom/b/t;

    invoke-virtual {v0}, Lio/intercom/b/t;->clearTimeout()Lio/intercom/b/t;

    return-void
.end method

.method public final finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->flush()V

    return-void
.end method

.method public final flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->flush()V

    return-void
.end method

.method public final isClosed()Z
    .locals 2

    iget v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newChunkedSink()Lio/intercom/b/r;
    .locals 3

    iget v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    new-instance v0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Lio/intercom/okhttp3/internal/http1/Http1Codec;)V

    return-object v0
.end method

.method public final newChunkedSource(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/b/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    new-instance v0, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lio/intercom/okhttp3/internal/http1/Http1Codec$ChunkedSource;-><init>(Lio/intercom/okhttp3/internal/http1/Http1Codec;Lio/intercom/okhttp3/HttpUrl;)V

    return-object v0
.end method

.method public final newFixedLengthSink(J)Lio/intercom/b/r;
    .locals 3

    iget v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    new-instance v0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lio/intercom/okhttp3/internal/http1/Http1Codec;J)V

    return-object v0
.end method

.method public final newFixedLengthSource(J)Lio/intercom/b/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    new-instance v0, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/okhttp3/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lio/intercom/okhttp3/internal/http1/Http1Codec;J)V

    return-object v0
.end method

.method public final newUnknownLengthSource()Lio/intercom/b/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    new-instance v0, Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lio/intercom/okhttp3/internal/http1/Http1Codec;)V

    return-object v0
.end method

.method public final openResponseBody(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/ResponseBody;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, v1, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/EventListener;->responseBodyStart(Lio/intercom/okhttp3/Call;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->hasBody(Lio/intercom/okhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v6, v7}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lio/intercom/b/s;

    move-result-object v2

    new-instance v0, Lio/intercom/okhttp3/internal/http/RealResponseBody;

    invoke-static {v2}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v2

    invoke-direct {v0, v1, v6, v7, v2}, Lio/intercom/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLio/intercom/b/e;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "chunked"

    const-string v2, "Transfer-Encoding"

    invoke-virtual {p1, v2}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->newChunkedSource(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/b/s;

    move-result-object v2

    new-instance v0, Lio/intercom/okhttp3/internal/http/RealResponseBody;

    invoke-static {v2}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v2

    invoke-direct {v0, v1, v4, v5, v2}, Lio/intercom/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLio/intercom/b/e;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->contentLength(Lio/intercom/okhttp3/Response;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2, v3}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lio/intercom/b/s;

    move-result-object v4

    new-instance v0, Lio/intercom/okhttp3/internal/http/RealResponseBody;

    invoke-static {v4}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/intercom/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLio/intercom/b/e;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lio/intercom/okhttp3/internal/http/RealResponseBody;

    invoke-virtual {p0}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->newUnknownLengthSource()Lio/intercom/b/s;

    move-result-object v2

    invoke-static {v2}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v2

    invoke-direct {v0, v1, v4, v5, v2}, Lio/intercom/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLio/intercom/b/e;)V

    goto :goto_0
.end method

.method public final readHeaders()Lio/intercom/okhttp3/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lio/intercom/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Headers$Builder;-><init>()V

    :goto_0
    invoke-direct {p0}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lio/intercom/okhttp3/internal/Internal;->addLenient(Lio/intercom/okhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final readResponseHeaders(Z)Lio/intercom/okhttp3/Response$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/internal/http/StatusLine;

    move-result-object v1

    new-instance v0, Lio/intercom/okhttp3/Response$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Response$Builder;-><init>()V

    iget-object v2, v1, Lio/intercom/okhttp3/internal/http/StatusLine;->protocol:Lio/intercom/okhttp3/Protocol;

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/Response$Builder;->protocol(Lio/intercom/okhttp3/Protocol;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    iget v2, v1, Lio/intercom/okhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/Response$Builder;->code(I)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    iget-object v2, v1, Lio/intercom/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->readHeaders()Lio/intercom/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/Response$Builder;->headers(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    iget v1, v1, Lio/intercom/okhttp3/internal/http/StatusLine;->code:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected end of stream on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public final writeRequest(Lio/intercom/okhttp3/Headers;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    invoke-interface {v0, p2}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v2

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->sink:Lio/intercom/b/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    const/4 v0, 0x1

    iput v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->state:I

    return-void
.end method

.method public final writeRequestHeaders(Lio/intercom/okhttp3/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection()Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->route()Lio/intercom/okhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lio/intercom/okhttp3/internal/http/RequestLine;->get(Lio/intercom/okhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/okhttp3/Request;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lio/intercom/okhttp3/internal/http1/Http1Codec;->writeRequest(Lio/intercom/okhttp3/Headers;Ljava/lang/String;)V

    return-void
.end method
