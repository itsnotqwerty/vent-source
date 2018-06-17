package com.layer.sdk.internal.lsdkk;

import android.os.Process;
import com.layer.a.b.b;
import com.layer.b.f.c.m;
import java.net.URL;
import java.util.List;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class q
{
  private static final k.a a = k.a(q.class);
  
  public static int a(m paramm)
  {
    if (paramm.yw()) {
      return paramm.bEN;
    }
    return 0;
  }
  
  public static int a(List paramList, Object paramObject, int paramInt)
  {
    int m = paramList.size();
    if (m == 0)
    {
      i = -1;
      return i;
    }
    if (paramInt < 0) {}
    for (int i = 0;; i = paramInt)
    {
      paramInt = i;
      if (i >= m) {
        paramInt = m - 1;
      }
      i = paramInt;
      if (paramObject.equals(paramList.get(paramInt))) {
        break;
      }
      int n = Math.max(paramInt, m - paramInt - 1);
      int k = 1;
      i = paramInt;
      int j = paramInt;
      paramInt = k;
      for (;;)
      {
        if (paramInt > n) {
          break label150;
        }
        k = i - 1;
        if (k >= 0)
        {
          i = k;
          if (paramObject.equals(paramList.get(k))) {
            break;
          }
        }
        j += 1;
        if ((j < m) && (paramObject.equals(paramList.get(j)))) {
          return j;
        }
        paramInt += 1;
        i = k;
      }
      label150:
      return -1;
    }
  }
  
  public static com.layer.b.b.a a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    new com.layer.b.b.a()
    {
      public final URL wC()
      {
        return this.btc;
      }
      
      public final URL wD()
      {
        return this.btd;
      }
      
      public final URL wE()
      {
        return this.bte;
      }
      
      public final URL wF()
      {
        return this.btf;
      }
    };
  }
  
  public static boolean a(ThreadPoolExecutor paramThreadPoolExecutor)
  {
    if (paramThreadPoolExecutor == null) {
      return true;
    }
    try
    {
      c(paramThreadPoolExecutor);
      if ((paramThreadPoolExecutor instanceof com.layer.a.b.a)) {
        ((com.layer.a.b.a)paramThreadPoolExecutor).a();
      }
      paramThreadPoolExecutor.shutdownNow();
      paramThreadPoolExecutor.purge();
      return true;
    }
    catch (Exception paramThreadPoolExecutor)
    {
      k.a(a, paramThreadPoolExecutor.getMessage());
    }
    return false;
  }
  
  public static boolean b(ThreadPoolExecutor paramThreadPoolExecutor)
  {
    if ((paramThreadPoolExecutor == null) || (paramThreadPoolExecutor.isTerminated())) {
      return true;
    }
    long l = System.currentTimeMillis();
    while ((!paramThreadPoolExecutor.isTerminated()) && (System.currentTimeMillis() < l + 5000L)) {
      try
      {
        paramThreadPoolExecutor.awaitTermination(100L, TimeUnit.MILLISECONDS);
      }
      catch (InterruptedException localInterruptedException) {}
    }
    return paramThreadPoolExecutor.isTerminated();
  }
  
  private static void c(ThreadPoolExecutor paramThreadPoolExecutor)
  {
    if (paramThreadPoolExecutor == null) {
      return;
    }
    try
    {
      paramThreadPoolExecutor.setRejectedExecutionHandler(new RejectedExecutionHandler()
      {
        public final void rejectedExecution(Runnable paramAnonymousRunnable, ThreadPoolExecutor paramAnonymousThreadPoolExecutor)
        {
          k.a(q.wq(), "`" + paramAnonymousThreadPoolExecutor + "` rejected `" + paramAnonymousRunnable + "`");
        }
      });
      return;
    }
    catch (Exception paramThreadPoolExecutor)
    {
      k.a(a, paramThreadPoolExecutor.getMessage());
    }
  }
  
  public static class a
    extends b
  {
    final int a;
    
    public a(String paramString, long paramLong, TimeUnit paramTimeUnit, int paramInt)
    {
      super(paramLong, paramTimeUnit);
      this.a = paramInt;
    }
    
    public void execute(Runnable paramRunnable)
    {
      Process.setThreadPriority(this.a);
      super.execute(paramRunnable);
    }
  }
  
  public static class b
    extends com.layer.a.b.c
  {
    final int a;
    
    public b(String paramString, int paramInt1, long paramLong, TimeUnit paramTimeUnit, int paramInt2)
    {
      super(paramInt1, paramLong, paramTimeUnit);
      this.a = paramInt2;
    }
    
    public void execute(Runnable paramRunnable)
    {
      Process.setThreadPriority(this.a);
      super.execute(paramRunnable);
    }
  }
  
  public static class c
    extends ScheduledThreadPoolExecutor
  {
    final int a;
    
    public c(int paramInt1, int paramInt2)
    {
      super();
      this.a = paramInt2;
    }
    
    public void execute(Runnable paramRunnable)
    {
      Process.setThreadPriority(this.a);
      super.execute(paramRunnable);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */