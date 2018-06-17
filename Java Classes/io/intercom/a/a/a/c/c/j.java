package io.intercom.a.a.a.c.c;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class j
  implements h
{
  private volatile Map<String, String> cMN;
  private final Map<String, List<i>> headers;
  
  j(Map<String, List<i>> paramMap)
  {
    this.headers = Collections.unmodifiableMap(paramMap);
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof j))
    {
      paramObject = (j)paramObject;
      return this.headers.equals(((j)paramObject).headers);
    }
    return false;
  }
  
  public final Map<String, String> getHeaders()
  {
    if (this.cMN == null) {}
    for (;;)
    {
      int i;
      try
      {
        if (this.cMN == null)
        {
          HashMap localHashMap = new HashMap();
          Iterator localIterator = this.headers.entrySet().iterator();
          if (localIterator.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            StringBuilder localStringBuilder = new StringBuilder();
            List localList = (List)localEntry.getValue();
            int j = localList.size();
            i = 0;
            if (i < j)
            {
              String str = ((i)localList.get(i)).IP();
              if (TextUtils.isEmpty(str)) {
                break label209;
              }
              localStringBuilder.append(str);
              if (i == localList.size() - 1) {
                break label209;
              }
              localStringBuilder.append(',');
              break label209;
            }
            if (TextUtils.isEmpty(localStringBuilder.toString())) {
              continue;
            }
            localHashMap.put(localEntry.getKey(), localStringBuilder.toString());
            continue;
          }
          this.cMN = Collections.unmodifiableMap(localMap);
        }
      }
      finally {}
      return this.cMN;
      label209:
      i += 1;
    }
  }
  
  public final int hashCode()
  {
    return this.headers.hashCode();
  }
  
  public final String toString()
  {
    return "LazyHeaders{headers=" + this.headers + '}';
  }
  
  public static final class a
  {
    private static final String amf;
    private static final Map<String, List<i>> cMO;
    boolean cMP = true;
    private boolean cMQ = true;
    Map<String, List<i>> headers = cMO;
    
    static
    {
      Object localObject = System.getProperty("http.agent");
      if (TextUtils.isEmpty((CharSequence)localObject)) {}
      for (;;)
      {
        amf = (String)localObject;
        localObject = new HashMap(2);
        if (!TextUtils.isEmpty(amf)) {
          ((Map)localObject).put("User-Agent", Collections.singletonList(new j.b(amf)));
        }
        cMO = Collections.unmodifiableMap((Map)localObject);
        return;
        int j = ((String)localObject).length();
        StringBuilder localStringBuilder = new StringBuilder(((String)localObject).length());
        int i = 0;
        if (i < j)
        {
          char c = ((String)localObject).charAt(i);
          if (((c > '\037') || (c == '\t')) && (c < '')) {
            localStringBuilder.append(c);
          }
          for (;;)
          {
            i += 1;
            break;
            localStringBuilder.append('?');
          }
        }
        localObject = localStringBuilder.toString();
      }
    }
  }
  
  static final class b
    implements i
  {
    private final String value;
    
    b(String paramString)
    {
      this.value = paramString;
    }
    
    public final String IP()
    {
      return this.value;
    }
    
    public final boolean equals(Object paramObject)
    {
      if ((paramObject instanceof b))
      {
        paramObject = (b)paramObject;
        return this.value.equals(((b)paramObject).value);
      }
      return false;
    }
    
    public final int hashCode()
    {
      return this.value.hashCode();
    }
    
    public final String toString()
    {
      return "StringHeaderFactory{value='" + this.value + '\'' + '}';
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */