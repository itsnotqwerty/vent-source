.class Lio/intercom/android/sdk/nexus/NexusSocket$3;
.super Lio/intercom/okhttp3/WebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/nexus/NexusSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/nexus/NexusSocket;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/nexus/NexusSocket;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-direct {p0}, Lio/intercom/okhttp3/WebSocketListener;-><init>()V

    return-void
.end method

.method private parseJsonString(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "eventName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$200(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMessage ACK: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v1}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$200(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/twig/Twig;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onMessage: json parse exception for message: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v1}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$200(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/twig/Twig;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onMessage TEXT: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v1}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$700(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/nexus/NexusListener;

    move-result-object v1

    new-instance v2, Lio/intercom/android/sdk/nexus/NexusEvent;

    invoke-direct {v2, v0}, Lio/intercom/android/sdk/nexus/NexusEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Lio/intercom/android/sdk/nexus/NexusListener;->notifyEvent(Lio/intercom/android/sdk/nexus/NexusEvent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public onClosed(Lio/intercom/okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$900(Lio/intercom/android/sdk/nexus/NexusSocket;)V

    :goto_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$200(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClose code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$800(Lio/intercom/android/sdk/nexus/NexusSocket;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_0
    .end packed-switch
.end method

.method public onClosing(Lio/intercom/okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$200(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server requested close:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lio/intercom/okhttp3/WebSocket;->close(ILjava/lang/String;)Z

    return-void
.end method

.method public onFailure(Lio/intercom/okhttp3/WebSocket;Ljava/lang/Throwable;Lio/intercom/okhttp3/Response;)V
    .locals 3

    invoke-static {p3}, Lio/intercom/android/sdk/nexus/NexusSocket;->shouldReconnectFromFailure(Lio/intercom/okhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$900(Lio/intercom/android/sdk/nexus/NexusSocket;)V

    :goto_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$200(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$700(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/nexus/NexusListener;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/android/sdk/nexus/NexusListener;->onConnectFailed()V

    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$800(Lio/intercom/android/sdk/nexus/NexusSocket;)V

    goto :goto_0
.end method

.method public onMessage(Lio/intercom/okhttp3/WebSocket;Lio/intercom/b/f;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$200(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received bytes message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resetting timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$400(Lio/intercom/android/sdk/nexus/NexusSocket;)V

    return-void
.end method

.method public onMessage(Lio/intercom/okhttp3/WebSocket;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$400(Lio/intercom/android/sdk/nexus/NexusSocket;)V

    invoke-direct {p0, p2}, Lio/intercom/android/sdk/nexus/NexusSocket$3;->parseJsonString(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Lio/intercom/okhttp3/WebSocket;Lio/intercom/okhttp3/Response;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$200(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOpen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0, p1}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$302(Lio/intercom/android/sdk/nexus/NexusSocket;Lio/intercom/okhttp3/WebSocket;)Lio/intercom/okhttp3/WebSocket;

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$400(Lio/intercom/android/sdk/nexus/NexusSocket;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$500(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/nexus/NexusTopicProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/android/sdk/nexus/NexusTopicProvider;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusEvent;->getSubscribeEvent(Ljava/util/List;)Lio/intercom/android/sdk/nexus/NexusEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/nexus/NexusEvent;->toStringEncodedJsonObject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->fire(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$600(Lio/intercom/android/sdk/nexus/NexusSocket;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {}, Lio/intercom/android/sdk/nexus/NexusEvent;->getUserPresenceEvent()Lio/intercom/android/sdk/nexus/NexusEvent;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/nexus/NexusEvent;->toStringEncodedJsonObject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/nexus/NexusSocket;->fire(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$3;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$700(Lio/intercom/android/sdk/nexus/NexusSocket;)Lio/intercom/android/sdk/nexus/NexusListener;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/android/sdk/nexus/NexusListener;->onConnect()V

    return-void
.end method
