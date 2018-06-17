package io.intercom.a.a.a.i;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.os.SystemClock;

public final class d
{
  private static final double cQU;
  
  static
  {
    double d = 1.0D;
    if (17 <= Build.VERSION.SDK_INT) {
      d = 1.0D / Math.pow(10.0D, 6.0D);
    }
    cQU = d;
  }
  
  @TargetApi(17)
  public static long JQ()
  {
    if (17 <= Build.VERSION.SDK_INT) {
      return SystemClock.elapsedRealtimeNanos();
    }
    return SystemClock.uptimeMillis();
  }
  
  public static double V(long paramLong)
  {
    return (JQ() - paramLong) * cQU;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */