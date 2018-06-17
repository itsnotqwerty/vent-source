.class final Lio/intercom/okhttp3/RealCall;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lio/intercom/okhttp3/OkHttpClient;

.field private eventListener:Lio/intercom/okhttp3/EventListener;

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lio/intercom/okhttp3/Request;

.field final retryAndFollowUpInterceptor:Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;


# direct methods
.method private constructor <init>(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Request;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    iput-object p2, p0, Lio/intercom/okhttp3/RealCall;->originalRequest:Lio/intercom/okhttp3/Request;

    iput-boolean p3, p0, Lio/intercom/okhttp3/RealCall;->forWebSocket:Z

    new-instance v0, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {v0, p1, p3}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lio/intercom/okhttp3/OkHttpClient;Z)V

    iput-object v0, p0, Lio/intercom/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/okhttp3/RealCall;)Lio/intercom/okhttp3/EventListener;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->eventListener:Lio/intercom/okhttp3/EventListener;

    return-object v0
.end method

.method private captureCallStackTrace()V
    .locals 2

    invoke-static {}, Lio/intercom/okhttp3/internal/platform/Platform;->get()Lio/intercom/okhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    return-void
.end method

.method static newRealCall(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Request;Z)Lio/intercom/okhttp3/RealCall;
    .locals 2

    new-instance v0, Lio/intercom/okhttp3/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/okhttp3/RealCall;-><init>(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Request;Z)V

    invoke-virtual {p0}, Lio/intercom/okhttp3/OkHttpClient;->eventListenerFactory()Lio/intercom/okhttp3/EventListener$Factory;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/intercom/okhttp3/EventListener$Factory;->create(Lio/intercom/okhttp3/Call;)Lio/intercom/okhttp3/EventListener;

    move-result-object v1

    iput-object v1, v0, Lio/intercom/okhttp3/RealCall;->eventListener:Lio/intercom/okhttp3/EventListener;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    return-void
.end method

.method public final bridge synthetic clone()Lio/intercom/okhttp3/Call;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/okhttp3/RealCall;->clone()Lio/intercom/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/intercom/okhttp3/RealCall;
    .locals 3

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    iget-object v1, p0, Lio/intercom/okhttp3/RealCall;->originalRequest:Lio/intercom/okhttp3/Request;

    iget-boolean v2, p0, Lio/intercom/okhttp3/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lio/intercom/okhttp3/RealCall;->newRealCall(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Request;Z)Lio/intercom/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/okhttp3/RealCall;->clone()Lio/intercom/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public final enqueue(Lio/intercom/okhttp3/Callback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/RealCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/intercom/okhttp3/RealCall;->executed:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lio/intercom/okhttp3/RealCall;->captureCallStackTrace()V

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->eventListener:Lio/intercom/okhttp3/EventListener;

    invoke-virtual {v0, p0}, Lio/intercom/okhttp3/EventListener;->callStart(Lio/intercom/okhttp3/Call;)V

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lio/intercom/okhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lio/intercom/okhttp3/RealCall$AsyncCall;-><init>(Lio/intercom/okhttp3/RealCall;Lio/intercom/okhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Dispatcher;->enqueue(Lio/intercom/okhttp3/RealCall$AsyncCall;)V

    return-void
.end method

.method public final execute()Lio/intercom/okhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/RealCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/intercom/okhttp3/RealCall;->executed:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lio/intercom/okhttp3/RealCall;->captureCallStackTrace()V

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->eventListener:Lio/intercom/okhttp3/EventListener;

    invoke-virtual {v0, p0}, Lio/intercom/okhttp3/EventListener;->callStart(Lio/intercom/okhttp3/Call;)V

    :try_start_2
    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/intercom/okhttp3/Dispatcher;->executed(Lio/intercom/okhttp3/RealCall;)V

    invoke-virtual {p0}, Lio/intercom/okhttp3/RealCall;->getResponseWithInterceptorChain()Lio/intercom/okhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lio/intercom/okhttp3/RealCall;->eventListener:Lio/intercom/okhttp3/EventListener;

    invoke-virtual {v1, p0, v0}, Lio/intercom/okhttp3/EventListener;->callFailed(Lio/intercom/okhttp3/Call;Ljava/io/IOException;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/intercom/okhttp3/Dispatcher;->finished(Lio/intercom/okhttp3/RealCall;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/intercom/okhttp3/Dispatcher;->finished(Lio/intercom/okhttp3/RealCall;)V

    return-object v0
.end method

.method final getResponseWithInterceptorChain()Lio/intercom/okhttp3/Response;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/intercom/okhttp3/internal/http/BridgeInterceptor;

    iget-object v3, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lio/intercom/okhttp3/OkHttpClient;->cookieJar()Lio/intercom/okhttp3/CookieJar;

    move-result-object v3

    invoke-direct {v0, v3}, Lio/intercom/okhttp3/internal/http/BridgeInterceptor;-><init>(Lio/intercom/okhttp3/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;

    iget-object v3, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lio/intercom/okhttp3/OkHttpClient;->internalCache()Lio/intercom/okhttp3/internal/cache/InternalCache;

    move-result-object v3

    invoke-direct {v0, v3}, Lio/intercom/okhttp3/internal/cache/CacheInterceptor;-><init>(Lio/intercom/okhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/intercom/okhttp3/internal/connection/ConnectInterceptor;

    iget-object v3, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-direct {v0, v3}, Lio/intercom/okhttp3/internal/connection/ConnectInterceptor;-><init>(Lio/intercom/okhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lio/intercom/okhttp3/RealCall;->forWebSocket:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lio/intercom/okhttp3/internal/http/CallServerInterceptor;

    iget-boolean v3, p0, Lio/intercom/okhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v0, v3}, Lio/intercom/okhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;

    const/4 v5, 0x0

    iget-object v6, p0, Lio/intercom/okhttp3/RealCall;->originalRequest:Lio/intercom/okhttp3/Request;

    iget-object v8, p0, Lio/intercom/okhttp3/RealCall;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v3, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lio/intercom/okhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v9

    iget-object v3, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lio/intercom/okhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v10

    iget-object v3, p0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lio/intercom/okhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v11

    move-object v3, v2

    move-object v4, v2

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http/HttpCodec;Lio/intercom/okhttp3/internal/connection/RealConnection;ILio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;III)V

    iget-object v1, p0, Lio/intercom/okhttp3/RealCall;->originalRequest:Lio/intercom/okhttp3/Request;

    invoke-interface {v0, v1}, Lio/intercom/okhttp3/Interceptor$Chain;->proceed(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public final isCanceled()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final redactedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->originalRequest:Lio/intercom/okhttp3/Request;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final request()Lio/intercom/okhttp3/Request;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->originalRequest:Lio/intercom/okhttp3/Request;

    return-object v0
.end method

.method final streamAllocation()Lio/intercom/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method final toLoggableString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/intercom/okhttp3/RealCall;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "canceled "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lio/intercom/okhttp3/RealCall;->forWebSocket:Z

    if-eqz v0, :cond_1

    const-string v0, "web socket"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "call"

    goto :goto_1
.end method
