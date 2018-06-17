package com.google.android.gms.internal;

import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Map;

public final class aq
  extends l<aq>
{
  public String aLK;
  public String aLL;
  public String aLM;
  public String aLN;
  public boolean aLO;
  public String aLP;
  public boolean aLQ;
  public double aLR;
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("hitType", this.aLK);
    localHashMap.put("clientId", this.aLL);
    localHashMap.put("userId", this.aLM);
    localHashMap.put("androidAdId", this.aLN);
    localHashMap.put("AdTargetingEnabled", Boolean.valueOf(this.aLO));
    localHashMap.put("sessionControl", this.aLP);
    localHashMap.put("nonInteraction", Boolean.valueOf(this.aLQ));
    localHashMap.put("sampleRate", Double.valueOf(this.aLR));
    return L(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */