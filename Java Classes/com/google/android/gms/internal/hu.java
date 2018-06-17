package com.google.android.gms.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.ae;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

public final class hu
  extends iy
{
  private static final AtomicLong aUE = new AtomicLong(Long.MIN_VALUE);
  private final Thread.UncaughtExceptionHandler aUA = new hw(this, "Thread death: Uncaught exception on network thread");
  private final Object aUB = new Object();
  private final Semaphore aUC = new Semaphore(2);
  private volatile boolean aUD;
  private hy aUv;
  private hy aUw;
  private final PriorityBlockingQueue<hx<?>> aUx = new PriorityBlockingQueue();
  private final BlockingQueue<hx<?>> aUy = new LinkedBlockingQueue();
  private final Thread.UncaughtExceptionHandler aUz = new hw(this, "Thread death: Uncaught exception on worker thread");
  private ExecutorService executor;
  
  hu(hz paramhz)
  {
    super(paramhz);
  }
  
  private final void a(hx<?> paramhx)
  {
    synchronized (this.aUB)
    {
      this.aUx.add(paramhx);
      if (this.aUv == null)
      {
        this.aUv = new hy(this, "Measurement Worker", this.aUx);
        this.aUv.setUncaughtExceptionHandler(this.aUz);
        this.aUv.start();
        return;
      }
      this.aUv.rU();
    }
  }
  
  public static boolean oM()
  {
    return Looper.myLooper() == Looper.getMainLooper();
  }
  
  public final <V> Future<V> c(Callable<V> paramCallable)
    throws IllegalStateException
  {
    pf();
    ae.E(paramCallable);
    paramCallable = new hx(this, paramCallable, false, "Task exception on worker thread");
    if (Thread.currentThread() == this.aUv)
    {
      if (!this.aUx.isEmpty()) {
        qP().aTd.bq("Callable skipped the worker queue.");
      }
      paramCallable.run();
      return paramCallable;
    }
    a(paramCallable);
    return paramCallable;
  }
  
  public final <V> Future<V> d(Callable<V> paramCallable)
    throws IllegalStateException
  {
    pf();
    ae.E(paramCallable);
    paramCallable = new hx(this, paramCallable, true, "Task exception on worker thread");
    if (Thread.currentThread() == this.aUv)
    {
      paramCallable.run();
      return paramCallable;
    }
    a(paramCallable);
    return paramCallable;
  }
  
  public final void i(Runnable paramRunnable)
    throws IllegalStateException
  {
    pf();
    ae.E(paramRunnable);
    a(new hx(this, paramRunnable, "Task exception on worker thread"));
  }
  
  public final void j(Runnable arg1)
    throws IllegalStateException
  {
    pf();
    ae.E(???);
    hx localhx = new hx(this, ???, "Task exception on network thread");
    synchronized (this.aUB)
    {
      this.aUy.add(localhx);
      if (this.aUw == null)
      {
        this.aUw = new hy(this, "Measurement Network", this.aUy);
        this.aUw.setUncaughtExceptionHandler(this.aUA);
        this.aUw.start();
        return;
      }
      this.aUw.rU();
    }
  }
  
  public final void mN()
  {
    if (Thread.currentThread() != this.aUv) {
      throw new IllegalStateException("Call expected from worker thread");
    }
  }
  
  public final void qz()
  {
    if (Thread.currentThread() != this.aUw) {
      throw new IllegalStateException("Call expected from network thread");
    }
  }
  
  public final boolean rR()
  {
    return Thread.currentThread() == this.aUv;
  }
  
  final ExecutorService rS()
  {
    synchronized (this.aUB)
    {
      if (this.executor == null) {
        this.executor = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
      }
      ExecutorService localExecutorService = this.executor;
      return localExecutorService;
    }
  }
  
  protected final boolean ri()
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */