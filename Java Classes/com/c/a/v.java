package com.c.a;

import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class v
  extends ThreadPoolExecutor
{
  public v()
  {
    super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ag.b());
  }
  
  final void ed(int paramInt)
  {
    setCorePoolSize(paramInt);
    setMaximumPoolSize(paramInt);
  }
  
  public final Future<?> submit(Runnable paramRunnable)
  {
    paramRunnable = new a((c)paramRunnable);
    execute(paramRunnable);
    return paramRunnable;
  }
  
  private static final class a
    extends FutureTask<c>
    implements Comparable<a>
  {
    private final c bOB;
    
    public a(c paramc)
    {
      super(null);
      this.bOB = paramc;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */