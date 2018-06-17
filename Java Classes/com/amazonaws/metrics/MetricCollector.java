package com.amazonaws.metrics;

public abstract class MetricCollector
{
  public static final MetricCollector aoQ = new MetricCollector()
  {
    public final boolean isEnabled()
    {
      return false;
    }
    
    public final RequestMetricCollector jJ()
    {
      return RequestMetricCollector.aoR;
    }
    
    public final boolean jM()
    {
      return true;
    }
  };
  
  public abstract boolean isEnabled();
  
  public abstract RequestMetricCollector jJ();
  
  public abstract boolean jM();
  
  public static abstract interface Factory
  {
    public abstract MetricCollector jN();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/metrics/MetricCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */