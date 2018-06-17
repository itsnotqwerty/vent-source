.class public abstract Lio/intercom/android/sdk/models/Config;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/Config$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BATCH_USER_UPDATE_PERIOD_MS:J

.field public static final DEFAULT_CACHE_MAX_AGE_MS:J

.field public static final DEFAULT_PING_DELAY_MS:J

.field public static final DEFAULT_RATE_LIMIT_COUNT:I = 0x64

.field public static final DEFAULT_RATE_LIMIT_PERIOD_MS:J

.field public static final DEFAULT_SESSION_TIMEOUT_MS:J

.field public static final DEFAULT_SOFT_RESET_TIMEOUT_MS:J

.field public static final NULL:Lio/intercom/android/sdk/models/Config;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/intercom/android/sdk/models/Config;->DEFAULT_RATE_LIMIT_PERIOD_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/intercom/android/sdk/models/Config;->DEFAULT_CACHE_MAX_AGE_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/intercom/android/sdk/models/Config;->DEFAULT_SESSION_TIMEOUT_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/intercom/android/sdk/models/Config;->DEFAULT_SOFT_RESET_TIMEOUT_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/intercom/android/sdk/models/Config;->DEFAULT_BATCH_USER_UPDATE_PERIOD_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/intercom/android/sdk/models/Config;->DEFAULT_PING_DELAY_MS:J

    new-instance v0, Lio/intercom/android/sdk/models/Config$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Config$Builder;-><init>()V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Config$Builder;->build()Lio/intercom/android/sdk/models/Config;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/models/Config;->NULL:Lio/intercom/android/sdk/models/Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBaseColor()Ljava/lang/String;
.end method

.method public abstract getBatchUserUpdatePeriod()J
.end method

.method public abstract getFeatures()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHelpCenterBaseColor()Ljava/lang/String;
.end method

.method public abstract getHelpCenterUrl()Ljava/lang/String;
.end method

.method public abstract getLocale()Ljava/lang/String;
.end method

.method public abstract getMessengerBackground()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNewSessionThreshold()J
.end method

.method public abstract getPingDelayMs()J
.end method

.method public abstract getRateLimitCount()I
.end method

.method public abstract getRateLimitPeriod()J
.end method

.method public abstract getRealTimeConfig()Lio/intercom/android/sdk/nexus/NexusConfig;
.end method

.method public abstract getSoftResetTimeout()J
.end method

.method public abstract getUserUpdateCacheMaxAge()J
.end method

.method public abstract getWelcomeMessage()Ljava/lang/String;
.end method

.method public abstract isAudioEnabled()Z
.end method

.method public abstract isBackgroundRequestsEnabled()Z
.end method

.method public abstract isFirstRequest()Z
.end method

.method public abstract isInboundMessages()Z
.end method

.method public abstract isMetricsEnabled()Z
.end method

.method public abstract isShowPoweredBy()Z
.end method
