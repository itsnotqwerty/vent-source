.class Lio/intercom/retrofit2/OkHttpCall$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/retrofit2/OkHttpCall;->enqueue(Lio/intercom/retrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/retrofit2/OkHttpCall;

.field final synthetic val$callback:Lio/intercom/retrofit2/Callback;


# direct methods
.method constructor <init>(Lio/intercom/retrofit2/OkHttpCall;Lio/intercom/retrofit2/Callback;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/retrofit2/OkHttpCall$1;->this$0:Lio/intercom/retrofit2/OkHttpCall;

    iput-object p2, p0, Lio/intercom/retrofit2/OkHttpCall$1;->val$callback:Lio/intercom/retrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callFailure(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall$1;->val$callback:Lio/intercom/retrofit2/Callback;

    iget-object v1, p0, Lio/intercom/retrofit2/OkHttpCall$1;->this$0:Lio/intercom/retrofit2/OkHttpCall;

    invoke-interface {v0, v1, p1}, Lio/intercom/retrofit2/Callback;->onFailure(Lio/intercom/retrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private callSuccess(Lio/intercom/retrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall$1;->val$callback:Lio/intercom/retrofit2/Callback;

    iget-object v1, p0, Lio/intercom/retrofit2/OkHttpCall$1;->this$0:Lio/intercom/retrofit2/OkHttpCall;

    invoke-interface {v0, v1, p1}, Lio/intercom/retrofit2/Callback;->onResponse(Lio/intercom/retrofit2/Call;Lio/intercom/retrofit2/Response;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onFailure(Lio/intercom/okhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall$1;->val$callback:Lio/intercom/retrofit2/Callback;

    iget-object v1, p0, Lio/intercom/retrofit2/OkHttpCall$1;->this$0:Lio/intercom/retrofit2/OkHttpCall;

    invoke-interface {v0, v1, p2}, Lio/intercom/retrofit2/Callback;->onFailure(Lio/intercom/retrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onResponse(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall$1;->this$0:Lio/intercom/retrofit2/OkHttpCall;

    invoke-virtual {v0, p2}, Lio/intercom/retrofit2/OkHttpCall;->parseResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/retrofit2/Response;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/retrofit2/OkHttpCall$1;->callSuccess(Lio/intercom/retrofit2/Response;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lio/intercom/retrofit2/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
