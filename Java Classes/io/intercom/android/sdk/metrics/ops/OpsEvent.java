package io.intercom.android.sdk.metrics.ops;

public class OpsEvent
{
  private final String eventType;
  private final String name;
  private final long timestamp;
  
  public OpsEvent(String paramString1, String paramString2, long paramLong)
  {
    this.eventType = paramString1;
    this.name = paramString2;
    this.timestamp = paramLong;
  }
  
  public String getEventType()
  {
    return this.eventType;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public long getTimestamp()
  {
    return this.timestamp;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/metrics/ops/OpsEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */