.class final Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/retrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/retrofit2/ExecutorCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExecutorCallbackCall"
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
.field final callbackExecutor:Ljava/util/concurrent/Executor;

.field final delegate:Lio/intercom/retrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/retrofit2/Call",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lio/intercom/retrofit2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lio/intercom/retrofit2/Call",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lio/intercom/retrofit2/Call;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lio/intercom/retrofit2/Call;

    invoke-interface {v0}, Lio/intercom/retrofit2/Call;->cancel()V

    return-void
.end method

.method public final clone()Lio/intercom/retrofit2/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/retrofit2/Call",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lio/intercom/retrofit2/Call;

    invoke-interface {v2}, Lio/intercom/retrofit2/Call;->clone()Lio/intercom/retrofit2/Call;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lio/intercom/retrofit2/Call;)V

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->clone()Lio/intercom/retrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public final enqueue(Lio/intercom/retrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Callback",
            "<TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lio/intercom/retrofit2/Call;

    new-instance v1, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    invoke-direct {v1, p0, p1}, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;-><init>(Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;Lio/intercom/retrofit2/Callback;)V

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public final execute()Lio/intercom/retrofit2/Response;
    .locals 1
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

    iget-object v0, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lio/intercom/retrofit2/Call;

    invoke-interface {v0}, Lio/intercom/retrofit2/Call;->execute()Lio/intercom/retrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public final isCanceled()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lio/intercom/retrofit2/Call;

    invoke-interface {v0}, Lio/intercom/retrofit2/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public final isExecuted()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lio/intercom/retrofit2/Call;

    invoke-interface {v0}, Lio/intercom/retrofit2/Call;->isExecuted()Z

    move-result v0

    return v0
.end method

.method public final request()Lio/intercom/okhttp3/Request;
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lio/intercom/retrofit2/Call;

    invoke-interface {v0}, Lio/intercom/retrofit2/Call;->request()Lio/intercom/okhttp3/Request;

    move-result-object v0

    return-object v0
.end method
