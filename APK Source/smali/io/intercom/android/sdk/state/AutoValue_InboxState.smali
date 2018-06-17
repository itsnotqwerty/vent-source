.class final Lio/intercom/android/sdk/state/AutoValue_InboxState;
.super Lio/intercom/android/sdk/state/InboxState;


# instance fields
.field private final conversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private final hasMorePages:Z

.field private final status:Lio/intercom/android/sdk/state/InboxState$Status;


# direct methods
.method constructor <init>(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Lio/intercom/android/sdk/state/InboxState$Status;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/android/sdk/state/InboxState;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null conversations"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->conversations:Ljava/util/List;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null status"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->status:Lio/intercom/android/sdk/state/InboxState$Status;

    iput-boolean p3, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->hasMorePages:Z

    return-void
.end method


# virtual methods
.method public final conversations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->conversations:Ljava/util/List;

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
    instance-of v2, p1, Lio/intercom/android/sdk/state/InboxState;

    if-eqz v2, :cond_3

    check-cast p1, Lio/intercom/android/sdk/state/InboxState;

    iget-object v2, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->conversations:Ljava/util/List;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/InboxState;->conversations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->status:Lio/intercom/android/sdk/state/InboxState$Status;

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/InboxState;->status()Lio/intercom/android/sdk/state/InboxState$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/intercom/android/sdk/state/InboxState$Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->hasMorePages:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/InboxState;->hasMorePages()Z

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hasMorePages()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->hasMorePages:Z

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const v2, 0xf4243

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->conversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->status:Lio/intercom/android/sdk/state/InboxState$Status;

    invoke-virtual {v1}, Lio/intercom/android/sdk/state/InboxState$Status;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v1, v0, v2

    iget-boolean v0, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->hasMorePages:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public final status()Lio/intercom/android/sdk/state/InboxState$Status;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->status:Lio/intercom/android/sdk/state/InboxState$Status;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InboxState{conversations="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->conversations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->status:Lio/intercom/android/sdk/state/InboxState$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasMorePages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/state/AutoValue_InboxState;->hasMorePages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
