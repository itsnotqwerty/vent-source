package com.google.android.gms.internal;

import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class aj
  extends l<aj>
{
  public Map<Integer, String> aLy = new HashMap(4);
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.aLy.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str = String.valueOf(localEntry.getKey());
      localHashMap.put(String.valueOf(str).length() + 9 + "dimension" + str, localEntry.getValue());
    }
    return L(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */