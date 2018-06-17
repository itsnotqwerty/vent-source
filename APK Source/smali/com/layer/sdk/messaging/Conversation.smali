.class public abstract Lcom/layer/sdk/messaging/Conversation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/messaging/LayerObject;
.implements Lcom/layer/sdk/query/Queryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/messaging/Conversation$Property;,
        Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addParticipants(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/layer/sdk/messaging/Conversation;->addParticipantsByIds(Ljava/util/Set;)V

    return-void
.end method

.method public varargs addParticipants([Lcom/layer/sdk/messaging/Identity;)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/messaging/Conversation;->addParticipants(Ljava/util/Set;)V

    return-void
.end method

.method public abstract addParticipantsByIds(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs addParticipantsByIds([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/messaging/Conversation;->addParticipantsByIds(Ljava/util/Set;)V

    return-void
.end method

.method public abstract delete(Lcom/layer/sdk/LayerClient$DeletionMode;)V
.end method

.method public abstract getHistoricSyncStatus()Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;
.end method

.method public abstract getId()Landroid/net/Uri;
.end method

.method public abstract getLastMessage()Lcom/layer/sdk/messaging/Message;
.end method

.method public abstract getMetadata()Lcom/layer/sdk/messaging/Metadata;
.end method

.method public abstract getParticipants()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotalMessageCount()Ljava/lang/Integer;
.end method

.method public abstract getTotalUnreadMessageCount()Ljava/lang/Integer;
.end method

.method public abstract isDeleted()Z
.end method

.method public abstract isDeliveryReceiptsEnabled()Z
.end method

.method public abstract isDistinct()Z
.end method

.method public abstract isReadReceiptsEnabled()Z
.end method

.method public abstract markAllMessagesAsRead()V
.end method

.method public abstract putMetadata(Lcom/layer/sdk/messaging/Metadata;Z)V
.end method

.method public abstract putMetadataAtKeyPath(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeMetadataAtKeyPath(Ljava/lang/String;)V
.end method

.method public abstract removeParticipants(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs removeParticipants([Lcom/layer/sdk/messaging/Identity;)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/messaging/Conversation;->removeParticipants(Ljava/util/Set;)V

    return-void
.end method

.method public abstract send(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V
.end method

.method public abstract send(Lcom/layer/sdk/messaging/Message;)V
.end method

.method public abstract send(Lcom/layer/sdk/messaging/Message;Lcom/layer/sdk/listeners/LayerProgressListener;)V
.end method

.method public abstract syncAllHistoricMessages()V
.end method

.method public abstract syncFromEarliestUnreadMessage()V
.end method

.method public abstract syncMoreHistoricMessages(I)V
.end method
