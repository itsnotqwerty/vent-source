package com.layer.a.c;

import com.layer.a.a.a;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public abstract class c<Targs, Tresults>
  extends d<Targs, Tresults>
{
  private final a a;
  private final AtomicInteger c = new AtomicInteger(0);
  private final AtomicBoolean d = new AtomicBoolean(false);
  private final AtomicBoolean e = new AtomicBoolean(false);
  private final a f;
  private final AtomicReference<Thread> g = new AtomicReference();
  
  public c(a parama, a parama1, Targs paramTargs)
  {
    super(paramTargs);
    this.a = parama;
    this.f = parama1;
  }
  
  public void a(boolean paramBoolean)
  {
    this.d.set(true);
    if (paramBoolean)
    {
      Thread localThread = (Thread)this.g.get();
      if (localThread != null) {
        localThread.interrupt();
      }
    }
  }
  
  public boolean d()
  {
    return this.d.get();
  }
  
  public boolean e()
  {
    return this.e.get();
  }
  
  public d f()
  {
    a(1);
    return this;
  }
  
  public void run()
  {
    this.g.set(Thread.currentThread());
    if (g() == -1) {
      f();
    }
    if (this.f != null) {
      this.f.a(this);
    }
    if (g() != 1)
    {
      a(new e(this, "Task run while not ready"));
      if ((d()) || (e()) || (!i().isEmpty())) {
        break label265;
      }
      a(3);
      if (this.f != null) {
        this.f.b(this);
      }
    }
    for (;;)
    {
      return;
      try
      {
        a(2);
        boolean bool = d();
        if (!bool) {}
        try
        {
          this.c.incrementAndGet();
          this.b = a(a_());
        }
        catch (Exception localException1)
        {
          l = this.a.a();
          if (l != -1L) {
            break label217;
          }
        }
        this.e.set(true);
        throw localException1;
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          long l;
          a(new e(this, null, "Uncaught Task exception", localException2));
          this.g.set(null);
          break;
          label217:
          if (this.f != null) {
            this.f.a(this, l, localException2);
          }
          try
          {
            TimeUnit.MILLISECONDS.sleep(l);
          }
          catch (InterruptedException localInterruptedException) {}
        }
      }
      finally
      {
        this.g.set(null);
      }
      label265:
      a(Integer.MAX_VALUE);
      if (!i().isEmpty())
      {
        localObject2 = (e)i().peek();
        if (localObject2 == null) {}
      }
      for (Object localObject2 = ((e)localObject2).getCause(); this.f != null; localObject2 = null)
      {
        if (d())
        {
          this.f.a(this, b.bpH, (Throwable)localObject2);
          return;
        }
        if (e())
        {
          this.f.a(this, b.bpI, (Throwable)localObject2);
          return;
        }
        this.f.a(this, b.bpJ, (Throwable)localObject2);
        return;
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(c paramc);
    
    public abstract void a(c paramc, long paramLong, Throwable paramThrowable);
    
    public abstract void a(c paramc, c.b paramb, Throwable paramThrowable);
    
    public abstract void b(c paramc);
  }
  
  public static enum b
  {
    private b() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/a/c/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */