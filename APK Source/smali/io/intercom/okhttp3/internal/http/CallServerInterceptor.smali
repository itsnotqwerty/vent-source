.class public final Lio/intercom/okhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/internal/http/CallServerInterceptor$CountingSink;
    }
.end annotation


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/intercom/okhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public final intercept(Lio/intercom/okhttp3/Interceptor$Chain;)Lio/intercom/okhttp3/Response;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->httpStream()Lio/intercom/okhttp3/internal/http/HttpCodec;

    move-result-object v2

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    move-result-object v3

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connection()Lio/intercom/okhttp3/Connection;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/internal/connection/RealConnection;

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->request()Lio/intercom/okhttp3/Request;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lio/intercom/okhttp3/EventListener;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call()Lio/intercom/okhttp3/Call;

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/intercom/okhttp3/EventListener;->requestHeadersStart(Lio/intercom/okhttp3/Call;)V

    invoke-interface {v2, v4}, Lio/intercom/okhttp3/internal/http/HttpCodec;->writeRequestHeaders(Lio/intercom/okhttp3/Request;)V

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lio/intercom/okhttp3/EventListener;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call()Lio/intercom/okhttp3/Call;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lio/intercom/okhttp3/EventListener;->requestHeadersEnd(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Request;)V

    const/4 v1, 0x0

    invoke-virtual {v4}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/intercom/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lio/intercom/okhttp3/Request;->body()Lio/intercom/okhttp3/RequestBody;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v5, "100-continue"

    const-string v8, "Expect"

    invoke-virtual {v4, v8}, Lio/intercom/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Lio/intercom/okhttp3/internal/http/HttpCodec;->flushRequest()V

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lio/intercom/okhttp3/EventListener;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call()Lio/intercom/okhttp3/Call;

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/intercom/okhttp3/EventListener;->responseHeadersStart(Lio/intercom/okhttp3/Call;)V

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Lio/intercom/okhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_5

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lio/intercom/okhttp3/EventListener;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call()Lio/intercom/okhttp3/Call;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/intercom/okhttp3/EventListener;->requestBodyStart(Lio/intercom/okhttp3/Call;)V

    invoke-virtual {v4}, Lio/intercom/okhttp3/Request;->body()Lio/intercom/okhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    new-instance v0, Lio/intercom/okhttp3/internal/http/CallServerInterceptor$CountingSink;

    invoke-interface {v2, v4, v8, v9}, Lio/intercom/okhttp3/internal/http/HttpCodec;->createRequestBody(Lio/intercom/okhttp3/Request;J)Lio/intercom/b/r;

    move-result-object v5

    invoke-direct {v0, v5}, Lio/intercom/okhttp3/internal/http/CallServerInterceptor$CountingSink;-><init>(Lio/intercom/b/r;)V

    invoke-static {v0}, Lio/intercom/b/l;->b(Lio/intercom/b/r;)Lio/intercom/b/d;

    move-result-object v5

    invoke-virtual {v4}, Lio/intercom/okhttp3/Request;->body()Lio/intercom/okhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v8, v5}, Lio/intercom/okhttp3/RequestBody;->writeTo(Lio/intercom/b/d;)V

    invoke-interface {v5}, Lio/intercom/b/d;->close()V

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lio/intercom/okhttp3/EventListener;

    move-result-object v5

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call()Lio/intercom/okhttp3/Call;

    move-result-object v8

    iget-wide v10, v0, Lio/intercom/okhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    invoke-virtual {v5, v8, v10, v11}, Lio/intercom/okhttp3/EventListener;->requestBodyEnd(Lio/intercom/okhttp3/Call;J)V

    move-object v0, v1

    :goto_0
    invoke-interface {v2}, Lio/intercom/okhttp3/internal/http/HttpCodec;->finishRequest()V

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lio/intercom/okhttp3/EventListener;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call()Lio/intercom/okhttp3/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/EventListener;->responseHeadersStart(Lio/intercom/okhttp3/Call;)V

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lio/intercom/okhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, v4}, Lio/intercom/okhttp3/Response$Builder;->request(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v3}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection()Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/internal/connection/RealConnection;->handshake()Lio/intercom/okhttp3/Handshake;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->handshake(Lio/intercom/okhttp3/Handshake;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lio/intercom/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/intercom/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lio/intercom/okhttp3/EventListener;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call()Lio/intercom/okhttp3/Call;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lio/intercom/okhttp3/EventListener;->responseHeadersEnd(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Response;)V

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->code()I

    move-result v1

    iget-boolean v4, p0, Lio/intercom/okhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x65

    if-ne v1, v4, :cond_7

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    sget-object v2, Lio/intercom/okhttp3/internal/Util;->EMPTY_RESPONSE:Lio/intercom/okhttp3/ResponseBody;

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/Response$Builder;->body(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    :goto_1
    const-string v2, "close"

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v4

    const-string v5, "Connection"

    invoke-virtual {v4, v5}, Lio/intercom/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "close"

    const-string v4, "Connection"

    invoke-virtual {v0, v4}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v3}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    :cond_3
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_8

    :cond_4
    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    :cond_6
    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v4

    invoke-interface {v2, v0}, Lio/intercom/okhttp3/internal/http/HttpCodec;->openResponseBody(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/intercom/okhttp3/Response$Builder;->body(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    goto :goto_1

    :cond_8
    return-object v0

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method
