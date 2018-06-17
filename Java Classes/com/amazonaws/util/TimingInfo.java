package com.amazonaws.util;

import java.util.concurrent.TimeUnit;

public class TimingInfo
{
  private final Long ave;
  final long avf;
  Long avg;
  
  protected TimingInfo(Long paramLong1, long paramLong, Long paramLong2)
  {
    this.ave = paramLong1;
    this.avf = paramLong;
    this.avg = paramLong2;
  }
  
  public static TimingInfo a(long paramLong, Long paramLong1)
  {
    return new TimingInfoUnmodifiable(paramLong, paramLong1);
  }
  
  public static TimingInfo j(long paramLong)
  {
    return new TimingInfoFullSupport(null, paramLong);
  }
  
  public static TimingInfo kg()
  {
    return new TimingInfo(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
  }
  
  public static TimingInfo kh()
  {
    return new TimingInfoFullSupport(Long.valueOf(System.currentTimeMillis()), System.nanoTime());
  }
  
  public void a(String paramString, TimingInfo paramTimingInfo) {}
  
  public void aE(String paramString) {}
  
  public void b(String paramString, long paramLong) {}
  
  public final boolean ki()
  {
    return this.avg != null;
  }
  
  public TimingInfo kj()
  {
    this.avg = Long.valueOf(System.nanoTime());
    return this;
  }
  
  public final String toString()
  {
    Double localDouble;
    if (ki())
    {
      long l1 = this.avf;
      long l2 = this.avg.longValue();
      localDouble = Double.valueOf(TimeUnit.NANOSECONDS.toMicros(l2 - l1) / 1000.0D);
      if (localDouble != null) {
        break label61;
      }
    }
    label61:
    for (double d = -1.0D;; d = localDouble.doubleValue())
    {
      return String.valueOf(d);
      localDouble = null;
      break;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/TimingInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */