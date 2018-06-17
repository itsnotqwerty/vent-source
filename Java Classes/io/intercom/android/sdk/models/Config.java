package io.intercom.android.sdk.models;

import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.nexus.NexusConfig;
import io.intercom.android.sdk.nexus.NexusConfig.Builder;
import io.intercom.android.sdk.utilities.NullSafety;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.TimeUnit;

@AutoValue
public abstract class Config
{
  public static final long DEFAULT_BATCH_USER_UPDATE_PERIOD_MS = TimeUnit.SECONDS.toMillis(1L);
  public static final long DEFAULT_CACHE_MAX_AGE_MS;
  public static final long DEFAULT_PING_DELAY_MS = TimeUnit.SECONDS.toMillis(1L);
  public static final int DEFAULT_RATE_LIMIT_COUNT = 100;
  public static final long DEFAULT_RATE_LIMIT_PERIOD_MS = TimeUnit.MINUTES.toMillis(1L);
  public static final long DEFAULT_SESSION_TIMEOUT_MS;
  public static final long DEFAULT_SOFT_RESET_TIMEOUT_MS;
  public static final Config NULL = new Builder().build();
  
  static
  {
    DEFAULT_CACHE_MAX_AGE_MS = TimeUnit.MINUTES.toMillis(5L);
    DEFAULT_SESSION_TIMEOUT_MS = TimeUnit.SECONDS.toMillis(20L);
    DEFAULT_SOFT_RESET_TIMEOUT_MS = TimeUnit.SECONDS.toMillis(1L);
  }
  
  public abstract String getBaseColor();
  
  public abstract long getBatchUserUpdatePeriod();
  
  public abstract Set<String> getFeatures();
  
  public abstract String getHelpCenterBaseColor();
  
  public abstract String getHelpCenterUrl();
  
  public abstract String getLocale();
  
  public abstract String getMessengerBackground();
  
  public abstract String getName();
  
  public abstract long getNewSessionThreshold();
  
  public abstract long getPingDelayMs();
  
  public abstract int getRateLimitCount();
  
  public abstract long getRateLimitPeriod();
  
  public abstract NexusConfig getRealTimeConfig();
  
  public abstract long getSoftResetTimeout();
  
  public abstract long getUserUpdateCacheMaxAge();
  
  public abstract String getWelcomeMessage();
  
  public abstract boolean isAudioEnabled();
  
  public abstract boolean isBackgroundRequestsEnabled();
  
  public abstract boolean isFirstRequest();
  
  public abstract boolean isInboundMessages();
  
  public abstract boolean isMetricsEnabled();
  
  public abstract boolean isShowPoweredBy();
  
  public static final class Builder
  {
    Boolean audio_enabled;
    Boolean background_requests_enabled;
    String base_color;
    Float batch_user_update_period;
    Set<String> features;
    String help_center_base_color;
    String help_center_url;
    Boolean inbound_messages;
    Boolean is_first_request;
    Integer local_rate_limit;
    Long local_rate_limit_period;
    String locale;
    String messenger_background;
    Boolean metrics_enabled;
    String name;
    Long new_session_threshold;
    Float ping_delay;
    NexusConfig.Builder real_time_config;
    Boolean show_powered_by;
    Long soft_reset_timeout;
    Long user_update_dup_cache_max_age;
    String welcome_message_plain_text;
    
    public final Config build()
    {
      long l1;
      int i;
      label21:
      long l2;
      label33:
      long l3;
      label45:
      long l4;
      label57:
      long l5;
      label69:
      long l6;
      label81:
      NexusConfig localNexusConfig;
      if (this.local_rate_limit_period == null)
      {
        l1 = Config.DEFAULT_RATE_LIMIT_PERIOD_MS;
        if (this.local_rate_limit != null) {
          break label241;
        }
        i = 100;
        if (this.batch_user_update_period != null) {
          break label252;
        }
        l2 = Config.DEFAULT_BATCH_USER_UPDATE_PERIOD_MS;
        if (this.user_update_dup_cache_max_age != null) {
          break label268;
        }
        l3 = Config.DEFAULT_CACHE_MAX_AGE_MS;
        if (this.soft_reset_timeout != null) {
          break label286;
        }
        l4 = Config.DEFAULT_SOFT_RESET_TIMEOUT_MS;
        if (this.new_session_threshold != null) {
          break label304;
        }
        l5 = Config.DEFAULT_SESSION_TIMEOUT_MS;
        if (this.ping_delay != null) {
          break label322;
        }
        l6 = Config.DEFAULT_PING_DELAY_MS;
        if (this.real_time_config != null) {
          break label338;
        }
        localNexusConfig = new NexusConfig();
        label97:
        if (this.features != null) {
          break label350;
        }
      }
      label241:
      label252:
      label268:
      label286:
      label304:
      label322:
      label338:
      label350:
      for (Set localSet = Collections.emptySet();; localSet = this.features)
      {
        return new AutoValue_Config(NullSafety.valueOrEmpty(this.name), this.base_color, NullSafety.valueOrEmpty(this.welcome_message_plain_text), NullSafety.valueOrEmpty(this.messenger_background), NullSafety.valueOrEmpty(this.locale), NullSafety.valueOrDefault(this.is_first_request, false), NullSafety.valueOrDefault(this.inbound_messages, false), NullSafety.valueOrDefault(this.show_powered_by, true), NullSafety.valueOrDefault(this.audio_enabled, true), NullSafety.valueOrDefault(this.metrics_enabled, true), NullSafety.valueOrDefault(this.background_requests_enabled, true), l1, i, l2, l3, l4, l5, l6, localNexusConfig, NullSafety.valueOrEmpty(this.help_center_url), this.help_center_base_color, localSet);
        l1 = TimeUnit.SECONDS.toMillis(this.local_rate_limit_period.longValue());
        break;
        i = this.local_rate_limit.intValue();
        break label21;
        l2 = (this.batch_user_update_period.floatValue() * 1000.0F);
        break label33;
        l3 = TimeUnit.SECONDS.toMillis(this.user_update_dup_cache_max_age.longValue());
        break label45;
        l4 = TimeUnit.SECONDS.toMillis(this.soft_reset_timeout.longValue());
        break label57;
        l5 = TimeUnit.SECONDS.toMillis(this.new_session_threshold.longValue());
        break label69;
        l6 = (this.ping_delay.floatValue() * 1000.0F);
        break label81;
        localNexusConfig = this.real_time_config.build();
        break label97;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/Config.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */