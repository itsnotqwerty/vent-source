package com.amazonaws.metrics;

public abstract class RequestMetricCollector
{
  public static final RequestMetricCollector aoR = new RequestMetricCollector()
  {
    public final boolean isEnabled()
    {
      return false;
    }
    
    public final void jO() {}
  };
  
  public boolean isEnabled()
  {
    return true;
  }
  
  public abstract void jO();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/metrics/RequestMetricCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */