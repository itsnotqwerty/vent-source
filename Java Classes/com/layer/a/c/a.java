package com.layer.a.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

public abstract class a<Targs, Tresults>
  extends d<Targs, Tresults>
  implements d.a
{
  private final ConcurrentHashMap<d, Integer> a = new ConcurrentHashMap();
  private final ConcurrentHashMap<d, Integer> c = new ConcurrentHashMap();
  private a<?, Targs> d;
  private final AtomicLong e = new AtomicLong(-2147483648L);
  private final AtomicLong f = new AtomicLong(-2147483648L);
  
  public a(Targs paramTargs)
  {
    super(paramTargs);
  }
  
  private boolean a()
  {
    Iterator localIterator = this.a.values().iterator();
    if (localIterator.hasNext())
    {
      switch (((Integer)localIterator.next()).intValue())
      {
      }
      return false;
    }
    return true;
  }
  
  private boolean d()
  {
    int i = g();
    switch (i)
    {
    default: 
      throw new IllegalStateException(toString() + " Unknown state: " + i);
    case 0: 
    case 1: 
    case 2: 
      return false;
    case 4: 
      return true;
    }
    Iterator localIterator = this.c.values().iterator();
    while (localIterator.hasNext()) {
      if (!((Integer)localIterator.next()).equals(Integer.valueOf(4))) {
        return false;
      }
    }
    return true;
  }
  
  public void a(d paramd, e parame) {}
  
  public Targs a_()
  {
    if (this.d != null) {
      return (Targs)this.d.h();
    }
    return (Targs)super.a_();
  }
  
  public a b()
  {
    if (g() != -1) {
      throw new IllegalStateException("Task built while out of the STATE_NOT_BUILT state");
    }
    if (a())
    {
      a(1);
      return this;
    }
    a(0);
    return this;
  }
  
  public void b(d paramd, int paramInt1, int paramInt2)
  {
    long l;
    if (this.a.containsKey(paramd))
    {
      l = this.e.incrementAndGet();
      if (paramInt2 > ((Integer)this.a.get(paramd)).intValue()) {}
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            this.a.put(paramd, Integer.valueOf(paramInt2));
          } while (((paramInt2 != 3) && (paramInt2 != 4)) || (g() != 0) || (!a()) || (l != this.e.get()));
          a(1);
          return;
        } while (!this.c.containsKey(paramd));
        l = this.f.incrementAndGet();
      } while (paramInt2 <= ((Integer)this.c.get(paramd)).intValue());
      this.c.put(paramd, Integer.valueOf(paramInt2));
    } while ((paramInt2 != 4) || (!d()) || (l != this.f.get()));
    a(4);
  }
  
  public void run()
  {
    super.run();
    if ((g() == 3) && (this.c.isEmpty())) {
      a(4);
    }
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + " " + j();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/a/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */