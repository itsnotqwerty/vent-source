.class final Lio/intercom/okhttp3/RealCall$AsyncCall;
.super Lio/intercom/okhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field private final responseCallback:Lio/intercom/okhttp3/Callback;

.field final synthetic this$0:Lio/intercom/okhttp3/RealCall;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/RealCall;Lio/intercom/okhttp3/Callback;)V
    .locals 4

    iput-object p1, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lio/intercom/okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lio/intercom/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->responseCallback:Lio/intercom/okhttp3/Callback;

    return-void
.end method


# virtual methods
.method protected final execute()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    invoke-virtual {v0}, Lio/intercom/okhttp3/RealCall;->getResponseWithInterceptorChain()Lio/intercom/okhttp3/Response;

    move-result-object v0

    iget-object v3, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    iget-object v3, v3, Lio/intercom/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v3}, Lio/intercom/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->responseCallback:Lio/intercom/okhttp3/Callback;

    iget-object v2, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lio/intercom/okhttp3/Callback;->onFailure(Lio/intercom/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    iget-object v0, v0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/intercom/okhttp3/Dispatcher;->finished(Lio/intercom/okhttp3/RealCall$AsyncCall;)V

    :goto_1
    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->responseCallback:Lio/intercom/okhttp3/Callback;

    iget-object v3, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    invoke-interface {v2, v3, v0}, Lio/intercom/okhttp3/Callback;->onResponse(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Response;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_3
    invoke-static {}, Lio/intercom/okhttp3/internal/platform/Platform;->get()Lio/intercom/okhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Callback failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    invoke-virtual {v4}, Lio/intercom/okhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lio/intercom/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object v0, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    iget-object v0, v0, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/intercom/okhttp3/Dispatcher;->finished(Lio/intercom/okhttp3/RealCall$AsyncCall;)V

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object v1, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    invoke-static {v1}, Lio/intercom/okhttp3/RealCall;->access$000(Lio/intercom/okhttp3/RealCall;)Lio/intercom/okhttp3/EventListener;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    invoke-virtual {v1, v2, v0}, Lio/intercom/okhttp3/EventListener;->callFailed(Lio/intercom/okhttp3/Call;Ljava/io/IOException;)V

    iget-object v1, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->responseCallback:Lio/intercom/okhttp3/Callback;

    iget-object v2, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    invoke-interface {v1, v2, v0}, Lio/intercom/okhttp3/Callback;->onFailure(Lio/intercom/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    iget-object v1, v1, Lio/intercom/okhttp3/RealCall;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/intercom/okhttp3/Dispatcher;->finished(Lio/intercom/okhttp3/RealCall$AsyncCall;)V

    throw v0

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method final get()Lio/intercom/okhttp3/RealCall;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    return-object v0
.end method

.method final host()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    iget-object v0, v0, Lio/intercom/okhttp3/RealCall;->originalRequest:Lio/intercom/okhttp3/Request;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final request()Lio/intercom/okhttp3/Request;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/RealCall$AsyncCall;->this$0:Lio/intercom/okhttp3/RealCall;

    iget-object v0, v0, Lio/intercom/okhttp3/RealCall;->originalRequest:Lio/intercom/okhttp3/Request;

    return-object v0
.end method
