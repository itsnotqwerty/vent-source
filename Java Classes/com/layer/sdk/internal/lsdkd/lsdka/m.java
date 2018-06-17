package com.layer.sdk.internal.lsdkd.lsdka;

import com.layer.sdk.internal.lsdkk.m.b;
import com.layer.sdk.internal.lsdkk.m.c;
import com.layer.sdk.internal.lsdkk.m.g;
import com.layer.sdk.internal.lsdkk.m.i;
import com.layer.sdk.messaging.Metadata;
import com.layer.sdk.messaging.Metadata.Entry;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class m
  extends Metadata
  implements m.i
{
  private final Map<m.b, m.i> a = new ConcurrentHashMap();
  
  public m.i a(m.b paramb)
  {
    if (paramb == null) {
      return null;
    }
    return (m.i)this.a.get(paramb);
  }
  
  public m.i a(m.b paramb, m.i parami)
  {
    if (paramb == null) {
      throw new IllegalArgumentException("Key cannot be null");
    }
    if (parami == null) {
      throw new IllegalArgumentException("Value cannot be null");
    }
    return (m.i)this.a.put(paramb, parami);
  }
  
  public m.i a(m.c paramc)
  {
    if (paramc == null) {
      return null;
    }
    m.b[] arrayOfb = paramc.a();
    int j = arrayOfb.length - 1;
    int i = 0;
    paramc = this;
    while (i <= j)
    {
      m.b localb = arrayOfb[i];
      if (i == j) {
        return paramc.a(localb);
      }
      m.i locali = paramc.a(localb);
      if (locali == null) {
        return null;
      }
      if (!(locali instanceof m)) {
        return null;
      }
      paramc = (m)paramc.a(localb);
      i += 1;
    }
    return null;
  }
  
  public m.i a(m.c paramc, m.i parami)
  {
    if (paramc == null) {
      throw new IllegalArgumentException("Key path cannot be null");
    }
    if (parami == null) {
      throw new IllegalArgumentException("Value cannot be null");
    }
    m.b[] arrayOfb = paramc.a();
    int j = arrayOfb.length - 1;
    int i = 0;
    paramc = this;
    if (i <= j)
    {
      m.b localb = arrayOfb[i];
      if (i == j) {
        return paramc.a(localb, parami);
      }
      m.i locali = paramc.a(localb);
      if (locali == null) {
        paramc.a(localb, new m());
      }
      while ((locali instanceof m))
      {
        paramc = (m)paramc.a(localb);
        i += 1;
        break;
      }
      throw new IllegalArgumentException("Cannot traverse into metadata level: " + locali);
    }
    throw new IllegalArgumentException("Could not set metadata value");
  }
  
  public Map<m.b, m.i> a()
  {
    return this.a;
  }
  
  public void a(m paramm)
  {
    paramm = com.layer.sdk.internal.lsdkk.m.b(paramm).entrySet().iterator();
    while (paramm.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramm.next();
      a((m.c)localEntry.getKey(), (m.i)localEntry.getValue());
    }
  }
  
  public m.i b(m.b paramb)
  {
    if (paramb == null) {
      return null;
    }
    return (m.i)this.a.remove(paramb);
  }
  
  public m.i b(m.c paramc)
  {
    if (paramc == null) {
      return null;
    }
    m.b[] arrayOfb = paramc.a();
    int j = arrayOfb.length - 1;
    int i = 0;
    paramc = this;
    while (i <= j)
    {
      m.b localb = arrayOfb[i];
      if (i == j) {
        return paramc.b(localb);
      }
      m.i locali = paramc.a(localb);
      if (!(locali instanceof m)) {
        throw new IllegalArgumentException("Cannot traverse into metadata level: " + locali);
      }
      paramc = (m)paramc.a(localb);
      i += 1;
    }
    return null;
  }
  
  public void clear()
  {
    this.a.clear();
  }
  
  public boolean containsKey(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return this.a.containsKey(new m.b(paramString));
  }
  
  public Set<Metadata.Entry> entrySet()
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    Iterator localIterator = this.a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localLinkedHashSet.add(new Metadata.Entry(((m.b)localEntry.getKey()).toString(), localEntry.getValue()));
    }
    return localLinkedHashSet;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (m)paramObject;
    return this.a.equals(((m)paramObject).a);
  }
  
  public int hashCode()
  {
    return this.a.hashCode();
  }
  
  public boolean isEmpty()
  {
    return this.a.isEmpty();
  }
  
  public Set<String> keySet()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = this.a.keySet().iterator();
    while (localIterator.hasNext()) {
      localHashSet.add(((m.b)localIterator.next()).toString());
    }
    return localHashSet;
  }
  
  public int size()
  {
    return this.a.size();
  }
  
  public String toString()
  {
    return "MetadataImpl{mMap=" + this.a + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */