.class final Lio/intercom/retrofit2/OkHttpCall;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/retrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;,
        Lio/intercom/retrofit2/OkHttpCall$NoContentResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/retrofit2/Call",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile canceled:Z

.field private creationFailure:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private executed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private rawCall:Lio/intercom/okhttp3/Call;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final serviceMethod:Lio/intercom/retrofit2/ServiceMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/retrofit2/ServiceMethod",
            "<TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/intercom/retrofit2/ServiceMethod;[Ljava/lang/Object;)V
    .locals 0
    .param p2    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/ServiceMethod",
            "<TT;*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/retrofit2/OkHttpCall;->serviceMethod:Lio/intercom/retrofit2/ServiceMethod;

    iput-object p2, p0, Lio/intercom/retrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    return-void
.end method

.method private createRawCall()Lio/intercom/okhttp3/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->serviceMethod:Lio/intercom/retrofit2/ServiceMethod;

    iget-object v1, p0, Lio/intercom/retrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/intercom/retrofit2/ServiceMethod;->toRequest([Ljava/lang/Object;)Lio/intercom/okhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/retrofit2/OkHttpCall;->serviceMethod:Lio/intercom/retrofit2/ServiceMethod;

    iget-object v1, v1, Lio/intercom/retrofit2/ServiceMethod;->callFactory:Lio/intercom/okhttp3/Call$Factory;

    invoke-interface {v1, v0}, Lio/intercom/okhttp3/Call$Factory;->newCall(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Call;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/retrofit2/OkHttpCall;->canceled:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->rawCall:Lio/intercom/okhttp3/Call;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/intercom/okhttp3/Call;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final bridge synthetic clone()Lio/intercom/retrofit2/Call;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/retrofit2/OkHttpCall;->clone()Lio/intercom/retrofit2/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/intercom/retrofit2/OkHttpCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/retrofit2/OkHttpCall",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/retrofit2/OkHttpCall;

    iget-object v1, p0, Lio/intercom/retrofit2/OkHttpCall;->serviceMethod:Lio/intercom/retrofit2/ServiceMethod;

    iget-object v2, p0, Lio/intercom/retrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lio/intercom/retrofit2/OkHttpCall;-><init>(Lio/intercom/retrofit2/ServiceMethod;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/retrofit2/OkHttpCall;->clone()Lio/intercom/retrofit2/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public final enqueue(Lio/intercom/retrofit2/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Callback",
            "<TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/retrofit2/OkHttpCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

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
    iput-boolean v0, p0, Lio/intercom/retrofit2/OkHttpCall;->executed:Z

    iget-object v2, p0, Lio/intercom/retrofit2/OkHttpCall;->rawCall:Lio/intercom/okhttp3/Call;

    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    :try_start_2
    invoke-direct {p0}, Lio/intercom/retrofit2/OkHttpCall;->createRawCall()Lio/intercom/okhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/retrofit2/OkHttpCall;->rawCall:Lio/intercom/okhttp3/Call;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0, v0}, Lio/intercom/retrofit2/Callback;->onFailure(Lio/intercom/retrofit2/Call;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    iput-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lio/intercom/retrofit2/OkHttpCall;->canceled:Z

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lio/intercom/okhttp3/Call;->cancel()V

    :cond_2
    new-instance v0, Lio/intercom/retrofit2/OkHttpCall$1;

    invoke-direct {v0, p0, p1}, Lio/intercom/retrofit2/OkHttpCall$1;-><init>(Lio/intercom/retrofit2/OkHttpCall;Lio/intercom/retrofit2/Callback;)V

    invoke-interface {v1, v0}, Lio/intercom/okhttp3/Call;->enqueue(Lio/intercom/okhttp3/Callback;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public final execute()Lio/intercom/retrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/retrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/retrofit2/OkHttpCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

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
    iput-boolean v0, p0, Lio/intercom/retrofit2/OkHttpCall;->executed:Z

    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1
    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->rawCall:Lio/intercom/okhttp3/Call;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    :try_start_2
    invoke-direct {p0}, Lio/intercom/retrofit2/OkHttpCall;->createRawCall()Lio/intercom/okhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->rawCall:Lio/intercom/okhttp3/Call;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-boolean v1, p0, Lio/intercom/retrofit2/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lio/intercom/okhttp3/Call;->cancel()V

    :cond_4
    invoke-interface {v0}, Lio/intercom/okhttp3/Call;->execute()Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/retrofit2/OkHttpCall;->parseResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/retrofit2/Response;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_4
    iput-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final isCanceled()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lio/intercom/retrofit2/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/intercom/retrofit2/OkHttpCall;->rawCall:Lio/intercom/okhttp3/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/intercom/retrofit2/OkHttpCall;->rawCall:Lio/intercom/okhttp3/Call;

    invoke-interface {v1}, Lio/intercom/okhttp3/Call;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/retrofit2/OkHttpCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final parseResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/retrofit2/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/Response;",
            ")",
            "Lio/intercom/retrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    new-instance v2, Lio/intercom/retrofit2/OkHttpCall$NoContentResponseBody;

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->contentType()Lio/intercom/okhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lio/intercom/retrofit2/OkHttpCall$NoContentResponseBody;-><init>(Lio/intercom/okhttp3/MediaType;J)V

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/Response$Builder;->body(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    :cond_0
    :try_start_0
    invoke-static {v1}, Lio/intercom/retrofit2/Utils;->buffer(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/ResponseBody;

    move-result-object v2

    invoke-static {v2, v0}, Lio/intercom/retrofit2/Response;->error(Lio/intercom/okhttp3/ResponseBody;Lio/intercom/okhttp3/Response;)Lio/intercom/retrofit2/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->close()V

    throw v0

    :cond_1
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_2

    const/16 v3, 0xcd

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->close()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lio/intercom/retrofit2/Response;->success(Ljava/lang/Object;Lio/intercom/okhttp3/Response;)Lio/intercom/retrofit2/Response;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;

    invoke-direct {v2, v1}, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;-><init>(Lio/intercom/okhttp3/ResponseBody;)V

    :try_start_1
    iget-object v1, p0, Lio/intercom/retrofit2/OkHttpCall;->serviceMethod:Lio/intercom/retrofit2/ServiceMethod;

    invoke-virtual {v1, v2}, Lio/intercom/retrofit2/ServiceMethod;->toResponse(Lio/intercom/okhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lio/intercom/retrofit2/Response;->success(Ljava/lang/Object;Lio/intercom/okhttp3/Response;)Lio/intercom/retrofit2/Response;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;->throwIfCaught()V

    throw v0
.end method

.method public final declared-synchronized request()Lio/intercom/okhttp3/Request;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->rawCall:Lio/intercom/okhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/intercom/okhttp3/Call;->request()Lio/intercom/okhttp3/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create request."

    iget-object v2, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lio/intercom/retrofit2/OkHttpCall;->createRawCall()Lio/intercom/okhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->rawCall:Lio/intercom/okhttp3/Call;

    invoke-interface {v0}, Lio/intercom/okhttp3/Call;->request()Lio/intercom/okhttp3/Request;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    iput-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception v0

    iput-object v0, p0, Lio/intercom/retrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
