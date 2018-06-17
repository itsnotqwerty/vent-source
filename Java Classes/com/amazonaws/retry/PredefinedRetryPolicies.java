package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Random;

public class PredefinedRetryPolicies
{
  public static final RetryPolicy app = new RetryPolicy(RetryPolicy.RetryCondition.apA, RetryPolicy.BackoffStrategy.apz, 0, false);
  public static final RetryPolicy apq = new RetryPolicy(aps, apt, 3, true);
  public static final RetryPolicy apr = new RetryPolicy(aps, apt, 10, true);
  public static final RetryPolicy.RetryCondition aps = new SDKDefaultRetryCondition();
  public static final RetryPolicy.BackoffStrategy apt = new SDKDefaultBackoffStrategy((byte)0);
  
  private static class SDKDefaultBackoffStrategy
    implements RetryPolicy.BackoffStrategy
  {
    private final int apu = 100;
    private final int apv = 20000;
    private final Random random = new Random();
    
    public final long cq(int paramInt)
    {
      if (paramInt <= 0) {
        return 0L;
      }
      return this.random.nextInt(Math.min(this.apv, (1 << paramInt) * this.apu));
    }
  }
  
  public static class SDKDefaultRetryCondition
    implements RetryPolicy.RetryCondition
  {
    public final boolean a(AmazonClientException paramAmazonClientException)
    {
      if (((paramAmazonClientException.getCause() instanceof IOException)) && (!(paramAmazonClientException.getCause() instanceof InterruptedIOException))) {}
      int i;
      do
      {
        return true;
        if (!(paramAmazonClientException instanceof AmazonServiceException)) {
          break;
        }
        paramAmazonClientException = (AmazonServiceException)paramAmazonClientException;
        i = paramAmazonClientException.statusCode;
      } while ((i == 500) || (i == 503) || (i == 502) || (i == 504) || (RetryUtils.a(paramAmazonClientException)) || (RetryUtils.b(paramAmazonClientException)));
      return false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/retry/PredefinedRetryPolicies.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */