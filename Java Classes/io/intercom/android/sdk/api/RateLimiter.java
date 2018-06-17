package io.intercom.android.sdk.api;

import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

class RateLimiter
{
  private final AppConfig appConfig;
  private int limitedRequestCount;
  private long periodStartTimestamp;
  private final TimeProvider timeProvider;
  private final Twig twig = LumberMill.getLogger();
  
  RateLimiter(AppConfig paramAppConfig)
  {
    this(paramAppConfig, TimeProvider.SYSTEM);
  }
  
  RateLimiter(AppConfig paramAppConfig, TimeProvider paramTimeProvider)
  {
    this.appConfig = paramAppConfig;
    this.timeProvider = paramTimeProvider;
  }
  
  private boolean hasReachedMaxCount()
  {
    return this.limitedRequestCount >= this.appConfig.getRateLimitCount();
  }
  
  private boolean isInsideCurrentTimePeriod()
  {
    return this.timeProvider.currentTimeMillis() - this.periodStartTimestamp < this.appConfig.getRateLimitPeriodMs();
  }
  
  boolean isLimited()
  {
    return (isInsideCurrentTimePeriod()) && (hasReachedMaxCount());
  }
  
  void logError()
  {
    this.twig.e("Your app is being rate limited because you're performing too many requests per minute", new Object[0]);
  }
  
  void recordRequest()
  {
    if (!isInsideCurrentTimePeriod())
    {
      this.periodStartTimestamp = this.timeProvider.currentTimeMillis();
      this.limitedRequestCount = 0;
    }
    this.limitedRequestCount += 1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/RateLimiter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */