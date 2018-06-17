package com.google.android.gms.analytics.a;

import com.google.android.gms.analytics.l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class a
{
  private Map<String, String> aBc = new HashMap();
  
  public final Map<String, String> aX(String paramString)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.aBc.entrySet().iterator();
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str1 = String.valueOf(paramString);
      String str2 = String.valueOf((String)localEntry.getKey());
      if (str2.length() != 0) {}
      for (str1 = str1.concat(str2);; str1 = new String(str1))
      {
        localHashMap.put(str1, (String)localEntry.getValue());
        break;
      }
    }
    return localHashMap;
  }
  
  public final String toString()
  {
    return l.i(this.aBc);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */