.class final Lio/intercom/android/sdk/state/AutoValue_HostAppState;
.super Lio/intercom/android/sdk/state/HostAppState;


# instance fields
.field private final backgroundedTimestamp:J

.field private final isBackgrounded:Z

.field private final sessionStartedSinceLastBackgrounded:Z


# direct methods
.method constructor <init>(ZZJ)V
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/state/HostAppState;-><init>()V

    iput-boolean p1, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->isBackgrounded:Z

    iput-boolean p2, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->sessionStartedSinceLastBackgrounded:Z

    iput-wide p3, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->backgroundedTimestamp:J

    return-void
.end method


# virtual methods
.method public final backgroundedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->backgroundedTimestamp:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lio/intercom/android/sdk/state/HostAppState;

    if-eqz v2, :cond_3

    check-cast p1, Lio/intercom/android/sdk/state/HostAppState;

    iget-boolean v2, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->isBackgrounded:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/HostAppState;->isBackgrounded()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->sessionStartedSinceLastBackgrounded:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/HostAppState;->sessionStartedSinceLastBackgrounded()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->backgroundedTimestamp:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/HostAppState;->backgroundedTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const v4, 0xf4243

    iget-boolean v0, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->isBackgrounded:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v4

    mul-int/2addr v0, v4

    iget-boolean v3, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->sessionStartedSinceLastBackgrounded:Z

    if-eqz v3, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    mul-int/2addr v0, v4

    iget-wide v2, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->backgroundedTimestamp:J

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    iget-wide v4, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->backgroundedTimestamp:J

    xor-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final isBackgrounded()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->isBackgrounded:Z

    return v0
.end method

.method public final sessionStartedSinceLastBackgrounded()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->sessionStartedSinceLastBackgrounded:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HostAppState{isBackgrounded="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->isBackgrounded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionStartedSinceLastBackgrounded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->sessionStartedSinceLastBackgrounded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;->backgroundedTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
