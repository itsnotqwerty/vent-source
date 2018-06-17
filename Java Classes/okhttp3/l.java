package okhttp3;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.internal.c;

public final class l
{
  @Nullable
  private ExecutorService executorService;
  @Nullable
  private Runnable idleCallback;
  private int maxRequests = 64;
  private int maxRequestsPerHost = 5;
  private final Deque<v.a> readyAsyncCalls = new ArrayDeque();
  private final Deque<v.a> runningAsyncCalls = new ArrayDeque();
  private final Deque<v> runningSyncCalls = new ArrayDeque();
  
  private ExecutorService executorService()
  {
    try
    {
      if (this.executorService == null) {
        this.executorService = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), c.threadFactory("OkHttp Dispatcher", false));
      }
      ExecutorService localExecutorService = this.executorService;
      return localExecutorService;
    }
    finally {}
  }
  
  private <T> void finished(Deque<T> paramDeque, T paramT, boolean paramBoolean)
  {
    try
    {
      if (!paramDeque.remove(paramT)) {
        throw new AssertionError("Call wasn't in-flight!");
      }
    }
    finally {}
    if (paramBoolean) {
      promoteCalls();
    }
    int i = runningCallsCount();
    paramDeque = this.idleCallback;
    if ((i == 0) && (paramDeque != null)) {
      paramDeque.run();
    }
  }
  
  private void promoteCalls()
  {
    if (this.runningAsyncCalls.size() >= this.maxRequests) {}
    Iterator localIterator1;
    do
    {
      return;
      while (this.readyAsyncCalls.isEmpty()) {}
      localIterator1 = this.readyAsyncCalls.iterator();
    } while (!localIterator1.hasNext());
    v.a locala1 = (v.a)localIterator1.next();
    Iterator localIterator2 = this.runningAsyncCalls.iterator();
    int i = 0;
    label71:
    while (localIterator2.hasNext())
    {
      v.a locala2 = (v.a)localIterator2.next();
      if (!locala2.cZn.forWebSocket)
      {
        if (!locala2.host().equals(locala1.host())) {
          break label178;
        }
        i += 1;
      }
    }
    label178:
    for (;;)
    {
      break label71;
      if (i < this.maxRequestsPerHost)
      {
        localIterator1.remove();
        this.runningAsyncCalls.add(locala1);
        executorService().execute(locala1);
      }
      if (this.runningAsyncCalls.size() < this.maxRequests) {
        break;
      }
      return;
    }
  }
  
  private int runningCallsCount()
  {
    try
    {
      int i = this.runningAsyncCalls.size();
      int j = this.runningSyncCalls.size();
      return i + j;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void a(v.a parama)
  {
    finished(this.runningAsyncCalls, parama, true);
  }
  
  final void a(v paramv)
  {
    try
    {
      this.runningSyncCalls.add(paramv);
      return;
    }
    finally
    {
      paramv = finally;
      throw paramv;
    }
  }
  
  final void b(v paramv)
  {
    finished(this.runningSyncCalls, paramv, false);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */