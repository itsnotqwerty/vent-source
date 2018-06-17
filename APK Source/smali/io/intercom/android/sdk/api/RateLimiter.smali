.class Lio/intercom/android/sdk/api/RateLimiter;
.super Ljava/lang/Object;


# instance fields
.field private final appConfig:Lio/intercom/android/sdk/identity/AppConfig;

.field private limitedRequestCount:I

.field private periodStartTimestamp:J

.field private final timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/identity/AppConfig;)V
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/api/RateLimiter;-><init>(Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V

    return-void
.end method

.method constructor <init>(Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/api/RateLimiter;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p1, p0, Lio/intercom/android/sdk/api/RateLimiter;->appConfig:Lio/intercom/android/sdk/identity/AppConfig;

    iput-object p2, p0, Lio/intercom/android/sdk/api/RateLimiter;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    return-void
.end method

.method private hasReachedMaxCount()Z
    .locals 2

    iget v0, p0, Lio/intercom/android/sdk/api/RateLimiter;->limitedRequestCount:I

    iget-object v1, p0, Lio/intercom/android/sdk/api/RateLimiter;->appConfig:Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v1}, Lio/intercom/android/sdk/identity/AppConfig;->getRateLimitCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInsideCurrentTimePeriod()Z
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/api/RateLimiter;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v0}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/intercom/android/sdk/api/RateLimiter;->periodStartTimestamp:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lio/intercom/android/sdk/api/RateLimiter;->appConfig:Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/AppConfig;->getRateLimitPeriodMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method isLimited()Z
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/api/RateLimiter;->isInsideCurrentTimePeriod()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/api/RateLimiter;->hasReachedMaxCount()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logError()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/api/RateLimiter;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Your app is being rate limited because you\'re performing too many requests per minute"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method recordRequest()V
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/api/RateLimiter;->isInsideCurrentTimePeriod()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/api/RateLimiter;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v0}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/api/RateLimiter;->periodStartTimestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/android/sdk/api/RateLimiter;->limitedRequestCount:I

    :cond_0
    iget v0, p0, Lio/intercom/android/sdk/api/RateLimiter;->limitedRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/android/sdk/api/RateLimiter;->limitedRequestCount:I

    return-void
.end method
