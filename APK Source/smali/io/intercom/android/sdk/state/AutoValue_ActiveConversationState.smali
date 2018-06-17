.class final Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;
.super Lio/intercom/android/sdk/state/ActiveConversationState;


# instance fields
.field private final getConversationId:Ljava/lang/String;

.field private final hasSwitchedInputType:Z

.field private final hasTextInComposer:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZZ)V
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/state/ActiveConversationState;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null getConversationId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->getConversationId:Ljava/lang/String;

    iput-boolean p2, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->hasSwitchedInputType:Z

    iput-boolean p3, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->hasTextInComposer:Z

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
    instance-of v2, p1, Lio/intercom/android/sdk/state/ActiveConversationState;

    if-eqz v2, :cond_3

    check-cast p1, Lio/intercom/android/sdk/state/ActiveConversationState;

    iget-object v2, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->getConversationId:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/ActiveConversationState;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->hasSwitchedInputType:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/ActiveConversationState;->hasSwitchedInputType()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->hasTextInComposer:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/ActiveConversationState;->hasTextInComposer()Z

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getConversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->getConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public final hasSwitchedInputType()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->hasSwitchedInputType:Z

    return v0
.end method

.method public final hasTextInComposer()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->hasTextInComposer:Z

    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const v4, 0xf4243

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->getConversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v4

    mul-int v3, v0, v4

    iget-boolean v0, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->hasSwitchedInputType:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v4

    iget-boolean v3, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->hasTextInComposer:Z

    if-eqz v3, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActiveConversationState{getConversationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->getConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasSwitchedInputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->hasSwitchedInputType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasTextInComposer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/state/AutoValue_ActiveConversationState;->hasTextInComposer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
