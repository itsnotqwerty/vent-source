package com.google.android.gms.internal;

import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Map;

public final class as
  extends l<as>
{
  public String aHq;
  public String aLZ;
  public String aMa;
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("network", this.aLZ);
    localHashMap.put("action", this.aHq);
    localHashMap.put("target", this.aMa);
    return L(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */