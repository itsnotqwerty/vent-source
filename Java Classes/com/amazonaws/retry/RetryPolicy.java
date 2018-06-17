package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;

public final class RetryPolicy
{
  public final int ami;
  public final RetryCondition apw;
  public final BackoffStrategy apx;
  public final boolean apy;
  
  public RetryPolicy(RetryCondition paramRetryCondition, BackoffStrategy paramBackoffStrategy, int paramInt, boolean paramBoolean)
  {
    RetryCondition localRetryCondition = paramRetryCondition;
    if (paramRetryCondition == null) {
      localRetryCondition = PredefinedRetryPolicies.aps;
    }
    paramRetryCondition = paramBackoffStrategy;
    if (paramBackoffStrategy == null) {
      paramRetryCondition = PredefinedRetryPolicies.apt;
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("Please provide a non-negative value for maxErrorRetry.");
    }
    this.apw = localRetryCondition;
    this.apx = paramRetryCondition;
    this.ami = paramInt;
    this.apy = paramBoolean;
  }
  
  public static abstract interface BackoffStrategy
  {
    public static final BackoffStrategy apz = new BackoffStrategy()
    {
      public final long cq(int paramAnonymousInt)
      {
        return 0L;
      }
    };
    
    public abstract long cq(int paramInt);
  }
  
  public static abstract interface RetryCondition
  {
    public static final RetryCondition apA = new RetryCondition()
    {
      public final boolean a(AmazonClientException paramAnonymousAmazonClientException)
      {
        return false;
      }
    };
    
    public abstract boolean a(AmazonClientException paramAmazonClientException);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/retry/RetryPolicy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */