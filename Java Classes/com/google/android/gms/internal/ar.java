package com.google.android.gms.internal;

import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public final class ar
  extends l<ar>
{
  public String aLS;
  public int aLT;
  private int aLU;
  private String aLV;
  public String aLW;
  private boolean aLX;
  private boolean aLY;
  
  public ar()
  {
    this((byte)0);
  }
  
  private ar(byte paramByte) {}
  
  private ar(int paramInt)
  {
    if (paramInt == 0) {
      throw new IllegalArgumentException("Given Integer is zero");
    }
    this.aLT = paramInt;
    this.aLY = false;
  }
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("screenName", this.aLS);
    localHashMap.put("interstitial", Boolean.valueOf(this.aLX));
    localHashMap.put("automatic", Boolean.valueOf(this.aLY));
    localHashMap.put("screenId", Integer.valueOf(this.aLT));
    localHashMap.put("referrerScreenId", Integer.valueOf(this.aLU));
    localHashMap.put("referrerScreenName", this.aLV);
    localHashMap.put("referrerUri", this.aLW);
    return L(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */