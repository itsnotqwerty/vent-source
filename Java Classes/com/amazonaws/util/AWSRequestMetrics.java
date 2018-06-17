package com.amazonaws.util;

import com.amazonaws.metrics.MetricType;
import com.amazonaws.metrics.RequestMetricType;

@Deprecated
public class AWSRequestMetrics
{
  protected final TimingInfo aub;
  
  public AWSRequestMetrics()
  {
    this.aub = TimingInfo.kg();
  }
  
  protected AWSRequestMetrics(TimingInfo paramTimingInfo)
  {
    this.aub = paramTimingInfo;
  }
  
  public void a(MetricType paramMetricType) {}
  
  public void a(MetricType paramMetricType, long paramLong) {}
  
  public void a(MetricType paramMetricType, Object paramObject) {}
  
  public void b(MetricType paramMetricType) {}
  
  public void c(MetricType paramMetricType) {}
  
  public final TimingInfo kd()
  {
    return this.aub;
  }
  
  public static enum Field
    implements RequestMetricType
  {
    private Field() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/AWSRequestMetrics.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */