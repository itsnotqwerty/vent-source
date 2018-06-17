.class final Lio/intercom/android/sdk/push/AutoValue_PushPayload;
.super Lio/intercom/android/sdk/push/PushPayload;


# instance fields
.field private final appName:Ljava/lang/String;

.field private final authorName:Ljava/lang/String;

.field private final body:Ljava/lang/String;

.field private final conversationId:Ljava/lang/String;

.field private final conversationPartType:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final intercomPushType:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final priority:I

.field private final pushOnlyConversationId:Ljava/lang/String;

.field private final receiver:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/push/PushPayload;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null conversationId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->conversationId:Ljava/lang/String;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null message"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->message:Ljava/lang/String;

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null body"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p3, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->body:Ljava/lang/String;

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null authorName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p4, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->authorName:Ljava/lang/String;

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null imageUrl"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p5, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->imageUrl:Ljava/lang/String;

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null appName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p6, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->appName:Ljava/lang/String;

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null receiver"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object p7, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->receiver:Ljava/lang/String;

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null conversationPartType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput-object p8, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->conversationPartType:Ljava/lang/String;

    if-nez p9, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null intercomPushType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iput-object p9, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->intercomPushType:Ljava/lang/String;

    if-nez p10, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iput-object p10, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->uri:Ljava/lang/String;

    if-nez p11, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null pushOnlyConversationId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p11, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->pushOnlyConversationId:Ljava/lang/String;

    if-nez p12, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null title"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput-object p12, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->title:Ljava/lang/String;

    iput p13, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->priority:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lio/intercom/android/sdk/push/PushPayload;

    if-eqz v2, :cond_3

    check-cast p1, Lio/intercom/android/sdk/push/PushPayload;

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->conversationId:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->message:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->body:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->authorName:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getAuthorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->receiver:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getReceiver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->conversationPartType:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getConversationPartType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->intercomPushType:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getIntercomPushType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->pushOnlyConversationId:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getPushOnlyConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->priority:I

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getPriority()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getConversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getConversationPartType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->conversationPartType:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntercomPushType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->intercomPushType:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->priority:I

    return v0
.end method

.method public final getPushOnlyConversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->pushOnlyConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiver()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->receiver:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const v2, 0xf4243

    iget-object v0, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->conversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->authorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->appName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->receiver:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->conversationPartType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->intercomPushType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->pushOnlyConversationId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->priority:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PushPayload{conversationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->receiver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conversationPartType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->conversationPartType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intercomPushType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->intercomPushType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushOnlyConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->pushOnlyConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
