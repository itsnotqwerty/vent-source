package io.intercom.android.sdk.nexus;

import java.util.HashMap;

public class EventData
  extends HashMap<String, Object>
{
  public EventData() {}
  
  public EventData(int paramInt)
  {
    super(paramInt);
  }
  
  public long optLong(String paramString)
  {
    return optLong(paramString, -1L);
  }
  
  public long optLong(String paramString, long paramLong)
  {
    paramString = get(paramString);
    if ((paramString instanceof Long)) {
      paramLong = ((Long)paramString).longValue();
    }
    return paramLong;
  }
  
  public String optString(String paramString)
  {
    return optString(paramString, "");
  }
  
  public String optString(String paramString1, String paramString2)
  {
    paramString1 = get(paramString1);
    if ((paramString1 instanceof String)) {
      return (String)paramString1;
    }
    return paramString2;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/nexus/EventData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */