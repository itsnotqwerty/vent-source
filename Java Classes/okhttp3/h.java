package okhttp3;

import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.b.d;
import okhttp3.internal.b.g.a;
import okhttp3.internal.g.f;

public final class h
{
  static final Executor executor;
  final d cYG = new d();
  final Runnable cleanupRunnable = new Runnable()
  {
    public final void run()
    {
      long l1;
      do
      {
        l1 = h.this.cleanup(System.nanoTime());
        if (l1 == -1L) {
          return;
        }
      } while (l1 <= 0L);
      long l2 = l1 / 1000000L;
      try
      {
        synchronized (h.this)
        {
          h.this.wait(l2, (int)(l1 - l2 * 1000000L));
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;) {}
      }
    }
  };
  boolean cleanupRunning;
  public final Deque<okhttp3.internal.b.c> connections = new ArrayDeque();
  private final long keepAliveDurationNs;
  final int maxIdleConnections = 5;
  
  static
  {
    if (!h.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), okhttp3.internal.c.threadFactory("OkHttp ConnectionPool", true));
      return;
    }
  }
  
  public h()
  {
    this(TimeUnit.MINUTES);
  }
  
  private h(TimeUnit paramTimeUnit)
  {
    this.keepAliveDurationNs = paramTimeUnit.toNanos(5L);
    if (5L <= 0L) {
      throw new IllegalArgumentException("keepAliveDuration <= 0: 5");
    }
  }
  
  final long cleanup(long paramLong)
  {
    Object localObject1 = null;
    long l1 = Long.MIN_VALUE;
    for (;;)
    {
      int j;
      int i;
      int k;
      try
      {
        Iterator localIterator = this.connections.iterator();
        j = 0;
        i = 0;
        if (localIterator.hasNext())
        {
          okhttp3.internal.b.c localc = (okhttp3.internal.b.c)localIterator.next();
          List localList = localc.allocations;
          k = 0;
          if (k < localList.size())
          {
            Object localObject3 = (Reference)localList.get(k);
            if (((Reference)localObject3).get() != null)
            {
              k += 1;
              continue;
            }
            localObject3 = (g.a)localObject3;
            String str = "A connection to " + localc.dab.cZz.cVX + " was leaked. Did you forget to close a response body?";
            f.Ng().logCloseableLeak(str, ((g.a)localObject3).callStackTrace);
            localList.remove(k);
            localc.noNewStreams = true;
            if (!localList.isEmpty()) {
              continue;
            }
            localc.idleAtNanos = (paramLong - this.keepAliveDurationNs);
            k = 0;
            break label331;
          }
          k = localList.size();
          break label331;
          long l2 = paramLong - localc.idleAtNanos;
          if (l2 <= l1) {
            break label328;
          }
          localObject1 = localc;
          l1 = l2;
          break label343;
        }
        if ((l1 >= this.keepAliveDurationNs) || (j > this.maxIdleConnections))
        {
          this.connections.remove(localObject1);
          okhttp3.internal.c.closeQuietly(((okhttp3.internal.b.c)localObject1).socket);
          return 0L;
        }
        if (j > 0)
        {
          paramLong = this.keepAliveDurationNs;
          return paramLong - l1;
        }
      }
      finally {}
      if (i > 0)
      {
        paramLong = this.keepAliveDurationNs;
        return paramLong;
      }
      this.cleanupRunning = false;
      return -1L;
      label328:
      label331:
      if (k > 0)
      {
        i += 1;
        continue;
        label343:
        j += 1;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */