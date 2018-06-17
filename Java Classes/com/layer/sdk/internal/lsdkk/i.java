package com.layer.sdk.internal.lsdkk;

import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListSet;

public class i<Tkey, Tvalue extends Comparable<Tvalue>>
{
  ConcurrentHashMap<Tkey, ConcurrentSkipListSet<a<Tvalue>>> a = new ConcurrentHashMap();
  private final long b;
  
  public i(long paramLong)
  {
    this.b = paramLong;
  }
  
  private void a()
  {
    Date localDate = new Date();
    Iterator localIterator = this.a.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      localObject = ((ConcurrentSkipListSet)this.a.get(localObject)).iterator();
      while (((Iterator)localObject).hasNext()) {
        if (!a.a((a)((Iterator)localObject).next(), localDate, this.b)) {
          ((Iterator)localObject).remove();
        }
      }
    }
  }
  
  public boolean a(Tkey paramTkey, Tvalue paramTvalue)
  {
    a();
    ConcurrentSkipListSet localConcurrentSkipListSet = (ConcurrentSkipListSet)this.a.get(paramTkey);
    Object localObject = localConcurrentSkipListSet;
    if (localConcurrentSkipListSet == null)
    {
      localObject = new ConcurrentSkipListSet();
      paramTkey = (ConcurrentSkipListSet)this.a.putIfAbsent(paramTkey, localObject);
      if (paramTkey == null) {
        break label80;
      }
      localObject = paramTkey;
    }
    label80:
    for (;;)
    {
      paramTkey = new a(paramTvalue, (byte)0);
      if (((ConcurrentSkipListSet)localObject).contains(paramTkey)) {
        return false;
      }
      ((ConcurrentSkipListSet)localObject).add(paramTkey);
      return true;
    }
  }
  
  private static final class a<T extends Comparable<T>>
    implements Comparable<a<T>>
  {
    private final Date bqq;
    private final T bsN;
    
    private a(T paramT)
    {
      this.bsN = paramT;
      this.bqq = new Date();
    }
    
    public final boolean equals(Object paramObject)
    {
      if ((paramObject instanceof a)) {
        return this.bsN.equals(((a)paramObject).bsN);
      }
      return false;
    }
    
    public final int hashCode()
    {
      return this.bsN.hashCode();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */