.class public Lio/intercom/android/sdk/identity/AppConfig;
.super Ljava/lang/Object;


# static fields
.field private static final APP_AUDIO_ENABLED:Ljava/lang/String; = "app_audio_enabled"

.field private static final APP_BACKGROUND_REQUESTS_ENABLED:Ljava/lang/String; = "app_background_requests_enabled"

.field private static final APP_BATCH_USER_UPDATE_PERIOD_MS:Ljava/lang/String; = "batch_user_update_period_ms"

.field private static final APP_FEATURES:Ljava/lang/String; = "features"

.field private static final APP_HELP_CENTER_PRIMARY_COLOR:Ljava/lang/String; = "app_help_center_primary_color"

.field private static final APP_HELP_CENTER_URL:Ljava/lang/String; = "help_center_url"

.field private static final APP_INBOUND_MESSAGES:Ljava/lang/String; = "app_inbound_messages"

.field private static final APP_INTERCOM_LINK:Ljava/lang/String; = "app_intercom_link"

.field private static final APP_LOCALE:Ljava/lang/String; = "app_locale"

.field private static final APP_METRICS_ENABLED:Ljava/lang/String; = "app_metrics_enabled"

.field private static final APP_NAME:Ljava/lang/String; = "app_name"

.field private static final APP_NEW_SESSION_THRESHOLD_MS:Ljava/lang/String; = "new_session_threshold_ms"

.field private static final APP_PING_DELAY_MS:Ljava/lang/String; = "ping_delay_ms"

.field private static final APP_PRIMARY_COLOR:Ljava/lang/String; = "app_primary_color"

.field private static final APP_RATE_LIMIT_COUNT:Ljava/lang/String; = "app_rate_limit_count"

.field private static final APP_RATE_LIMIT_PERIOD_MS:Ljava/lang/String; = "app_rate_limit_period_ms"

.field private static final APP_RECEIVED_FROM_SERVER:Ljava/lang/String; = "app_received_from_server"

.field private static final APP_SOFT_RESET_TIMEOUT_MS:Ljava/lang/String; = "app_soft_reset_timeout_ms"

.field private static final APP_TEAM_BIO:Ljava/lang/String; = "app_team_bio"

.field private static final APP_USER_UPDATE_CACHE_MAX_AGE_MS:Ljava/lang/String; = "app_user_update_cache_max_age_ms"

.field private static final APP_WALLPAPER:Ljava/lang/String; = "app_wallpaper"


# instance fields
.field private audioEnabled:Z

.field private backgroundRequestsEnabled:Z

.field private baseColor:I

.field private baseColorDark:I

.field private batchUserUpdatePeriodMs:J

.field private final defaultColor:I

.field private features:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private helpCenterBaseColor:I

.field private helpCenterUrl:Ljava/lang/String;

.field private inboundMessages:Z

.field private locale:Ljava/lang/String;

.field private metricsEnabled:Z

.field private name:Ljava/lang/String;

.field private newSessionThresholdMs:J

.field private pingDelayMs:J

.field private final prefs:Landroid/content/SharedPreferences;

.field private rateLimitCount:I

.field private rateLimitPeriodMs:J

.field private realTimeConfig:Lio/intercom/android/sdk/nexus/NexusConfig;

.field private receivedFromServer:Z

.field private showIntercomLink:Z

.field private softResetTimeoutMs:J

.field private teamProfileBio:Ljava/lang/String;

.field private userUpdateCacheMaxAgeMs:J

.field private wallpaper:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusConfig;

    invoke-direct {v0}, Lio/intercom/android/sdk/nexus/NexusConfig;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->realTimeConfig:Lio/intercom/android/sdk/nexus/NexusConfig;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->teamProfileBio:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->wallpaper:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->locale:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->helpCenterUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->features:Ljava/util/Set;

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_main_blue:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->defaultColor:I

    const-string v0, "INTERCOM_SDK_PREFS"

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->name:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_primary_color"

    iget v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->defaultColor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->baseColor:I

    iget v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->baseColor:I

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ColorUtils;->darkenColor(I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->baseColorDark:I

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_intercom_link"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->showIntercomLink:Z

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_inbound_messages"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->inboundMessages:Z

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_rate_limit_count"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->rateLimitCount:I

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_rate_limit_period_ms"

    sget-wide v2, Lio/intercom/android/sdk/models/Config;->DEFAULT_RATE_LIMIT_PERIOD_MS:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->rateLimitPeriodMs:J

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_user_update_cache_max_age_ms"

    sget-wide v2, Lio/intercom/android/sdk/models/Config;->DEFAULT_CACHE_MAX_AGE_MS:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->userUpdateCacheMaxAgeMs:J

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "new_session_threshold_ms"

    sget-wide v2, Lio/intercom/android/sdk/models/Config;->DEFAULT_SESSION_TIMEOUT_MS:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->newSessionThresholdMs:J

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_soft_reset_timeout_ms"

    sget-wide v2, Lio/intercom/android/sdk/models/Config;->DEFAULT_SOFT_RESET_TIMEOUT_MS:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->softResetTimeoutMs:J

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "batch_user_update_period_ms"

    sget-wide v2, Lio/intercom/android/sdk/models/Config;->DEFAULT_BATCH_USER_UPDATE_PERIOD_MS:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->batchUserUpdatePeriodMs:J

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ping_delay_ms"

    sget-wide v2, Lio/intercom/android/sdk/models/Config;->DEFAULT_PING_DELAY_MS:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->pingDelayMs:J

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_metrics_enabled"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->metricsEnabled:Z

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_audio_enabled"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->audioEnabled:Z

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_team_bio"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->teamProfileBio:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_wallpaper"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->wallpaper:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_locale"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->locale:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_received_from_server"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->receivedFromServer:Z

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_background_requests_enabled"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->backgroundRequestsEnabled:Z

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "help_center_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->helpCenterUrl:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "app_help_center_primary_color"

    iget v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->defaultColor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->helpCenterBaseColor:I

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "features"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->features:Ljava/util/Set;

    return-void
.end method

.method private getConfigColor(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->defaultColor:I

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private isNewConfig(Lio/intercom/android/sdk/models/Config;)Z
    .locals 4

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getWelcomeMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->teamProfileBio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getMessengerBackground()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->wallpaper:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getLocale()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getBaseColor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/identity/AppConfig;->getConfigColor(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->baseColor:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getUserUpdateCacheMaxAge()J

    move-result-wide v0

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->userUpdateCacheMaxAgeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isMetricsEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->metricsEnabled:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isAudioEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->audioEnabled:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isShowPoweredBy()Z

    move-result v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->showIntercomLink:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isInboundMessages()Z

    move-result v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->inboundMessages:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getRateLimitCount()I

    move-result v0

    iget v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->rateLimitCount:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getRateLimitPeriod()J

    move-result-wide v0

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->rateLimitPeriodMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getNewSessionThreshold()J

    move-result-wide v0

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->newSessionThresholdMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getSoftResetTimeout()J

    move-result-wide v0

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->softResetTimeoutMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getBatchUserUpdatePeriod()J

    move-result-wide v0

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->batchUserUpdatePeriodMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getPingDelayMs()J

    move-result-wide v0

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->pingDelayMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isBackgroundRequestsEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->backgroundRequestsEnabled:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getHelpCenterUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->helpCenterUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getHelpCenterBaseColor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/identity/AppConfig;->getConfigColor(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->helpCenterBaseColor:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getFeatures()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AppConfig;->features:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backgroundRequestsDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->backgroundRequestsEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseColor()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->baseColor:I

    return v0
.end method

.method public getBaseColorDark()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->baseColorDark:I

    return v0
.end method

.method public getBatchUserUpdatePeriodMs()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->batchUserUpdatePeriodMs:J

    return-wide v0
.end method

.method public getHelpCenterBaseColor()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->helpCenterBaseColor:I

    return v0
.end method

.method public getHelpCenterUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->helpCenterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSessionThresholdMs()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->newSessionThresholdMs:J

    return-wide v0
.end method

.method public getPingDelayMs()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->pingDelayMs:J

    return-wide v0
.end method

.method public getRateLimitCount()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->rateLimitCount:I

    return v0
.end method

.method public getRateLimitPeriodMs()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->rateLimitPeriodMs:J

    return-wide v0
.end method

.method public getRealTimeConfig()Lio/intercom/android/sdk/nexus/NexusConfig;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->realTimeConfig:Lio/intercom/android/sdk/nexus/NexusConfig;

    return-object v0
.end method

.method public getSoftResetTimeoutMs()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->softResetTimeoutMs:J

    return-wide v0
.end method

.method public getTeamProfileBio()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->teamProfileBio:Ljava/lang/String;

    return-object v0
.end method

.method public getUserUpdateCacheMaxAgeMs()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->userUpdateCacheMaxAgeMs:J

    return-wide v0
.end method

.method public getWallpaper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->wallpaper:Ljava/lang/String;

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->features:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAudioEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->audioEnabled:Z

    return v0
.end method

.method public isInboundMessages()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->inboundMessages:Z

    return v0
.end method

.method public isMetricsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->metricsEnabled:Z

    return v0
.end method

.method public isReceivedFromServer()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->receivedFromServer:Z

    return v0
.end method

.method public resetRealTimeConfig()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusConfig;

    invoke-direct {v0}, Lio/intercom/android/sdk/nexus/NexusConfig;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->realTimeConfig:Lio/intercom/android/sdk/nexus/NexusConfig;

    return-void
.end method

.method public shouldShowIntercomLink()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->showIntercomLink:Z

    return v0
.end method

.method public update(Lio/intercom/android/sdk/models/Config;Lio/intercom/a/c/a/b;)V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lio/intercom/android/sdk/models/Config;->NULL:Lio/intercom/android/sdk/models/Config;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getRealTimeConfig()Lio/intercom/android/sdk/nexus/NexusConfig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->realTimeConfig:Lio/intercom/android/sdk/nexus/NexusConfig;

    iput-boolean v4, p0, Lio/intercom/android/sdk/identity/AppConfig;->receivedFromServer:Z

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/identity/AppConfig;->isNewConfig(Lio/intercom/android/sdk/models/Config;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getWelcomeMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->teamProfileBio:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getMessengerBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->wallpaper:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getBaseColor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/identity/AppConfig;->getConfigColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->baseColor:I

    iget v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->baseColor:I

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ColorUtils;->darkenColor(I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->baseColorDark:I

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isInboundMessages()Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->inboundMessages:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isShowPoweredBy()Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->showIntercomLink:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isAudioEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->audioEnabled:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isMetricsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->metricsEnabled:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getUserUpdateCacheMaxAge()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->userUpdateCacheMaxAgeMs:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getRateLimitPeriod()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->rateLimitPeriodMs:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getRateLimitCount()I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->rateLimitCount:I

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getNewSessionThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->newSessionThresholdMs:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getSoftResetTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->softResetTimeoutMs:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getBatchUserUpdatePeriod()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->batchUserUpdatePeriodMs:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getPingDelayMs()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->pingDelayMs:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->isBackgroundRequestsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->backgroundRequestsEnabled:Z

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->locale:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getHelpCenterUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->helpCenterUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getHelpCenterBaseColor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/identity/AppConfig;->getConfigColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->helpCenterBaseColor:I

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Config;->getFeatures()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->features:Ljava/util/Set;

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AppConfig;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_name"

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_team_bio"

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->teamProfileBio:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_wallpaper"

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->wallpaper:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_locale"

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->locale:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_primary_color"

    iget v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->baseColor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_help_center_primary_color"

    iget v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->helpCenterBaseColor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_rate_limit_count"

    iget v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->rateLimitCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_user_update_cache_max_age_ms"

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->userUpdateCacheMaxAgeMs:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_rate_limit_period_ms"

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->rateLimitPeriodMs:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "new_session_threshold_ms"

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->newSessionThresholdMs:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "batch_user_update_period_ms"

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->batchUserUpdatePeriodMs:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ping_delay_ms"

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->pingDelayMs:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_soft_reset_timeout_ms"

    iget-wide v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->softResetTimeoutMs:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_intercom_link"

    iget-boolean v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->showIntercomLink:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_inbound_messages"

    iget-boolean v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->inboundMessages:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_audio_enabled"

    iget-boolean v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->audioEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_metrics_enabled"

    iget-boolean v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->metricsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_received_from_server"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_background_requests_enabled"

    iget-boolean v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->backgroundRequestsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "help_center_url"

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->helpCenterUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "features"

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AppConfig;->features:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Lio/intercom/android/sdk/models/events/ConfigUpdateEvent;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/events/ConfigUpdateEvent;-><init>()V

    invoke-virtual {p2, v0}, Lio/intercom/a/c/a/b;->post(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
