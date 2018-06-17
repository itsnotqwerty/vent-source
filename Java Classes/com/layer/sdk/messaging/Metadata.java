package com.layer.sdk.messaging;

import com.layer.sdk.internal.lsdkd.lsdka.m;
import com.layer.sdk.internal.lsdkk.m.c;
import com.layer.sdk.internal.lsdkk.m.f;
import com.layer.sdk.internal.lsdkk.m.h;
import com.layer.sdk.internal.lsdkk.m.i;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class Metadata
{
  public static Metadata fromKeyPathMap(Map<String, String> paramMap)
  {
    m localm = new m();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localm.a(new m.c((CharSequence)localEntry.getKey()), new m.h((CharSequence)localEntry.getValue()));
    }
    return localm;
  }
  
  public static Metadata newInstance()
  {
    return new m();
  }
  
  public abstract m.i a(m.c paramc);
  
  public abstract m.i a(m.c paramc, m.i parami);
  
  public abstract m.i b(m.c paramc);
  
  public abstract void clear();
  
  public abstract boolean containsKey(String paramString);
  
  public abstract Set<Entry> entrySet();
  
  public Object get(String paramString)
  {
    if (paramString == null) {
      paramString = null;
    }
    m.i locali;
    do
    {
      return paramString;
      locali = a(new m.c(paramString));
      paramString = locali;
    } while (!(locali instanceof m.h));
    return locali.toString();
  }
  
  public abstract boolean isEmpty();
  
  public abstract Set<String> keySet();
  
  public Object put(String paramString, Metadata paramMetadata)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Key cannot be null");
    }
    if (paramMetadata == null) {
      throw new IllegalArgumentException("Metadata cannot be null. Consider #putMergeDelete(key) instead.");
    }
    paramMetadata = a(new m.c(paramString), (m)paramMetadata);
    paramString = paramMetadata;
    if ((paramMetadata instanceof m.h)) {
      paramString = paramMetadata.toString();
    }
    return paramString;
  }
  
  public Object put(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("Key cannot be null");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("Value cannot be null. Consider #putMergeDelete(key) instead.");
    }
    paramString2 = a(new m.c(paramString1), new m.h(paramString2, null));
    paramString1 = paramString2;
    if ((paramString2 instanceof m.h)) {
      paramString1 = paramString2.toString();
    }
    return paramString1;
  }
  
  public Object putMergeDelete(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Key cannot be null");
    }
    m.i locali = a(new m.c(paramString), new m.f());
    paramString = locali;
    if ((locali instanceof m.h)) {
      paramString = locali.toString();
    }
    return paramString;
  }
  
  public Object remove(String paramString)
  {
    if (paramString == null) {
      paramString = null;
    }
    m.i locali;
    do
    {
      return paramString;
      locali = b(new m.c(paramString));
      paramString = locali;
    } while (!(locali instanceof m.h));
    return locali.toString();
  }
  
  public abstract int size();
  
  public static class Entry
    implements Map.Entry<String, Object>
  {
    final String a;
    Object b;
    
    public Entry(String paramString, Object paramObject)
    {
      if (paramString == null) {
        throw new IllegalArgumentException("Key cannot be null");
      }
      if (paramObject == null) {
        throw new IllegalArgumentException("Value cannot be null");
      }
      this.a = paramString;
      this.b = paramObject;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1;
      if (this == paramObject) {
        bool1 = true;
      }
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (paramObject == null);
          bool1 = bool2;
        } while (getClass() != paramObject.getClass());
        paramObject = (Entry)paramObject;
        bool1 = bool2;
      } while (!this.a.equals(((Entry)paramObject).a));
      return this.b.equals(((Entry)paramObject).b);
    }
    
    public final String getKey()
    {
      return this.a;
    }
    
    public final Object getValue()
    {
      return this.b;
    }
    
    public final int hashCode()
    {
      return this.a.hashCode() ^ this.b.hashCode();
    }
    
    public final Object setValue(Object paramObject)
    {
      if (paramObject == null) {
        throw new IllegalArgumentException("Value cannot be null");
      }
      Object localObject = this.b;
      this.b = paramObject;
      return localObject;
    }
    
    public final String toString()
    {
      return this.a + "=" + this.b;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/messaging/Metadata.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */