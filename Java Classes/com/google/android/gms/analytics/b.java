package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.a.a;
import com.google.android.gms.analytics.a.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b
{
  public static final class a
    extends b.b<a>
  {
    public a()
    {
      o("&t", "event");
    }
  }
  
  public static class b<T extends b>
  {
    private Map<String, String> aAP = new HashMap();
    private com.google.android.gms.analytics.a.b aAQ;
    private Map<String, List<a>> aAR = new HashMap();
    private List<c> aAS = new ArrayList();
    private List<a> aAT = new ArrayList();
    
    public final Map<String, String> mF()
    {
      HashMap localHashMap = new HashMap(this.aAP);
      if (this.aAQ != null) {
        localHashMap.putAll(this.aAQ.mF());
      }
      Object localObject = this.aAS.iterator();
      int i = 1;
      while (((Iterator)localObject).hasNext())
      {
        localHashMap.putAll(((c)((Iterator)localObject).next()).aX(h.b("&promo", i)));
        i += 1;
      }
      localObject = this.aAT.iterator();
      i = 1;
      while (((Iterator)localObject).hasNext())
      {
        localHashMap.putAll(((a)((Iterator)localObject).next()).aX(h.b("&pr", i)));
        i += 1;
      }
      Iterator localIterator1 = this.aAR.entrySet().iterator();
      i = 1;
      if (localIterator1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator1.next();
        localObject = (List)localEntry.getValue();
        String str1 = h.b("&il", i);
        Iterator localIterator2 = ((List)localObject).iterator();
        int j = 1;
        if (localIterator2.hasNext())
        {
          a locala = (a)localIterator2.next();
          localObject = String.valueOf(str1);
          String str2 = String.valueOf(h.b("pi", j));
          if (str2.length() != 0) {}
          for (localObject = ((String)localObject).concat(str2);; localObject = new String((String)localObject))
          {
            localHashMap.putAll(locala.aX((String)localObject));
            j += 1;
            break;
          }
        }
        if (!TextUtils.isEmpty((CharSequence)localEntry.getKey()))
        {
          localObject = String.valueOf(str1);
          str1 = String.valueOf("nm");
          if (str1.length() == 0) {
            break label365;
          }
        }
        label365:
        for (localObject = ((String)localObject).concat(str1);; localObject = new String((String)localObject))
        {
          localHashMap.put(localObject, (String)localEntry.getKey());
          i += 1;
          break;
        }
      }
      return localHashMap;
    }
    
    public final T o(String paramString1, String paramString2)
    {
      this.aAP.put(paramString1, paramString2);
      return this;
    }
  }
  
  public static final class c
    extends b.b<c>
  {
    public c()
    {
      o("&t", "screenview");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */