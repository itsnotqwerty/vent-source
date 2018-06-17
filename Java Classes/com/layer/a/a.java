package com.layer.a;

import com.layer.a.c.d;
import com.layer.a.c.d.a;
import com.layer.a.c.e;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public abstract class a
  implements d.a
{
  private static final AtomicLong a = new AtomicLong(0L);
  private final long b = a.getAndIncrement();
  private final com.layer.a.b.a c;
  private final AtomicLong d;
  private final AtomicInteger e;
  private final ConcurrentHashMap<d, Integer> f;
  private final ConcurrentLinkedQueue<a> g;
  private final AtomicLong h = new AtomicLong(-2147483648L);
  
  public a(com.layer.a.b.a parama)
  {
    this.c = parama;
    this.d = new AtomicLong(0L);
    this.e = new AtomicInteger(0);
    this.f = new ConcurrentHashMap();
    this.g = new ConcurrentLinkedQueue();
  }
  
  private int b()
  {
    int i2 = 0;
    Object localObject = c();
    if (((Set)localObject).size() == 0)
    {
      i = 3;
      return i;
    }
    localObject = ((Set)localObject).iterator();
    int i = 0;
    int n = 0;
    int k = 0;
    int j = 0;
    int i1 = 0;
    int m = 0;
    if (((Iterator)localObject).hasNext())
    {
      switch (((d)((Iterator)localObject).next()).g())
      {
      }
      for (;;)
      {
        break;
        m += 1;
        break;
        i1 += 1;
        break;
        j += 1;
        break;
        k += 1;
        break;
        n += 1;
        break;
        i += 1;
      }
    }
    if ((m != 0) || (i1 != 0))
    {
      m = 1;
      label200:
      if ((k == 0) && (n == 0) && (i == 0)) {
        break label252;
      }
      n = 1;
      label216:
      if ((m == 0) && (j == 0) && (k == 0)) {
        break label258;
      }
    }
    label252:
    label258:
    for (j = 1;; j = 0)
    {
      if (n != 0) {
        break label263;
      }
      i = i2;
      if (m != 0) {
        break;
      }
      return 1;
      m = 0;
      break label200;
      n = 0;
      break label216;
    }
    label263:
    if (j != 0) {
      return 2;
    }
    if (i != 0) {
      return Integer.MAX_VALUE;
    }
    return 3;
  }
  
  public a a(a parama)
  {
    this.g.add(parama);
    return this;
  }
  
  protected void a(int paramInt)
  {
    int i = this.e.get();
    if (i == paramInt) {}
    for (;;)
    {
      return;
      if (i <= paramInt)
      {
        if (!this.e.compareAndSet(i, paramInt)) {
          break;
        }
        Iterator localIterator = this.g.iterator();
        while (localIterator.hasNext()) {
          ((a)localIterator.next()).a(this, i, paramInt);
        }
      }
    }
  }
  
  protected void a(d paramd)
  {
    int i = this.e.get();
    switch (i)
    {
    default: 
      this.d.incrementAndGet();
      this.c.execute(paramd);
      return;
    }
    throw new IllegalArgumentException(toString() + " Cannot execute " + paramd + " while in state " + i);
  }
  
  public abstract void a(d paramd, int paramInt1, int paramInt2);
  
  public void a(d paramd, e parame)
  {
    Iterator localIterator = this.g.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).a(this, paramd, parame);
    }
  }
  
  protected void a(Iterable<d> paramIterable)
  {
    int i = this.e.get();
    switch (i)
    {
    case 0: 
    case 1: 
    case 2: 
    default: 
      paramIterable = paramIterable.iterator();
    }
    while (paramIterable.hasNext())
    {
      d locald = (d)paramIterable.next();
      locald.a(this);
      this.f.put(locald, Integer.valueOf(locald.g()));
      continue;
      throw new IllegalStateException("Attempting to manage a task when in " + i);
    }
  }
  
  protected void a(d... paramVarArgs)
  {
    a(Arrays.asList(paramVarArgs));
  }
  
  public abstract boolean a();
  
  public void b(d paramd, int paramInt1, int paramInt2)
  {
    long l = this.h.incrementAndGet();
    if (!this.f.containsKey(paramd)) {}
    do
    {
      do
      {
        return;
      } while (paramInt2 <= ((Integer)this.f.get(paramd)).intValue());
      this.f.put(paramd, Integer.valueOf(paramInt2));
      a(paramd, paramInt1, paramInt2);
      paramInt1 = b();
    } while (l != this.h.get());
    a(paramInt1);
  }
  
  public Set<d> c()
  {
    return this.f.keySet();
  }
  
  public long d()
  {
    return this.b;
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + " " + d();
  }
  
  public static abstract interface a
  {
    public abstract void a(a parama, int paramInt1, int paramInt2);
    
    public abstract void a(a parama, d paramd, e parame);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */