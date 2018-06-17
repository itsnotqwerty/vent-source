package com.layer.a.c;

import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public abstract class d<Targs, Tresults>
  implements Runnable
{
  private static final AtomicLong a = new AtomicLong(0L);
  protected Tresults b;
  private final long c = a.getAndIncrement();
  private final ConcurrentLinkedQueue<a> d = new ConcurrentLinkedQueue();
  private AtomicInteger e = new AtomicInteger(-1);
  private Targs f;
  private final Queue<e> g = new ConcurrentLinkedQueue();
  
  protected d() {}
  
  public d(Targs paramTargs)
  {
    this();
    this.f = paramTargs;
  }
  
  public d a(a parama)
  {
    this.d.add(parama);
    return this;
  }
  
  public abstract Tresults a(Targs paramTargs)
    throws Exception;
  
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
        Iterator localIterator = this.d.iterator();
        while (localIterator.hasNext()) {
          ((a)localIterator.next()).b(this, i, paramInt);
        }
      }
    }
  }
  
  protected void a(e parame)
  {
    this.g.add(parame);
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).a(this, parame);
    }
  }
  
  public Targs a_()
  {
    return (Targs)this.f;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof d)) {}
    while (this.c != ((d)paramObject).c) {
      return false;
    }
    return true;
  }
  
  public int g()
  {
    return this.e.get();
  }
  
  public Tresults h()
  {
    return (Tresults)this.b;
  }
  
  public int hashCode()
  {
    return (int)this.c;
  }
  
  public Queue<e> i()
  {
    return this.g;
  }
  
  public long j()
  {
    return this.c;
  }
  
  public void run()
  {
    if (g() != 1)
    {
      a(Integer.MAX_VALUE);
      a(new e(this, "Task run while not ready"));
      return;
    }
    try
    {
      a(2);
      this.b = a(a_());
      a(3);
      return;
    }
    catch (Exception localException)
    {
      a(Integer.MAX_VALUE);
      a(new e(this, null, "Uncaught Task exception", localException));
    }
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + " " + j();
  }
  
  public static abstract interface a
  {
    public abstract void a(d paramd, e parame);
    
    public abstract void b(d paramd, int paramInt1, int paramInt2);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/a/c/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */