.class public final Lio/intercom/okhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Interceptor$Chain;


# instance fields
.field private final call:Lio/intercom/okhttp3/Call;

.field private calls:I

.field private final connectTimeout:I

.field private final connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

.field private final eventListener:Lio/intercom/okhttp3/EventListener;

.field private final httpCodec:Lio/intercom/okhttp3/internal/http/HttpCodec;

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final readTimeout:I

.field private final request:Lio/intercom/okhttp3/Request;

.field private final streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

.field private final writeTimeout:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http/HttpCodec;Lio/intercom/okhttp3/internal/connection/RealConnection;ILio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Interceptor;",
            ">;",
            "Lio/intercom/okhttp3/internal/connection/StreamAllocation;",
            "Lio/intercom/okhttp3/internal/http/HttpCodec;",
            "Lio/intercom/okhttp3/internal/connection/RealConnection;",
            "I",
            "Lio/intercom/okhttp3/Request;",
            "Lio/intercom/okhttp3/Call;",
            "Lio/intercom/okhttp3/EventListener;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iput-object p4, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iput-object p2, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iput-object p3, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    iput p5, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->index:I

    iput-object p6, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->request:Lio/intercom/okhttp3/Request;

    iput-object p7, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call:Lio/intercom/okhttp3/Call;

    iput-object p8, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lio/intercom/okhttp3/EventListener;

    iput p9, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iput p10, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    iput p11, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    return-void
.end method


# virtual methods
.method public final call()Lio/intercom/okhttp3/Call;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call:Lio/intercom/okhttp3/Call;

    return-object v0
.end method

.method public final connectTimeoutMillis()I
    .locals 1

    iget v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    return v0
.end method

.method public final connection()Lio/intercom/okhttp3/Connection;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public final eventListener()Lio/intercom/okhttp3/EventListener;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lio/intercom/okhttp3/EventListener;

    return-object v0
.end method

.method public final httpStream()Lio/intercom/okhttp3/internal/http/HttpCodec;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    return-object v0
.end method

.method public final proceed(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->proceed(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http/HttpCodec;Lio/intercom/okhttp3/internal/connection/RealConnection;)Lio/intercom/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public final proceed(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http/HttpCodec;Lio/intercom/okhttp3/internal/connection/RealConnection;)Lio/intercom/okhttp3/Response;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->calls:I

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/connection/RealConnection;->supportsUrl(Lio/intercom/okhttp3/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network interceptor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v3, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must retain the same host and port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    if-eqz v0, :cond_2

    iget v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->calls:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network interceptor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v3, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v5, v2, 0x1

    iget-object v7, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call:Lio/intercom/okhttp3/Call;

    iget-object v8, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget v9, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v10, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    iget v11, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v11}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http/HttpCodec;Lio/intercom/okhttp3/internal/connection/RealConnection;ILio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;III)V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/okhttp3/Interceptor;

    invoke-interface {v1, v0}, Lio/intercom/okhttp3/Interceptor;->intercept(Lio/intercom/okhttp3/Interceptor$Chain;)Lio/intercom/okhttp3/Response;

    move-result-object v2

    if-eqz p3, :cond_3

    iget v3, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v0, v0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->calls:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v2}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned a response with no body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-object v2
.end method

.method public final readTimeoutMillis()I
    .locals 1

    iget v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    return v0
.end method

.method public final request()Lio/intercom/okhttp3/Request;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->request:Lio/intercom/okhttp3/Request;

    return-object v0
.end method

.method public final streamAllocation()Lio/intercom/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method

.method public final withConnectTimeout(ILjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/Interceptor$Chain;
    .locals 12

    const-string v0, "timeout"

    int-to-long v2, p1

    invoke-static {v0, v2, v3, p2}, Lio/intercom/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v9

    new-instance v0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iget-object v3, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget v5, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v6, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->request:Lio/intercom/okhttp3/Request;

    iget-object v7, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call:Lio/intercom/okhttp3/Call;

    iget-object v8, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget v10, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    iget v11, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    invoke-direct/range {v0 .. v11}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http/HttpCodec;Lio/intercom/okhttp3/internal/connection/RealConnection;ILio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;III)V

    return-object v0
.end method

.method public final withReadTimeout(ILjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/Interceptor$Chain;
    .locals 12

    const-string v0, "timeout"

    int-to-long v2, p1

    invoke-static {v0, v2, v3, p2}, Lio/intercom/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v10

    new-instance v0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iget-object v3, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget v5, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v6, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->request:Lio/intercom/okhttp3/Request;

    iget-object v7, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call:Lio/intercom/okhttp3/Call;

    iget-object v8, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget v9, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v11, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    invoke-direct/range {v0 .. v11}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http/HttpCodec;Lio/intercom/okhttp3/internal/connection/RealConnection;ILio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;III)V

    return-object v0
.end method

.method public final withWriteTimeout(ILjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/Interceptor$Chain;
    .locals 12

    const-string v0, "timeout"

    int-to-long v2, p1

    invoke-static {v0, v2, v3, p2}, Lio/intercom/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v11

    new-instance v0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    iget-object v3, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget v5, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v6, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->request:Lio/intercom/okhttp3/Request;

    iget-object v7, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->call:Lio/intercom/okhttp3/Call;

    iget-object v8, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget v9, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v10, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    invoke-direct/range {v0 .. v11}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http/HttpCodec;Lio/intercom/okhttp3/internal/connection/RealConnection;ILio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;III)V

    return-object v0
.end method

.method public final writeTimeoutMillis()I
    .locals 1

    iget v0, p0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    return v0
.end method
