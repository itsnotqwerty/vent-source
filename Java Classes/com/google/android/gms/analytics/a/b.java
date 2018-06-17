package com.google.android.gms.analytics.a;

import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b
{
  private Map<String, String> aBc;
  
  public final Map<String, String> mF()
  {
    return new HashMap(this.aBc);
  }
  
  public final String toString()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.aBc.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((String)localEntry.getKey()).startsWith("&")) {
        localHashMap.put(((String)localEntry.getKey()).substring(1), (String)localEntry.getValue());
      } else {
        localHashMap.put((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
    return l.i(localHashMap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */