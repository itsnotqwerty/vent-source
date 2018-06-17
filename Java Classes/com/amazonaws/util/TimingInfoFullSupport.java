package com.amazonaws.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

class TimingInfoFullSupport
  extends TimingInfo
{
  private final Map<String, List<TimingInfo>> avh = new HashMap();
  private final Map<String, Number> avi = new HashMap();
  
  TimingInfoFullSupport(Long paramLong, long paramLong1)
  {
    super(paramLong, paramLong1, null);
  }
  
  public final void a(String paramString, TimingInfo paramTimingInfo)
  {
    List localList = (List)this.avh.get(paramString);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      this.avh.put(paramString, localObject);
    }
    if (paramTimingInfo.ki())
    {
      ((List)localObject).add(paramTimingInfo);
      return;
    }
    LogFactory.getLog(getClass()).debug("Skip submeasurement timing info with no end time for " + paramString);
  }
  
  public final void aE(String paramString)
  {
    Number localNumber = (Number)this.avi.get(paramString);
    if (localNumber != null) {}
    for (int i = localNumber.intValue();; i = 0)
    {
      b(paramString, i + 1);
      return;
    }
  }
  
  public final void b(String paramString, long paramLong)
  {
    this.avi.put(paramString, Long.valueOf(paramLong));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/TimingInfoFullSupport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */