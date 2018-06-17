package com.amazonaws.util;

import com.amazonaws.metrics.MetricType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

@Deprecated
public class AWSRequestMetricsFullSupport
  extends AWSRequestMetrics
{
  private static final Log auC = LogFactory.getLog("com.amazonaws.latency");
  private static final Object auD = "=";
  private static final Object auE = ", ";
  private final Map<String, List<Object>> auA = new HashMap();
  private final Map<String, TimingInfo> auB = new HashMap();
  
  public AWSRequestMetricsFullSupport()
  {
    super(TimingInfo.kh());
  }
  
  public final void a(MetricType paramMetricType)
  {
    paramMetricType = paramMetricType.name();
    this.auB.put(paramMetricType, TimingInfo.j(System.nanoTime()));
  }
  
  public final void a(MetricType paramMetricType, long paramLong)
  {
    paramMetricType = paramMetricType.name();
    this.aub.b(paramMetricType, paramLong);
  }
  
  public final void a(MetricType paramMetricType, Object paramObject)
  {
    String str = paramMetricType.name();
    List localList = (List)this.auA.get(str);
    paramMetricType = localList;
    if (localList == null)
    {
      paramMetricType = new ArrayList();
      this.auA.put(str, paramMetricType);
    }
    paramMetricType.add(paramObject);
  }
  
  public final void b(MetricType paramMetricType)
  {
    paramMetricType = paramMetricType.name();
    TimingInfo localTimingInfo1 = (TimingInfo)this.auB.get(paramMetricType);
    if (localTimingInfo1 == null)
    {
      LogFactory.getLog(getClass()).warn("Trying to end an event which was never started: " + paramMetricType);
      return;
    }
    localTimingInfo1.kj();
    TimingInfo localTimingInfo2 = this.aub;
    long l2 = localTimingInfo1.avf;
    if (localTimingInfo1.avg == null) {}
    for (long l1 = -1L;; l1 = localTimingInfo1.avg.longValue())
    {
      localTimingInfo2.a(paramMetricType, TimingInfo.a(l2, Long.valueOf(l1)));
      return;
    }
  }
  
  public final void c(MetricType paramMetricType)
  {
    paramMetricType = paramMetricType.name();
    this.aub.aE(paramMetricType);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/AWSRequestMetricsFullSupport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */