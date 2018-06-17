.class final Lio/intercom/android/sdk/state/AutoValue_State;
.super Lio/intercom/android/sdk/state/State;


# instance fields
.field private final activeConversationState:Lio/intercom/android/sdk/state/ActiveConversationState;

.field private final hasConversations:Z

.field private final hostAppState:Lio/intercom/android/sdk/state/HostAppState;

.field private final inboxState:Lio/intercom/android/sdk/state/InboxState;

.field private final overlayState:Lio/intercom/android/sdk/state/OverlayState;

.field private final teamPresence:Lio/intercom/android/sdk/models/TeamPresence;

.field private final uiState:Lio/intercom/android/sdk/state/UiState;

.field private final unreadConversationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLio/intercom/android/sdk/state/UiState;Lio/intercom/android/sdk/models/TeamPresence;Ljava/util/Set;Lio/intercom/android/sdk/state/InboxState;Lio/intercom/android/sdk/state/HostAppState;Lio/intercom/android/sdk/state/OverlayState;Lio/intercom/android/sdk/state/ActiveConversationState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/intercom/android/sdk/state/UiState;",
            "Lio/intercom/android/sdk/models/TeamPresence;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/intercom/android/sdk/state/InboxState;",
            "Lio/intercom/android/sdk/state/HostAppState;",
            "Lio/intercom/android/sdk/state/OverlayState;",
            "Lio/intercom/android/sdk/state/ActiveConversationState;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/android/sdk/state/State;-><init>()V

    iput-boolean p1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->hasConversations:Z

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null uiState"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lio/intercom/android/sdk/state/AutoValue_State;->uiState:Lio/intercom/android/sdk/state/UiState;

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null teamPresence"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Lio/intercom/android/sdk/state/AutoValue_State;->teamPresence:Lio/intercom/android/sdk/models/TeamPresence;

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null unreadConversationIds"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p4, p0, Lio/intercom/android/sdk/state/AutoValue_State;->unreadConversationIds:Ljava/util/Set;

    if-nez p5, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null inboxState"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p5, p0, Lio/intercom/android/sdk/state/AutoValue_State;->inboxState:Lio/intercom/android/sdk/state/InboxState;

    if-nez p6, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null hostAppState"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p6, p0, Lio/intercom/android/sdk/state/AutoValue_State;->hostAppState:Lio/intercom/android/sdk/state/HostAppState;

    if-nez p7, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null overlayState"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p7, p0, Lio/intercom/android/sdk/state/AutoValue_State;->overlayState:Lio/intercom/android/sdk/state/OverlayState;

    if-nez p8, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null activeConversationState"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object p8, p0, Lio/intercom/android/sdk/state/AutoValue_State;->activeConversationState:Lio/intercom/android/sdk/state/ActiveConversationState;

    return-void
.end method


# virtual methods
.method public final activeConversationState()Lio/intercom/android/sdk/state/ActiveConversationState;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_State;->activeConversationState:Lio/intercom/android/sdk/state/ActiveConversationState;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lio/intercom/android/sdk/state/State;

    if-eqz v2, :cond_3

    check-cast p1, Lio/intercom/android/sdk/state/State;

    iget-boolean v2, p0, Lio/intercom/android/sdk/state/AutoValue_State;->hasConversations:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/State;->hasConversations()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/state/AutoValue_State;->uiState:Lio/intercom/android/sdk/state/UiState;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/State;->uiState()Lio/intercom/android/sdk/state/UiState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/state/AutoValue_State;->teamPresence:Lio/intercom/android/sdk/models/TeamPresence;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/State;->teamPresence()Lio/intercom/android/sdk/models/TeamPresence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/state/AutoValue_State;->unreadConversationIds:Ljava/util/Set;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/State;->unreadConversationIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/state/AutoValue_State;->inboxState:Lio/intercom/android/sdk/state/InboxState;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/State;->inboxState()Lio/intercom/android/sdk/state/InboxState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/state/AutoValue_State;->hostAppState:Lio/intercom/android/sdk/state/HostAppState;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/State;->hostAppState()Lio/intercom/android/sdk/state/HostAppState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/state/AutoValue_State;->overlayState:Lio/intercom/android/sdk/state/OverlayState;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/State;->overlayState()Lio/intercom/android/sdk/state/OverlayState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/state/AutoValue_State;->activeConversationState:Lio/intercom/android/sdk/state/ActiveConversationState;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/State;->activeConversationState()Lio/intercom/android/sdk/state/ActiveConversationState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hasConversations()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/state/AutoValue_State;->hasConversations:Z

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const v2, 0xf4243

    iget-boolean v0, p0, Lio/intercom/android/sdk/state/AutoValue_State;->hasConversations:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->uiState:Lio/intercom/android/sdk/state/UiState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->teamPresence:Lio/intercom/android/sdk/models/TeamPresence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->unreadConversationIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->inboxState:Lio/intercom/android/sdk/state/InboxState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->hostAppState:Lio/intercom/android/sdk/state/HostAppState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->overlayState:Lio/intercom/android/sdk/state/OverlayState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->activeConversationState:Lio/intercom/android/sdk/state/ActiveConversationState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public final hostAppState()Lio/intercom/android/sdk/state/HostAppState;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_State;->hostAppState:Lio/intercom/android/sdk/state/HostAppState;

    return-object v0
.end method

.method public final inboxState()Lio/intercom/android/sdk/state/InboxState;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_State;->inboxState:Lio/intercom/android/sdk/state/InboxState;

    return-object v0
.end method

.method public final overlayState()Lio/intercom/android/sdk/state/OverlayState;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_State;->overlayState:Lio/intercom/android/sdk/state/OverlayState;

    return-object v0
.end method

.method public final teamPresence()Lio/intercom/android/sdk/models/TeamPresence;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_State;->teamPresence:Lio/intercom/android/sdk/models/TeamPresence;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State{hasConversations="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->hasConversations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uiState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->uiState:Lio/intercom/android/sdk/state/UiState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", teamPresence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->teamPresence:Lio/intercom/android/sdk/models/TeamPresence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unreadConversationIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->unreadConversationIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inboxState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->inboxState:Lio/intercom/android/sdk/state/InboxState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hostAppState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->hostAppState:Lio/intercom/android/sdk/state/HostAppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overlayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->overlayState:Lio/intercom/android/sdk/state/OverlayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeConversationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_State;->activeConversationState:Lio/intercom/android/sdk/state/ActiveConversationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uiState()Lio/intercom/android/sdk/state/UiState;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_State;->uiState:Lio/intercom/android/sdk/state/UiState;

    return-object v0
.end method

.method public final unreadConversationIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_State;->unreadConversationIds:Ljava/util/Set;

    return-object v0
.end method
