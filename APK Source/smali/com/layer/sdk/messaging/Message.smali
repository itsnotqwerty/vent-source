.class public interface abstract Lcom/layer/sdk/messaging/Message;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/messaging/LayerObject;
.implements Lcom/layer/sdk/query/Queryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/messaging/Message$Property;,
        Lcom/layer/sdk/messaging/Message$RecipientStatus;
    }
.end annotation


# virtual methods
.method public abstract delete(Lcom/layer/sdk/LayerClient$DeletionMode;)V
.end method

.method public abstract getConversation()Lcom/layer/sdk/messaging/Conversation;
.end method

.method public abstract getId()Landroid/net/Uri;
.end method

.method public abstract getMessageParts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/MessagePart;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOptions()Lcom/layer/sdk/messaging/MessageOptions;
.end method

.method public abstract getPosition()J
.end method

.method public abstract getReceivedAt()Ljava/util/Date;
.end method

.method public abstract getRecipientStatus(Lcom/layer/sdk/messaging/Identity;)Lcom/layer/sdk/messaging/Message$RecipientStatus;
.end method

.method public abstract getRecipientStatus()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            "Lcom/layer/sdk/messaging/Message$RecipientStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSender()Lcom/layer/sdk/messaging/Identity;
.end method

.method public abstract getSentAt()Ljava/util/Date;
.end method

.method public abstract isDeleted()Z
.end method

.method public abstract isSent()Z
.end method

.method public abstract markAsRead()V
.end method
