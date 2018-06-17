package io.intercom.a.a.a.c.b.c;

import android.os.Build.VERSION;
import android.os.Process;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.util.Log;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class a
  implements ExecutorService
{
  private static final long cMh = TimeUnit.SECONDS.toMillis(10L);
  private static volatile int cMi;
  private final ExecutorService cMj;
  
  private a(ExecutorService paramExecutorService)
  {
    this.cMj = paramExecutorService;
  }
  
  public static a II()
  {
    b localb = b.cMr;
    return new a(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a("disk-cache", localb, true)));
  }
  
  public static a IJ()
  {
    int i = IM();
    b localb = b.cMr;
    return new a(new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a("source", localb, false)));
  }
  
  public static a IK()
  {
    return new a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, cMh, TimeUnit.MILLISECONDS, new SynchronousQueue(), new a("source-unlimited", b.cMr, false)));
  }
  
  public static a IL()
  {
    if (IM() >= 4) {}
    for (int i = 2;; i = 1)
    {
      b localb = b.cMr;
      return new a(new ThreadPoolExecutor(0, i, cMh, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a("animation", localb, true)));
    }
  }
  
  private static int IM()
  {
    if (cMi == 0)
    {
      int j = Runtime.getRuntime().availableProcessors();
      int i = j;
      if (Build.VERSION.SDK_INT < 17) {
        i = Math.max(b.IN(), j);
      }
      cMi = Math.min(4, i);
    }
    return cMi;
  }
  
  public final boolean awaitTermination(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    return this.cMj.awaitTermination(paramLong, paramTimeUnit);
  }
  
  public final void execute(Runnable paramRunnable)
  {
    this.cMj.execute(paramRunnable);
  }
  
  public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> paramCollection)
    throws InterruptedException
  {
    return this.cMj.invokeAll(paramCollection);
  }
  
  public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> paramCollection, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    return this.cMj.invokeAll(paramCollection, paramLong, paramTimeUnit);
  }
  
  public final <T> T invokeAny(Collection<? extends Callable<T>> paramCollection)
    throws InterruptedException, ExecutionException
  {
    return (T)this.cMj.invokeAny(paramCollection);
  }
  
  public final <T> T invokeAny(Collection<? extends Callable<T>> paramCollection, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    return (T)this.cMj.invokeAny(paramCollection, paramLong, paramTimeUnit);
  }
  
  public final boolean isShutdown()
  {
    return this.cMj.isShutdown();
  }
  
  public final boolean isTerminated()
  {
    return this.cMj.isTerminated();
  }
  
  public final void shutdown()
  {
    this.cMj.shutdown();
  }
  
  public final List<Runnable> shutdownNow()
  {
    return this.cMj.shutdownNow();
  }
  
  public final Future<?> submit(Runnable paramRunnable)
  {
    return this.cMj.submit(paramRunnable);
  }
  
  public final <T> Future<T> submit(Runnable paramRunnable, T paramT)
  {
    return this.cMj.submit(paramRunnable, paramT);
  }
  
  public final <T> Future<T> submit(Callable<T> paramCallable)
  {
    return this.cMj.submit(paramCallable);
  }
  
  public final String toString()
  {
    return this.cMj.toString();
  }
  
  private static final class a
    implements ThreadFactory
  {
    final a.b cMk;
    final boolean cMl;
    private int cMm;
    private final String name;
    
    a(String paramString, a.b paramb, boolean paramBoolean)
    {
      this.name = paramString;
      this.cMk = paramb;
      this.cMl = paramBoolean;
    }
    
    public final Thread newThread(Runnable paramRunnable)
    {
      try
      {
        paramRunnable = new Thread(paramRunnable, "glide-" + this.name + "-thread-" + this.cMm)
        {
          public final void run()
          {
            Process.setThreadPriority(9);
            if (a.a.this.cMl) {
              StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
            }
            try
            {
              super.run();
              return;
            }
            catch (Throwable localThrowable)
            {
              a.a.this.cMk.g(localThrowable);
            }
          }
        };
        this.cMm += 1;
        return paramRunnable;
      }
      finally
      {
        paramRunnable = finally;
        throw paramRunnable;
      }
    }
  }
  
  public static abstract interface b
  {
    public static final b cMo = new b()
    {
      public final void g(Throwable paramAnonymousThrowable) {}
    };
    public static final b cMp = new b()
    {
      public final void g(Throwable paramAnonymousThrowable)
      {
        if (Log.isLoggable("GlideExecutor", 6)) {
          Log.e("GlideExecutor", "Request threw uncaught throwable", paramAnonymousThrowable);
        }
      }
    };
    public static final b cMq = new b()
    {
      public final void g(Throwable paramAnonymousThrowable)
      {
        throw new RuntimeException("Request threw uncaught throwable", paramAnonymousThrowable);
      }
    };
    public static final b cMr = cMp;
    
    public abstract void g(Throwable paramThrowable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */