.class public final Lio/intercom/okhttp3/internal/http2/Http2Codec;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Lio/intercom/b/f;

.field private static final ENCODING:Lio/intercom/b/f;

.field private static final HOST:Lio/intercom/b/f;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Lio/intercom/b/f;

.field private static final PROXY_CONNECTION:Lio/intercom/b/f;

.field private static final TE:Lio/intercom/b/f;

.field private static final TRANSFER_ENCODING:Lio/intercom/b/f;

.field private static final UPGRADE:Lio/intercom/b/f;


# instance fields
.field private final chain:Lio/intercom/okhttp3/Interceptor$Chain;

.field private final client:Lio/intercom/okhttp3/OkHttpClient;

.field private final connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

.field private stream:Lio/intercom/okhttp3/internal/http2/Http2Stream;

.field final streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "connection"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->CONNECTION:Lio/intercom/b/f;

    const-string v0, "host"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->HOST:Lio/intercom/b/f;

    const-string v0, "keep-alive"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lio/intercom/b/f;

    const-string v0, "proxy-connection"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lio/intercom/b/f;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lio/intercom/b/f;

    const-string v0, "te"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->TE:Lio/intercom/b/f;

    const-string v0, "encoding"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->ENCODING:Lio/intercom/b/f;

    const-string v0, "upgrade"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->UPGRADE:Lio/intercom/b/f;

    const/16 v0, 0xc

    new-array v0, v0, [Lio/intercom/b/f;

    sget-object v1, Lio/intercom/okhttp3/internal/http2/Http2Codec;->CONNECTION:Lio/intercom/b/f;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/okhttp3/internal/http2/Http2Codec;->HOST:Lio/intercom/b/f;

    aput-object v1, v0, v4

    sget-object v1, Lio/intercom/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lio/intercom/b/f;

    aput-object v1, v0, v5

    sget-object v1, Lio/intercom/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lio/intercom/b/f;

    aput-object v1, v0, v6

    sget-object v1, Lio/intercom/okhttp3/internal/http2/Http2Codec;->TE:Lio/intercom/b/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/intercom/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lio/intercom/b/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/intercom/okhttp3/internal/http2/Http2Codec;->ENCODING:Lio/intercom/b/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/intercom/okhttp3/internal/http2/Http2Codec;->UPGRADE:Lio/intercom/b/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_METHOD:Lio/intercom/b/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_PATH:Lio/intercom/b/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lio/intercom/b/f;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lio/intercom/b/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/intercom/b/f;

    sget-object v1, Lio/intercom/okhttp3/internal/http2/Http2Codec;->CONNECTION:Lio/intercom/b/f;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/okhttp3/internal/http2/Http2Codec;->HOST:Lio/intercom/b/f;

    aput-object v1, v0, v4

    sget-object v1, Lio/intercom/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lio/intercom/b/f;

    aput-object v1, v0, v5

    sget-object v1, Lio/intercom/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lio/intercom/b/f;

    aput-object v1, v0, v6

    sget-object v1, Lio/intercom/okhttp3/internal/http2/Http2Codec;->TE:Lio/intercom/b/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/intercom/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lio/intercom/b/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/intercom/okhttp3/internal/http2/Http2Codec;->ENCODING:Lio/intercom/b/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/intercom/okhttp3/internal/http2/Http2Codec;->UPGRADE:Lio/intercom/b/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Interceptor$Chain;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http2/Http2Connection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->client:Lio/intercom/okhttp3/OkHttpClient;

    iput-object p2, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->chain:Lio/intercom/okhttp3/Interceptor$Chain;

    iput-object p3, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iput-object p4, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    return-void
.end method

.method public static http2HeadersList(Lio/intercom/okhttp3/Request;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/okhttp3/Request;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Header;

    sget-object v3, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_METHOD:Lio/intercom/b/f;

    invoke-virtual {p0}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lio/intercom/okhttp3/internal/http2/Header;-><init>(Lio/intercom/b/f;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Header;

    sget-object v3, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_PATH:Lio/intercom/b/f;

    invoke-virtual {p0}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lio/intercom/okhttp3/internal/http/RequestLine;->requestPath(Lio/intercom/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lio/intercom/okhttp3/internal/http2/Header;-><init>(Lio/intercom/b/f;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Host"

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lio/intercom/okhttp3/internal/http2/Header;

    sget-object v4, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lio/intercom/b/f;

    invoke-direct {v3, v4, v0}, Lio/intercom/okhttp3/internal/http2/Header;-><init>(Lio/intercom/b/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lio/intercom/okhttp3/internal/http2/Header;

    sget-object v3, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lio/intercom/b/f;

    invoke-virtual {p0}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lio/intercom/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lio/intercom/okhttp3/internal/http2/Header;-><init>(Lio/intercom/b/f;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {v1}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v4

    sget-object v5, Lio/intercom/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lio/intercom/okhttp3/internal/http2/Header;

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lio/intercom/okhttp3/internal/http2/Header;-><init>(Lio/intercom/b/f;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static readHttp2HeadersList(Ljava/util/List;)Lio/intercom/okhttp3/Response$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;)",
            "Lio/intercom/okhttp3/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Lio/intercom/okhttp3/Headers$Builder;

    invoke-direct {v1}, Lio/intercom/okhttp3/Headers$Builder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    move-object v2, v3

    :goto_0
    if-ge v4, v5, :cond_3

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/internal/http2/Header;

    if-nez v0, :cond_0

    if-eqz v2, :cond_2

    iget v0, v2, Lio/intercom/okhttp3/internal/http/StatusLine;->code:I

    const/16 v6, 0x64

    if-ne v0, v6, :cond_2

    new-instance v0, Lio/intercom/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Headers$Builder;-><init>()V

    move-object v2, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lio/intercom/okhttp3/internal/http2/Header;->name:Lio/intercom/b/f;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http2/Header;->value:Lio/intercom/b/f;

    invoke-virtual {v0}, Lio/intercom/b/f;->KE()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lio/intercom/okhttp3/internal/http2/Header;->RESPONSE_STATUS:Lio/intercom/b/f;

    invoke-virtual {v6, v7}, Lio/intercom/b/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "HTTP/1.1 "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/internal/http/StatusLine;

    move-result-object v2

    move-object v0, v1

    goto :goto_1

    :cond_1
    sget-object v7, Lio/intercom/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    invoke-virtual {v6}, Lio/intercom/b/f;->KE()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v1, v6, v0}, Lio/intercom/okhttp3/internal/Internal;->addLenient(Lio/intercom/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lio/intercom/okhttp3/Response$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Response$Builder;-><init>()V

    sget-object v3, Lio/intercom/okhttp3/Protocol;->HTTP_2:Lio/intercom/okhttp3/Protocol;

    invoke-virtual {v0, v3}, Lio/intercom/okhttp3/Response$Builder;->protocol(Lio/intercom/okhttp3/Protocol;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    iget v3, v2, Lio/intercom/okhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v0, v3}, Lio/intercom/okhttp3/Response$Builder;->code(I)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    iget-object v2, v2, Lio/intercom/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->headers(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->stream:Lio/intercom/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->stream:Lio/intercom/okhttp3/internal/http2/Http2Stream;

    sget-object v1, Lio/intercom/okhttp3/internal/http2/ErrorCode;->CANCEL:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->closeLater(Lio/intercom/okhttp3/internal/http2/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public final createRequestBody(Lio/intercom/okhttp3/Request;J)Lio/intercom/b/r;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->stream:Lio/intercom/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->getSink()Lio/intercom/b/r;

    move-result-object v0

    return-object v0
.end method

.method public final finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->stream:Lio/intercom/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->getSink()Lio/intercom/b/r;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/b/r;->close()V

    return-void
.end method

.method public final flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->flush()V

    return-void
.end method

.method public final openResponseBody(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/ResponseBody;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, v1, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/EventListener;->responseBodyStart(Lio/intercom/okhttp3/Call;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->contentLength(Lio/intercom/okhttp3/Response;)J

    move-result-wide v2

    new-instance v1, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->stream:Lio/intercom/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v4}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->getSource()Lio/intercom/b/s;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lio/intercom/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Codec;Lio/intercom/b/s;)V

    new-instance v4, Lio/intercom/okhttp3/internal/http/RealResponseBody;

    invoke-static {v1}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v1

    invoke-direct {v4, v0, v2, v3, v1}, Lio/intercom/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLio/intercom/b/e;)V

    return-object v4
.end method

.method public final readResponseHeaders(Z)Lio/intercom/okhttp3/Response$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->stream:Lio/intercom/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->takeResponseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/http2/Http2Codec;->readHttp2HeadersList(Ljava/util/List;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/internal/Internal;->code(Lio/intercom/okhttp3/Response$Builder;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final writeRequestHeaders(Lio/intercom/okhttp3/Request;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->stream:Lio/intercom/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lio/intercom/okhttp3/Request;->body()Lio/intercom/okhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {p1}, Lio/intercom/okhttp3/internal/http2/Http2Codec;->http2HeadersList(Lio/intercom/okhttp3/Request;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->connection:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2, v1, v0}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lio/intercom/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->stream:Lio/intercom/okhttp3/internal/http2/Http2Stream;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->stream:Lio/intercom/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->readTimeout()Lio/intercom/b/t;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->chain:Lio/intercom/okhttp3/Interceptor$Chain;

    invoke-interface {v1}, Lio/intercom/okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/intercom/b/t;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/b/t;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->stream:Lio/intercom/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->writeTimeout()Lio/intercom/b/t;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Codec;->chain:Lio/intercom/okhttp3/Interceptor$Chain;

    invoke-interface {v1}, Lio/intercom/okhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/intercom/b/t;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/b/t;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
