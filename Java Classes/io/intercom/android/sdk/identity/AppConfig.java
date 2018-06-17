package io.intercom.android.sdk.identity;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Color;
import android.support.v4.content.a;
import io.intercom.a.c.a.b;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.models.Config;
import io.intercom.android.sdk.models.events.ConfigUpdateEvent;
import io.intercom.android.sdk.nexus.NexusConfig;
import io.intercom.android.sdk.utilities.ColorUtils;
import java.util.HashSet;
import java.util.Set;

public class AppConfig
{
  private static final String APP_AUDIO_ENABLED = "app_audio_enabled";
  private static final String APP_BACKGROUND_REQUESTS_ENABLED = "app_background_requests_enabled";
  private static final String APP_BATCH_USER_UPDATE_PERIOD_MS = "batch_user_update_period_ms";
  private static final String APP_FEATURES = "features";
  private static final String APP_HELP_CENTER_PRIMARY_COLOR = "app_help_center_primary_color";
  private static final String APP_HELP_CENTER_URL = "help_center_url";
  private static final String APP_INBOUND_MESSAGES = "app_inbound_messages";
  private static final String APP_INTERCOM_LINK = "app_intercom_link";
  private static final String APP_LOCALE = "app_locale";
  private static final String APP_METRICS_ENABLED = "app_metrics_enabled";
  private static final String APP_NAME = "app_name";
  private static final String APP_NEW_SESSION_THRESHOLD_MS = "new_session_threshold_ms";
  private static final String APP_PING_DELAY_MS = "ping_delay_ms";
  private static final String APP_PRIMARY_COLOR = "app_primary_color";
  private static final String APP_RATE_LIMIT_COUNT = "app_rate_limit_count";
  private static final String APP_RATE_LIMIT_PERIOD_MS = "app_rate_limit_period_ms";
  private static final String APP_RECEIVED_FROM_SERVER = "app_received_from_server";
  private static final String APP_SOFT_RESET_TIMEOUT_MS = "app_soft_reset_timeout_ms";
  private static final String APP_TEAM_BIO = "app_team_bio";
  private static final String APP_USER_UPDATE_CACHE_MAX_AGE_MS = "app_user_update_cache_max_age_ms";
  private static final String APP_WALLPAPER = "app_wallpaper";
  private boolean audioEnabled;
  private boolean backgroundRequestsEnabled;
  private int baseColor;
  private int baseColorDark;
  private long batchUserUpdatePeriodMs;
  private final int defaultColor;
  private Set<String> features = new HashSet();
  private int helpCenterBaseColor;
  private String helpCenterUrl = "";
  private boolean inboundMessages;
  private String locale = "";
  private boolean metricsEnabled;
  private String name = "";
  private long newSessionThresholdMs;
  private long pingDelayMs;
  private final SharedPreferences prefs;
  private int rateLimitCount;
  private long rateLimitPeriodMs;
  private NexusConfig realTimeConfig = new NexusConfig();
  private boolean receivedFromServer;
  private boolean showIntercomLink;
  private long softResetTimeoutMs;
  private String teamProfileBio = "";
  private long userUpdateCacheMaxAgeMs;
  private String wallpaper = "";
  
  public AppConfig(Context paramContext)
  {
    this.defaultColor = a.c(paramContext, R.color.intercom_main_blue);
    this.prefs = paramContext.getSharedPreferences("INTERCOM_SDK_PREFS", 0);
    this.name = this.prefs.getString("app_name", "");
    this.baseColor = this.prefs.getInt("app_primary_color", this.defaultColor);
    this.baseColorDark = ColorUtils.darkenColor(this.baseColor);
    this.showIntercomLink = this.prefs.getBoolean("app_intercom_link", true);
    this.inboundMessages = this.prefs.getBoolean("app_inbound_messages", false);
    this.rateLimitCount = this.prefs.getInt("app_rate_limit_count", 100);
    this.rateLimitPeriodMs = this.prefs.getLong("app_rate_limit_period_ms", Config.DEFAULT_RATE_LIMIT_PERIOD_MS);
    this.userUpdateCacheMaxAgeMs = this.prefs.getLong("app_user_update_cache_max_age_ms", Config.DEFAULT_CACHE_MAX_AGE_MS);
    this.newSessionThresholdMs = this.prefs.getLong("new_session_threshold_ms", Config.DEFAULT_SESSION_TIMEOUT_MS);
    this.softResetTimeoutMs = this.prefs.getLong("app_soft_reset_timeout_ms", Config.DEFAULT_SOFT_RESET_TIMEOUT_MS);
    this.batchUserUpdatePeriodMs = this.prefs.getLong("batch_user_update_period_ms", Config.DEFAULT_BATCH_USER_UPDATE_PERIOD_MS);
    this.pingDelayMs = this.prefs.getLong("ping_delay_ms", Config.DEFAULT_PING_DELAY_MS);
    this.metricsEnabled = this.prefs.getBoolean("app_metrics_enabled", true);
    this.audioEnabled = this.prefs.getBoolean("app_audio_enabled", true);
    this.teamProfileBio = this.prefs.getString("app_team_bio", "");
    this.wallpaper = this.prefs.getString("app_wallpaper", "");
    this.locale = this.prefs.getString("app_locale", "");
    this.receivedFromServer = this.prefs.getBoolean("app_received_from_server", false);
    this.backgroundRequestsEnabled = this.prefs.getBoolean("app_background_requests_enabled", true);
    this.helpCenterUrl = this.prefs.getString("help_center_url", "");
    this.helpCenterBaseColor = this.prefs.getInt("app_help_center_primary_color", this.defaultColor);
    this.features = this.prefs.getStringSet("features", new HashSet());
  }
  
  private int getConfigColor(String paramString)
  {
    if (paramString == null) {
      return this.defaultColor;
    }
    return Color.parseColor(paramString);
  }
  
  private boolean isNewConfig(Config paramConfig)
  {
    return (!paramConfig.getWelcomeMessage().equals(this.teamProfileBio)) || (!paramConfig.getMessengerBackground().equals(this.wallpaper)) || (!paramConfig.getName().equals(this.name)) || (!paramConfig.getLocale().equals(this.locale)) || (getConfigColor(paramConfig.getBaseColor()) != this.baseColor) || (paramConfig.getUserUpdateCacheMaxAge() != this.userUpdateCacheMaxAgeMs) || (paramConfig.isMetricsEnabled() != this.metricsEnabled) || (paramConfig.isAudioEnabled() != this.audioEnabled) || (paramConfig.isShowPoweredBy() != this.showIntercomLink) || (paramConfig.isInboundMessages() != this.inboundMessages) || (paramConfig.getRateLimitCount() != this.rateLimitCount) || (paramConfig.getRateLimitPeriod() != this.rateLimitPeriodMs) || (paramConfig.getNewSessionThreshold() != this.newSessionThresholdMs) || (paramConfig.getSoftResetTimeout() != this.softResetTimeoutMs) || (paramConfig.getBatchUserUpdatePeriod() != this.batchUserUpdatePeriodMs) || (paramConfig.getPingDelayMs() != this.pingDelayMs) || (paramConfig.isBackgroundRequestsEnabled() != this.backgroundRequestsEnabled) || (!paramConfig.getHelpCenterUrl().equals(this.helpCenterUrl)) || (getConfigColor(paramConfig.getHelpCenterBaseColor()) != this.helpCenterBaseColor) || (!paramConfig.getFeatures().equals(this.features));
  }
  
  public boolean backgroundRequestsDisabled()
  {
    return !this.backgroundRequestsEnabled;
  }
  
  public int getBaseColor()
  {
    return this.baseColor;
  }
  
  public int getBaseColorDark()
  {
    return this.baseColorDark;
  }
  
  public long getBatchUserUpdatePeriodMs()
  {
    return this.batchUserUpdatePeriodMs;
  }
  
  public int getHelpCenterBaseColor()
  {
    return this.helpCenterBaseColor;
  }
  
  public String getHelpCenterUrl()
  {
    return this.helpCenterUrl;
  }
  
  public String getLocale()
  {
    return this.locale;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public long getNewSessionThresholdMs()
  {
    return this.newSessionThresholdMs;
  }
  
  public long getPingDelayMs()
  {
    return this.pingDelayMs;
  }
  
  public int getRateLimitCount()
  {
    return this.rateLimitCount;
  }
  
  public long getRateLimitPeriodMs()
  {
    return this.rateLimitPeriodMs;
  }
  
  public NexusConfig getRealTimeConfig()
  {
    return this.realTimeConfig;
  }
  
  public long getSoftResetTimeoutMs()
  {
    return this.softResetTimeoutMs;
  }
  
  public String getTeamProfileBio()
  {
    return this.teamProfileBio;
  }
  
  public long getUserUpdateCacheMaxAgeMs()
  {
    return this.userUpdateCacheMaxAgeMs;
  }
  
  public String getWallpaper()
  {
    return this.wallpaper;
  }
  
  public boolean hasFeature(String paramString)
  {
    return this.features.contains(paramString);
  }
  
  public boolean isAudioEnabled()
  {
    return this.audioEnabled;
  }
  
  public boolean isInboundMessages()
  {
    return this.inboundMessages;
  }
  
  public boolean isMetricsEnabled()
  {
    return this.metricsEnabled;
  }
  
  public boolean isReceivedFromServer()
  {
    return this.receivedFromServer;
  }
  
  public void resetRealTimeConfig()
  {
    this.realTimeConfig = new NexusConfig();
  }
  
  public boolean shouldShowIntercomLink()
  {
    return this.showIntercomLink;
  }
  
  public void update(Config paramConfig, b paramb)
  {
    if (paramConfig == Config.NULL) {}
    do
    {
      return;
      this.realTimeConfig = paramConfig.getRealTimeConfig();
      this.receivedFromServer = true;
    } while (!isNewConfig(paramConfig));
    this.name = paramConfig.getName();
    this.teamProfileBio = paramConfig.getWelcomeMessage();
    this.wallpaper = paramConfig.getMessengerBackground();
    this.baseColor = getConfigColor(paramConfig.getBaseColor());
    this.baseColorDark = ColorUtils.darkenColor(this.baseColor);
    this.inboundMessages = paramConfig.isInboundMessages();
    this.showIntercomLink = paramConfig.isShowPoweredBy();
    this.audioEnabled = paramConfig.isAudioEnabled();
    this.metricsEnabled = paramConfig.isMetricsEnabled();
    this.userUpdateCacheMaxAgeMs = paramConfig.getUserUpdateCacheMaxAge();
    this.rateLimitPeriodMs = paramConfig.getRateLimitPeriod();
    this.rateLimitCount = paramConfig.getRateLimitCount();
    this.newSessionThresholdMs = paramConfig.getNewSessionThreshold();
    this.softResetTimeoutMs = paramConfig.getSoftResetTimeout();
    this.batchUserUpdatePeriodMs = paramConfig.getBatchUserUpdatePeriod();
    this.pingDelayMs = paramConfig.getPingDelayMs();
    this.backgroundRequestsEnabled = paramConfig.isBackgroundRequestsEnabled();
    this.locale = paramConfig.getLocale();
    this.helpCenterUrl = paramConfig.getHelpCenterUrl();
    this.helpCenterBaseColor = getConfigColor(paramConfig.getHelpCenterBaseColor());
    this.features = paramConfig.getFeatures();
    this.prefs.edit().putString("app_name", this.name).putString("app_team_bio", this.teamProfileBio).putString("app_wallpaper", this.wallpaper).putString("app_locale", this.locale).putInt("app_primary_color", this.baseColor).putInt("app_help_center_primary_color", this.helpCenterBaseColor).putInt("app_rate_limit_count", this.rateLimitCount).putLong("app_user_update_cache_max_age_ms", this.userUpdateCacheMaxAgeMs).putLong("app_rate_limit_period_ms", this.rateLimitPeriodMs).putLong("new_session_threshold_ms", this.newSessionThresholdMs).putLong("batch_user_update_period_ms", this.batchUserUpdatePeriodMs).putLong("ping_delay_ms", this.pingDelayMs).putLong("app_soft_reset_timeout_ms", this.softResetTimeoutMs).putBoolean("app_intercom_link", this.showIntercomLink).putBoolean("app_inbound_messages", this.inboundMessages).putBoolean("app_audio_enabled", this.audioEnabled).putBoolean("app_metrics_enabled", this.metricsEnabled).putBoolean("app_received_from_server", true).putBoolean("app_background_requests_enabled", this.backgroundRequestsEnabled).putString("help_center_url", this.helpCenterUrl).putStringSet("features", this.features).apply();
    paramb.post(new ConfigUpdateEvent());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/identity/AppConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */