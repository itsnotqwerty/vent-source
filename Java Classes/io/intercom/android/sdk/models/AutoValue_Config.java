package io.intercom.android.sdk.models;

import io.intercom.android.sdk.nexus.NexusConfig;
import java.util.Set;

final class AutoValue_Config
  extends Config
{
  private final boolean audioEnabled;
  private final boolean backgroundRequestsEnabled;
  private final String baseColor;
  private final long batchUserUpdatePeriod;
  private final Set<String> features;
  private final boolean firstRequest;
  private final String helpCenterBaseColor;
  private final String helpCenterUrl;
  private final boolean inboundMessages;
  private final String locale;
  private final String messengerBackground;
  private final boolean metricsEnabled;
  private final String name;
  private final long newSessionThreshold;
  private final long pingDelayMs;
  private final int rateLimitCount;
  private final long rateLimitPeriod;
  private final NexusConfig realTimeConfig;
  private final boolean showPoweredBy;
  private final long softResetTimeout;
  private final long userUpdateCacheMaxAge;
  private final String welcomeMessage;
  
  AutoValue_Config(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, long paramLong1, int paramInt, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6, NexusConfig paramNexusConfig, String paramString6, String paramString7, Set<String> paramSet)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null name");
    }
    this.name = paramString1;
    this.baseColor = paramString2;
    if (paramString3 == null) {
      throw new NullPointerException("Null welcomeMessage");
    }
    this.welcomeMessage = paramString3;
    if (paramString4 == null) {
      throw new NullPointerException("Null messengerBackground");
    }
    this.messengerBackground = paramString4;
    if (paramString5 == null) {
      throw new NullPointerException("Null locale");
    }
    this.locale = paramString5;
    this.firstRequest = paramBoolean1;
    this.inboundMessages = paramBoolean2;
    this.showPoweredBy = paramBoolean3;
    this.metricsEnabled = paramBoolean4;
    this.backgroundRequestsEnabled = paramBoolean5;
    this.audioEnabled = paramBoolean6;
    this.rateLimitPeriod = paramLong1;
    this.rateLimitCount = paramInt;
    this.batchUserUpdatePeriod = paramLong2;
    this.userUpdateCacheMaxAge = paramLong3;
    this.softResetTimeout = paramLong4;
    this.newSessionThreshold = paramLong5;
    this.pingDelayMs = paramLong6;
    if (paramNexusConfig == null) {
      throw new NullPointerException("Null realTimeConfig");
    }
    this.realTimeConfig = paramNexusConfig;
    if (paramString6 == null) {
      throw new NullPointerException("Null helpCenterUrl");
    }
    this.helpCenterUrl = paramString6;
    this.helpCenterBaseColor = paramString7;
    if (paramSet == null) {
      throw new NullPointerException("Null features");
    }
    this.features = paramSet;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label298:
    label315:
    label330:
    for (;;)
    {
      return true;
      if (!(paramObject instanceof Config)) {
        break;
      }
      paramObject = (Config)paramObject;
      if (this.name.equals(((Config)paramObject).getName()))
      {
        if (this.baseColor != null) {
          break label298;
        }
        if (((Config)paramObject).getBaseColor() == null) {
          if ((this.welcomeMessage.equals(((Config)paramObject).getWelcomeMessage())) && (this.messengerBackground.equals(((Config)paramObject).getMessengerBackground())) && (this.locale.equals(((Config)paramObject).getLocale())) && (this.firstRequest == ((Config)paramObject).isFirstRequest()) && (this.inboundMessages == ((Config)paramObject).isInboundMessages()) && (this.showPoweredBy == ((Config)paramObject).isShowPoweredBy()) && (this.metricsEnabled == ((Config)paramObject).isMetricsEnabled()) && (this.backgroundRequestsEnabled == ((Config)paramObject).isBackgroundRequestsEnabled()) && (this.audioEnabled == ((Config)paramObject).isAudioEnabled()) && (this.rateLimitPeriod == ((Config)paramObject).getRateLimitPeriod()) && (this.rateLimitCount == ((Config)paramObject).getRateLimitCount()) && (this.batchUserUpdatePeriod == ((Config)paramObject).getBatchUserUpdatePeriod()) && (this.userUpdateCacheMaxAge == ((Config)paramObject).getUserUpdateCacheMaxAge()) && (this.softResetTimeout == ((Config)paramObject).getSoftResetTimeout()) && (this.newSessionThreshold == ((Config)paramObject).getNewSessionThreshold()) && (this.pingDelayMs == ((Config)paramObject).getPingDelayMs()) && (this.realTimeConfig.equals(((Config)paramObject).getRealTimeConfig())) && (this.helpCenterUrl.equals(((Config)paramObject).getHelpCenterUrl())))
          {
            if (this.helpCenterBaseColor != null) {
              break label315;
            }
            if (((Config)paramObject).getHelpCenterBaseColor() != null) {}
          }
        }
      }
      for (;;)
      {
        if (this.features.equals(((Config)paramObject).getFeatures())) {
          break label330;
        }
        do
        {
          do
          {
            return false;
          } while (!this.baseColor.equals(((Config)paramObject).getBaseColor()));
          break;
        } while (!this.helpCenterBaseColor.equals(((Config)paramObject).getHelpCenterBaseColor()));
      }
    }
    return false;
  }
  
  public final String getBaseColor()
  {
    return this.baseColor;
  }
  
  public final long getBatchUserUpdatePeriod()
  {
    return this.batchUserUpdatePeriod;
  }
  
  public final Set<String> getFeatures()
  {
    return this.features;
  }
  
  public final String getHelpCenterBaseColor()
  {
    return this.helpCenterBaseColor;
  }
  
  public final String getHelpCenterUrl()
  {
    return this.helpCenterUrl;
  }
  
  public final String getLocale()
  {
    return this.locale;
  }
  
  public final String getMessengerBackground()
  {
    return this.messengerBackground;
  }
  
  public final String getName()
  {
    return this.name;
  }
  
  public final long getNewSessionThreshold()
  {
    return this.newSessionThreshold;
  }
  
  public final long getPingDelayMs()
  {
    return this.pingDelayMs;
  }
  
  public final int getRateLimitCount()
  {
    return this.rateLimitCount;
  }
  
  public final long getRateLimitPeriod()
  {
    return this.rateLimitPeriod;
  }
  
  public final NexusConfig getRealTimeConfig()
  {
    return this.realTimeConfig;
  }
  
  public final long getSoftResetTimeout()
  {
    return this.softResetTimeout;
  }
  
  public final long getUserUpdateCacheMaxAge()
  {
    return this.userUpdateCacheMaxAge;
  }
  
  public final String getWelcomeMessage()
  {
    return this.welcomeMessage;
  }
  
  public final int hashCode()
  {
    int i3 = 0;
    int i2 = 1231;
    int i4 = this.name.hashCode();
    int i;
    int i5;
    int i6;
    int i7;
    int j;
    label64:
    int k;
    label75:
    int m;
    label87:
    int n;
    label99:
    int i1;
    label111:
    label118:
    int i8;
    int i9;
    int i10;
    int i11;
    int i12;
    int i13;
    int i14;
    int i15;
    int i16;
    if (this.baseColor == null)
    {
      i = 0;
      i5 = this.welcomeMessage.hashCode();
      i6 = this.messengerBackground.hashCode();
      i7 = this.locale.hashCode();
      if (!this.firstRequest) {
        break label386;
      }
      j = 1231;
      if (!this.inboundMessages) {
        break label393;
      }
      k = 1231;
      if (!this.showPoweredBy) {
        break label400;
      }
      m = 1231;
      if (!this.metricsEnabled) {
        break label408;
      }
      n = 1231;
      if (!this.backgroundRequestsEnabled) {
        break label416;
      }
      i1 = 1231;
      if (!this.audioEnabled) {
        break label424;
      }
      i8 = (int)(this.rateLimitPeriod >>> 32 ^ this.rateLimitPeriod);
      i9 = this.rateLimitCount;
      i10 = (int)(this.batchUserUpdatePeriod >>> 32 ^ this.batchUserUpdatePeriod);
      i11 = (int)(this.userUpdateCacheMaxAge >>> 32 ^ this.userUpdateCacheMaxAge);
      i12 = (int)(this.softResetTimeout >>> 32 ^ this.softResetTimeout);
      i13 = (int)(this.newSessionThreshold >>> 32 ^ this.newSessionThreshold);
      i14 = (int)(this.pingDelayMs >>> 32 ^ this.pingDelayMs);
      i15 = this.realTimeConfig.hashCode();
      i16 = this.helpCenterUrl.hashCode();
      if (this.helpCenterBaseColor != null) {
        break label432;
      }
    }
    for (;;)
    {
      return ((((((((((((i1 ^ (n ^ (m ^ (k ^ (j ^ ((((i ^ (i4 ^ 0xF4243) * 1000003) * 1000003 ^ i5) * 1000003 ^ i6) * 1000003 ^ i7) * 1000003) * 1000003) * 1000003) * 1000003) * 1000003) * 1000003 ^ i2) * 1000003 ^ i8) * 1000003 ^ i9) * 1000003 ^ i10) * 1000003 ^ i11) * 1000003 ^ i12) * 1000003 ^ i13) * 1000003 ^ i14) * 1000003 ^ i15) * 1000003 ^ i16) * 1000003 ^ i3) * 1000003 ^ this.features.hashCode();
      i = this.baseColor.hashCode();
      break;
      label386:
      j = 1237;
      break label64;
      label393:
      k = 1237;
      break label75;
      label400:
      m = 1237;
      break label87;
      label408:
      n = 1237;
      break label99;
      label416:
      i1 = 1237;
      break label111;
      label424:
      i2 = 1237;
      break label118;
      label432:
      i3 = this.helpCenterBaseColor.hashCode();
    }
  }
  
  public final boolean isAudioEnabled()
  {
    return this.audioEnabled;
  }
  
  public final boolean isBackgroundRequestsEnabled()
  {
    return this.backgroundRequestsEnabled;
  }
  
  public final boolean isFirstRequest()
  {
    return this.firstRequest;
  }
  
  public final boolean isInboundMessages()
  {
    return this.inboundMessages;
  }
  
  public final boolean isMetricsEnabled()
  {
    return this.metricsEnabled;
  }
  
  public final boolean isShowPoweredBy()
  {
    return this.showPoweredBy;
  }
  
  public final String toString()
  {
    return "Config{name=" + this.name + ", baseColor=" + this.baseColor + ", welcomeMessage=" + this.welcomeMessage + ", messengerBackground=" + this.messengerBackground + ", locale=" + this.locale + ", firstRequest=" + this.firstRequest + ", inboundMessages=" + this.inboundMessages + ", showPoweredBy=" + this.showPoweredBy + ", metricsEnabled=" + this.metricsEnabled + ", backgroundRequestsEnabled=" + this.backgroundRequestsEnabled + ", audioEnabled=" + this.audioEnabled + ", rateLimitPeriod=" + this.rateLimitPeriod + ", rateLimitCount=" + this.rateLimitCount + ", batchUserUpdatePeriod=" + this.batchUserUpdatePeriod + ", userUpdateCacheMaxAge=" + this.userUpdateCacheMaxAge + ", softResetTimeout=" + this.softResetTimeout + ", newSessionThreshold=" + this.newSessionThreshold + ", pingDelayMs=" + this.pingDelayMs + ", realTimeConfig=" + this.realTimeConfig + ", helpCenterUrl=" + this.helpCenterUrl + ", helpCenterBaseColor=" + this.helpCenterBaseColor + ", features=" + this.features + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_Config.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */