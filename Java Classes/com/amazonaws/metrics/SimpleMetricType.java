package com.amazonaws.metrics;

public abstract class SimpleMetricType
  implements MetricType
{
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof MetricType)) {
      return false;
    }
    paramObject = (MetricType)paramObject;
    return name().equals(((MetricType)paramObject).name());
  }
  
  public final int hashCode()
  {
    return name().hashCode();
  }
  
  public abstract String name();
  
  public final String toString()
  {
    return name();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/metrics/SimpleMetricType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */