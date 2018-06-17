package com.layer.a.b;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;

public class c
  extends a
{
  private final int a;
  private final AtomicInteger b = new AtomicInteger(0);
  private final ConcurrentLinkedQueue<Runnable> c = new ConcurrentLinkedQueue();
  private final ReentrantLock d = new ReentrantLock();
  private final AtomicInteger e = new AtomicInteger(0);
  
  public c(String paramString, int paramInt, long paramLong, TimeUnit paramTimeUnit)
  {
    super(paramString, 0, Integer.MAX_VALUE, paramLong, paramTimeUnit, new SynchronousQueue());
    this.a = paramInt;
  }
  
  protected void afterExecute(Runnable paramRunnable, Throwable paramThrowable)
  {
    super.afterExecute(paramRunnable, paramThrowable);
    this.b.decrementAndGet();
    this.e.incrementAndGet();
    if (!this.d.tryLock()) {
      return;
    }
    try
    {
      boolean bool;
      do
      {
        int j = this.e.get();
        int i = this.c.size();
        while ((i > 0) && (this.a > this.b.get()))
        {
          execute((Runnable)this.c.poll());
          i -= 1;
        }
        bool = this.e.compareAndSet(j, 0);
      } while (!bool);
      return;
    }
    finally
    {
      this.d.unlock();
    }
  }
  
  public int d()
  {
    return this.b.get();
  }
  
  public void execute(Runnable paramRunnable)
  {
    int i = this.b.incrementAndGet();
    if (this.a >= i)
    {
      super.execute(paramRunnable);
      return;
    }
    this.b.decrementAndGet();
    this.c.add(paramRunnable);
  }
  
  public String toString()
  {
    return super.toString() + " executing count=" + d() + " waiting queue=" + this.c.size();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/a/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */