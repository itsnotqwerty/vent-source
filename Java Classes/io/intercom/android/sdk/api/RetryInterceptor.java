package io.intercom.android.sdk.api;

import io.intercom.okhttp3.Interceptor;
import io.intercom.okhttp3.Interceptor.Chain;
import io.intercom.okhttp3.Response;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

class RetryInterceptor
  implements Interceptor
{
  private static final int MAX_RETRIES = 3;
  private final Sleeper sleeper;
  
  public RetryInterceptor(Sleeper paramSleeper)
  {
    this.sleeper = paramSleeper;
  }
  
  static int getRetryTimer(int paramInt)
  {
    return (int)Math.pow(2.0D, paramInt);
  }
  
  public Response intercept(Interceptor.Chain paramChain)
    throws IOException
  {
    int i = 0;
    while (i <= 3) {
      try
      {
        Response localResponse = paramChain.proceed(paramChain.request());
        return localResponse;
      }
      catch (IOException localIOException)
      {
        if (i == 3) {
          throw localIOException;
        }
        this.sleeper.sleep(getRetryTimer(i + 1));
        i += 1;
      }
    }
    throw new IOException("request failed due to network errors");
  }
  
  public static class Sleeper
  {
    public void sleep(int paramInt)
    {
      try
      {
        TimeUnit.SECONDS.sleep(paramInt);
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/RetryInterceptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */