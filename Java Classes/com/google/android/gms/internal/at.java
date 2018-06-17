package com.google.android.gms.internal;

import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Map;

public final class at
  extends l<at>
{
  public String aLG;
  public String aMb;
  public long aMc;
  public String zS;
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("variableName", this.aMb);
    localHashMap.put("timeInMillis", Long.valueOf(this.aMc));
    localHashMap.put("category", this.zS);
    localHashMap.put("label", this.aLG);
    return L(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */