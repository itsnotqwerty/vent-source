package com.google.android.gms.internal;

import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ak
  extends l<ak>
{
  public Map<Integer, Double> aLz = new HashMap(4);
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.aLz.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str = String.valueOf(localEntry.getKey());
      localHashMap.put(String.valueOf(str).length() + 6 + "metric" + str, localEntry.getValue());
    }
    return L(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */