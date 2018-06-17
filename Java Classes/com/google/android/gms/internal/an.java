package com.google.android.gms.internal;

import com.google.android.gms.analytics.a.a;
import com.google.android.gms.analytics.a.b;
import com.google.android.gms.analytics.a.c;
import com.google.android.gms.analytics.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class an
  extends l<an>
{
  public b aAQ;
  public final Map<String, List<a>> aAR = new HashMap();
  public final List<c> aAS = new ArrayList();
  public final List<a> aAT = new ArrayList();
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    if (!this.aAT.isEmpty()) {
      localHashMap.put("products", this.aAT);
    }
    if (!this.aAS.isEmpty()) {
      localHashMap.put("promotions", this.aAS);
    }
    if (!this.aAR.isEmpty()) {
      localHashMap.put("impressions", this.aAR);
    }
    localHashMap.put("productAction", this.aAQ);
    return L(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */