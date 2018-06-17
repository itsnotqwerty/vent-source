package com.google.android.gms.internal;

import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Map;

public final class ap
  extends l<ap>
{
  public String aLI;
  public boolean aLJ;
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("description", this.aLI);
    localHashMap.put("fatal", Boolean.valueOf(this.aLJ));
    return L(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */