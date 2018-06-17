.class Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->onResponse(Lio/intercom/retrofit2/Call;Lio/intercom/retrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

.field final synthetic val$response:Lio/intercom/retrofit2/Response;


# direct methods
.method constructor <init>(Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;Lio/intercom/retrofit2/Response;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iput-object p2, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->val$response:Lio/intercom/retrofit2/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v0, v0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lio/intercom/retrofit2/Call;

    invoke-interface {v0}, Lio/intercom/retrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v0, v0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lio/intercom/retrofit2/Callback;

    iget-object v1, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v1, v1, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lio/intercom/retrofit2/Callback;->onFailure(Lio/intercom/retrofit2/Call;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v0, v0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lio/intercom/retrofit2/Callback;

    iget-object v1, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v1, v1, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v2, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->val$response:Lio/intercom/retrofit2/Response;

    invoke-interface {v0, v1, v2}, Lio/intercom/retrofit2/Callback;->onResponse(Lio/intercom/retrofit2/Call;Lio/intercom/retrofit2/Response;)V

    goto :goto_0
.end method
