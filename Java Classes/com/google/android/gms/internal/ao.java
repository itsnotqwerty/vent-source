package com.google.android.gms.internal;

import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Map;

public final class ao
  extends l<ao>
{
  public String aHq;
  public String aLG;
  public long aLH;
  public String zS;
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("category", this.zS);
    localHashMap.put("action", this.aHq);
    localHashMap.put("label", this.aLG);
    localHashMap.put("value", Long.valueOf(this.aLH));
    return L(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */