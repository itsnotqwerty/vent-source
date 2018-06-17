.class public final Lcom/layer/atlas/b/e/b;
.super Ljava/lang/Object;


# direct methods
.method public static h(Lcom/layer/sdk/messaging/Message;)Lcom/layer/sdk/messaging/MessagePart;
    .locals 2

    invoke-interface {p0}, Lcom/layer/sdk/messaging/Message;->getMessageParts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    return-object v0
.end method

.method public static i(Lcom/layer/sdk/messaging/Message;)Lcom/layer/sdk/messaging/MessagePart;
    .locals 2

    invoke-interface {p0}, Lcom/layer/sdk/messaging/Message;->getMessageParts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    return-object v0
.end method

.method public static j(Lcom/layer/sdk/messaging/Message;)Lcom/layer/sdk/messaging/MessagePart;
    .locals 2

    invoke-interface {p0}, Lcom/layer/sdk/messaging/Message;->getMessageParts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    return-object v0
.end method
