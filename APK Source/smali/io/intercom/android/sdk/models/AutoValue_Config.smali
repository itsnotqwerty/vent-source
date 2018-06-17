.class final Lio/intercom/android/sdk/models/AutoValue_Config;
.super Lio/intercom/android/sdk/models/Config;


# instance fields
.field private final audioEnabled:Z

.field private final backgroundRequestsEnabled:Z

.field private final baseColor:Ljava/lang/String;

.field private final batchUserUpdatePeriod:J

.field private final features:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final firstRequest:Z

.field private final helpCenterBaseColor:Ljava/lang/String;

.field private final helpCenterUrl:Ljava/lang/String;

.field private final inboundMessages:Z

.field private final locale:Ljava/lang/String;

.field private final messengerBackground:Ljava/lang/String;

.field private final metricsEnabled:Z

.field private final name:Ljava/lang/String;

.field private final newSessionThreshold:J

.field private final pingDelayMs:J

.field private final rateLimitCount:I

.field private final rateLimitPeriod:J

.field private final realTimeConfig:Lio/intercom/android/sdk/nexus/NexusConfig;

.field private final showPoweredBy:Z

.field private final softResetTimeout:J

.field private final userUpdateCacheMaxAge:J

.field private final welcomeMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZJIJJJJJLio/intercom/android/sdk/nexus/NexusConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZZJIJJJJJ",
            "Lio/intercom/android/sdk/nexus/NexusConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/android/sdk/models/Config;-><init>()V

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null name"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput-object p1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->name:Ljava/lang/String;

    iput-object p2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->baseColor:Ljava/lang/String;

    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null welcomeMessage"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput-object p3, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->welcomeMessage:Ljava/lang/String;

    if-nez p4, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null messengerBackground"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iput-object p4, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->messengerBackground:Ljava/lang/String;

    if-nez p5, :cond_3

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null locale"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iput-object p5, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->locale:Ljava/lang/String;

    iput-boolean p6, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->firstRequest:Z

    iput-boolean p7, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->inboundMessages:Z

    iput-boolean p8, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->showPoweredBy:Z

    iput-boolean p9, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->metricsEnabled:Z

    iput-boolean p10, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->backgroundRequestsEnabled:Z

    move/from16 v0, p11

    iput-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->audioEnabled:Z

    move-wide/from16 v0, p12

    iput-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->rateLimitPeriod:J

    move/from16 v0, p14

    iput v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->rateLimitCount:I

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->batchUserUpdatePeriod:J

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->userUpdateCacheMaxAge:J

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->softResetTimeout:J

    move-wide/from16 v0, p21

    iput-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->newSessionThreshold:J

    move-wide/from16 v0, p23

    iput-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->pingDelayMs:J

    if-nez p25, :cond_4

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null realTimeConfig"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object/from16 v0, p25

    iput-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->realTimeConfig:Lio/intercom/android/sdk/nexus/NexusConfig;

    if-nez p26, :cond_5

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null helpCenterUrl"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object/from16 v0, p26

    iput-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterUrl:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterBaseColor:Ljava/lang/String;

    if-nez p28, :cond_6

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null features"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object/from16 v0, p28

    iput-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->features:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lio/intercom/android/sdk/models/Config;

    if-eqz v2, :cond_5

    check-cast p1, Lio/intercom/android/sdk/models/Config;

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->baseColor:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getBaseColor()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->welcomeMessage:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getWelcomeMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->messengerBackground:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getMessengerBackground()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->locale:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->firstRequest:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isFirstRequest()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->inboundMessages:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isInboundMessages()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->showPoweredBy:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isShowPoweredBy()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->metricsEnabled:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isMetricsEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->backgroundRequestsEnabled:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isBackgroundRequestsEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->audioEnabled:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isAudioEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->rateLimitPeriod:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getRateLimitPeriod()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->rateLimitCount:I

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getRateLimitCount()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->batchUserUpdatePeriod:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getBatchUserUpdatePeriod()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->userUpdateCacheMaxAge:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getUserUpdateCacheMaxAge()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->softResetTimeout:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getSoftResetTimeout()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->newSessionThreshold:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getNewSessionThreshold()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->pingDelayMs:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getPingDelayMs()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->realTimeConfig:Lio/intercom/android/sdk/nexus/NexusConfig;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getRealTimeConfig()Lio/intercom/android/sdk/nexus/NexusConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/intercom/android/sdk/nexus/NexusConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getHelpCenterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterBaseColor:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getHelpCenterBaseColor()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->features:Ljava/util/Set;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getFeatures()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->baseColor:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getBaseColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterBaseColor:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getHelpCenterBaseColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method public final getBaseColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->baseColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchUserUpdatePeriod()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->batchUserUpdatePeriod:J

    return-wide v0
.end method

.method public final getFeatures()Ljava/util/Set;
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

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->features:Ljava/util/Set;

    return-object v0
.end method

.method public final getHelpCenterBaseColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterBaseColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getHelpCenterUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessengerBackground()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->messengerBackground:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewSessionThreshold()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->newSessionThreshold:J

    return-wide v0
.end method

.method public final getPingDelayMs()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->pingDelayMs:J

    return-wide v0
.end method

.method public final getRateLimitCount()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->rateLimitCount:I

    return v0
.end method

.method public final getRateLimitPeriod()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->rateLimitPeriod:J

    return-wide v0
.end method

.method public final getRealTimeConfig()Lio/intercom/android/sdk/nexus/NexusConfig;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->realTimeConfig:Lio/intercom/android/sdk/nexus/NexusConfig;

    return-object v0
.end method

.method public final getSoftResetTimeout()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->softResetTimeout:J

    return-wide v0
.end method

.method public final getUserUpdateCacheMaxAge()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->userUpdateCacheMaxAge:J

    return-wide v0
.end method

.method public final getWelcomeMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->welcomeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 8

    const/4 v1, 0x0

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/16 v7, 0x20

    const v6, 0xf4243

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v6

    mul-int v4, v0, v6

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->baseColor:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v4

    mul-int/2addr v0, v6

    iget-object v4, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->welcomeMessage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    mul-int/2addr v0, v6

    iget-object v4, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->messengerBackground:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    mul-int/2addr v0, v6

    iget-object v4, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->locale:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    mul-int v4, v0, v6

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->firstRequest:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    xor-int/2addr v0, v4

    mul-int v4, v0, v6

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->inboundMessages:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    xor-int/2addr v0, v4

    mul-int v4, v0, v6

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->showPoweredBy:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    xor-int/2addr v0, v4

    mul-int v4, v0, v6

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->metricsEnabled:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    xor-int/2addr v0, v4

    mul-int v4, v0, v6

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->backgroundRequestsEnabled:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    xor-int/2addr v0, v4

    mul-int/2addr v0, v6

    iget-boolean v4, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->audioEnabled:Z

    if-eqz v4, :cond_6

    :goto_6
    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->rateLimitPeriod:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->rateLimitPeriod:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->rateLimitCount:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->batchUserUpdatePeriod:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->batchUserUpdatePeriod:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->userUpdateCacheMaxAge:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->userUpdateCacheMaxAge:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->softResetTimeout:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->softResetTimeout:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->newSessionThreshold:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->newSessionThreshold:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->pingDelayMs:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->pingDelayMs:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->realTimeConfig:Lio/intercom/android/sdk/nexus/NexusConfig;

    invoke-virtual {v2}, Lio/intercom/android/sdk/nexus/NexusConfig;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v6

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterBaseColor:Ljava/lang/String;

    if-nez v2, :cond_7

    :goto_7
    xor-int/2addr v0, v1

    mul-int/2addr v0, v6

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->features:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->baseColor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    move v0, v3

    goto/16 :goto_1

    :cond_2
    move v0, v3

    goto/16 :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    move v0, v3

    goto :goto_5

    :cond_6
    move v2, v3

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterBaseColor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public final isAudioEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->audioEnabled:Z

    return v0
.end method

.method public final isBackgroundRequestsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->backgroundRequestsEnabled:Z

    return v0
.end method

.method public final isFirstRequest()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->firstRequest:Z

    return v0
.end method

.method public final isInboundMessages()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->inboundMessages:Z

    return v0
.end method

.method public final isMetricsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->metricsEnabled:Z

    return v0
.end method

.method public final isShowPoweredBy()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->showPoweredBy:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Config{name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baseColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->baseColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", welcomeMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->welcomeMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messengerBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->messengerBackground:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->firstRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inboundMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->inboundMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showPoweredBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->showPoweredBy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metricsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->metricsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundRequestsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->backgroundRequestsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->audioEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rateLimitPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->rateLimitPeriod:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rateLimitCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->rateLimitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batchUserUpdatePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->batchUserUpdatePeriod:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userUpdateCacheMaxAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->userUpdateCacheMaxAge:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", softResetTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->softResetTimeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newSessionThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->newSessionThreshold:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pingDelayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->pingDelayMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->realTimeConfig:Lio/intercom/android/sdk/nexus/NexusConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", helpCenterUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", helpCenterBaseColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->helpCenterBaseColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Config;->features:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
