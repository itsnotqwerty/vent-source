.class Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/retrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->enqueue(Lio/intercom/retrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/retrofit2/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

.field final synthetic val$callback:Lio/intercom/retrofit2/Callback;


# direct methods
.method constructor <init>(Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;Lio/intercom/retrofit2/Callback;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iput-object p2, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lio/intercom/retrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lio/intercom/retrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Call",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;

    invoke-direct {v1, p0, p2}, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;-><init>(Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lio/intercom/retrofit2/Call;Lio/intercom/retrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Call",
            "<TT;>;",
            "Lio/intercom/retrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;

    invoke-direct {v1, p0, p2}, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;-><init>(Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;Lio/intercom/retrofit2/Response;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
