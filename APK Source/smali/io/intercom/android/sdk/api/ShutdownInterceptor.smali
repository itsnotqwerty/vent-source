.class public Lio/intercom/android/sdk/api/ShutdownInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Interceptor;


# static fields
.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSENGER_SHUTDOWN_RESPONSE:Ljava/lang/String; = "messenger_shutdown_response"

.field private static final SHUTDOWN_PERIOD:Ljava/lang/String; = "shutdown_period"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private final shutdownState:Lio/intercom/android/sdk/api/ShutdownState;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/api/ShutdownState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/api/ShutdownInterceptor;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p1, p0, Lio/intercom/android/sdk/api/ShutdownInterceptor;->shutdownState:Lio/intercom/android/sdk/api/ShutdownState;

    return-void
.end method


# virtual methods
.method public intercept(Lio/intercom/okhttp3/Interceptor$Chain;)Lio/intercom/okhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/ShutdownInterceptor;->shutdownState:Lio/intercom/android/sdk/api/ShutdownState;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/ShutdownState;->canSendNetworkRequests()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/api/ShutdownInterceptor;->twig:Lio/intercom/android/sdk/twig/Twig;

    iget-object v1, p0, Lio/intercom/android/sdk/api/ShutdownInterceptor;->shutdownState:Lio/intercom/android/sdk/api/ShutdownState;

    invoke-virtual {v1}, Lio/intercom/android/sdk/api/ShutdownState;->getShutdownReason()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lio/intercom/android/sdk/api/ShutdownInterceptor;->shutdownState:Lio/intercom/android/sdk/api/ShutdownState;

    invoke-virtual {v1}, Lio/intercom/android/sdk/api/ShutdownState;->getShutdownReason()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lio/intercom/okhttp3/Interceptor$Chain;->request()Lio/intercom/okhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/intercom/okhttp3/Interceptor$Chain;->proceed(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->newBuilder()Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->contentType()Lio/intercom/okhttp3/MediaType;

    move-result-object v3

    invoke-static {v3, v2}, Lio/intercom/okhttp3/ResponseBody;->create(Lio/intercom/okhttp3/MediaType;Ljava/lang/String;)Lio/intercom/okhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/intercom/okhttp3/Response$Builder;->body(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->close()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "error"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "messenger_shutdown_response"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "shutdown_period"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/intercom/android/sdk/api/ShutdownInterceptor;->shutdownState:Lio/intercom/android/sdk/api/ShutdownState;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lio/intercom/android/sdk/api/ShutdownState;->updateShutdownState(JLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lio/intercom/android/sdk/api/ShutdownInterceptor;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to deserialise error response: `"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "` message: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    goto :goto_0
.end method
