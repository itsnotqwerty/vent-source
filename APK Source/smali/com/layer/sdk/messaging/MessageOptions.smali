.class public Lcom/layer/sdk/messaging/MessageOptions;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/layer/sdk/messaging/PushNotificationPayload;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            "Lcom/layer/sdk/messaging/PushNotificationPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultPushNotificationPayload(Lcom/layer/sdk/messaging/PushNotificationPayload;)Lcom/layer/sdk/messaging/MessageOptions;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/messaging/MessageOptions;->a:Lcom/layer/sdk/messaging/PushNotificationPayload;

    return-object p0
.end method

.method public getDefaultPushNotificationPayload()Lcom/layer/sdk/messaging/PushNotificationPayload;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/MessageOptions;->a:Lcom/layer/sdk/messaging/PushNotificationPayload;

    return-object v0
.end method

.method public getUserPushNotificationPayload(Lcom/layer/sdk/messaging/Identity;)Lcom/layer/sdk/messaging/PushNotificationPayload;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/MessageOptions;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/messaging/MessageOptions;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/PushNotificationPayload;

    goto :goto_0
.end method

.method public getUserPushNotificationPayloads()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            "Lcom/layer/sdk/messaging/PushNotificationPayload;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/messaging/MessageOptions;->b:Ljava/util/Map;

    return-object v0
.end method

.method public userPushNotificationPayload(Lcom/layer/sdk/messaging/Identity;Lcom/layer/sdk/messaging/PushNotificationPayload;)Lcom/layer/sdk/messaging/MessageOptions;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/MessageOptions;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/messaging/MessageOptions;->b:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/messaging/MessageOptions;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public userPushNotificationPayloads(Ljava/util/Map;)Lcom/layer/sdk/messaging/MessageOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            "Lcom/layer/sdk/messaging/PushNotificationPayload;",
            ">;)",
            "Lcom/layer/sdk/messaging/MessageOptions;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/messaging/MessageOptions;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/messaging/MessageOptions;->b:Ljava/util/Map;

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/layer/sdk/messaging/MessageOptions;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method
