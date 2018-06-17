package com.google.android.gms.internal;

import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Map;

public final class am
  extends l<am>
{
  public String aLA;
  public int aLB;
  public int aLC;
  public int aLD;
  public int aLE;
  public int aLF;
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("language", this.aLA);
    localHashMap.put("screenColors", Integer.valueOf(this.aLB));
    localHashMap.put("screenWidth", Integer.valueOf(this.aLC));
    localHashMap.put("screenHeight", Integer.valueOf(this.aLD));
    localHashMap.put("viewportWidth", Integer.valueOf(this.aLE));
    localHashMap.put("viewportHeight", Integer.valueOf(this.aLF));
    return L(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */