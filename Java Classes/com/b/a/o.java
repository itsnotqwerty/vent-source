package com.b.a;

import com.b.a.a.g;
import com.b.a.a.i;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class o
{
  private static final o bIf;
  private final int b;
  final n bIn;
  private final LinkedList<m> bIo = new LinkedList();
  private Executor bIp = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), i.g("OkHttp ConnectionPool", true));
  private final Runnable bIq = new Runnable()
  {
    public final void run()
    {
      o.a(o.this);
    }
  };
  private final long c;
  
  static
  {
    String str1 = System.getProperty("http.keepAlive");
    String str2 = System.getProperty("http.keepAliveDuration");
    String str3 = System.getProperty("http.maxConnections");
    if (str2 != null) {}
    for (long l = Long.parseLong(str2); (str1 != null) && (!Boolean.parseBoolean(str1)); l = 300000L)
    {
      bIf = new o(0, l);
      return;
    }
    if (str3 != null)
    {
      bIf = new o(Integer.parseInt(str3), l);
      return;
    }
    bIf = new o(5, l);
  }
  
  public o(int paramInt, long paramLong)
  {
    this(paramInt, paramLong, null);
  }
  
  public o(int paramInt, long paramLong, n paramn)
  {
    this.b = paramInt;
    this.c = (1000L * paramLong * 1000L);
    this.bIn = paramn;
  }
  
  private boolean e()
  {
    int i;
    long l2;
    m localm;
    long l3;
    try
    {
      if (this.bIo.isEmpty()) {
        return false;
      }
      ArrayList localArrayList = new ArrayList();
      i = 0;
      l2 = System.nanoTime();
      l1 = this.c;
      localListIterator = this.bIo.listIterator(this.bIo.size());
      for (;;)
      {
        if (!localListIterator.hasPrevious()) {
          break label154;
        }
        localm = (m)localListIterator.previous();
        l3 = localm.zs() + this.c - l2;
        if ((l3 > 0L) && (localm.e())) {
          break;
        }
        localListIterator.remove();
        localArrayList.add(localm);
      }
      if (!localm.h()) {
        break label318;
      }
    }
    finally {}
    i += 1;
    long l1 = Math.min(l1, l3);
    break label321;
    label154:
    ListIterator localListIterator = this.bIo.listIterator(this.bIo.size());
    label318:
    label321:
    label324:
    for (;;)
    {
      if ((localListIterator.hasPrevious()) && (i > this.b))
      {
        localm = (m)localListIterator.previous();
        if (localm.h())
        {
          ((List)localObject).add(localm);
          localListIterator.remove();
          i -= 1;
          break label324;
        }
      }
      else
      {
        boolean bool = ((List)localObject).isEmpty();
        if (!bool) {}
      }
      try
      {
        l2 = l1 / 1000000L;
        wait(l2, (int)(l1 - 1000000L * l2));
        return true;
      }
      catch (InterruptedException localInterruptedException)
      {
        int j;
        for (;;) {}
      }
      j = ((List)localObject).size();
      i = 0;
      while (i < j)
      {
        i.a(((m)((List)localObject).get(i)).bIi);
        i += 1;
      }
      return true;
      break label324;
      break;
    }
  }
  
  public static o zt()
  {
    return bIf;
  }
  
  public final m a(a parama)
  {
    for (;;)
    {
      try
      {
        ListIterator localListIterator = this.bIo.listIterator(this.bIo.size());
        if (localListIterator.hasPrevious())
        {
          m localm2 = (m)localListIterator.previous();
          if ((localm2.bIg.bFS.equals(parama)) && (localm2.e()) && (System.nanoTime() - localm2.zs() < this.c))
          {
            localListIterator.remove();
            boolean bool = localm2.k();
            m localm1 = localm2;
            if (!bool) {}
            try
            {
              g.zw().a(localm2.bIi);
              localm1 = localm2;
              if ((localm1 != null) && (localm1.k())) {
                this.bIo.addFirst(localm1);
              }
              return localm1;
            }
            catch (SocketException localSocketException)
            {
              i.a(localm2.bIi);
              g.zw();
              g.a("Unable to tagSocket(): " + localSocketException);
            }
          }
        }
        else
        {
          Object localObject = null;
        }
      }
      finally {}
    }
  }
  
  final void a(m paramm)
  {
    boolean bool = this.bIo.isEmpty();
    this.bIo.addFirst(paramm);
    if (bool)
    {
      this.bIp.execute(this.bIq);
      return;
    }
    notifyAll();
  }
  
  public final int c()
  {
    try
    {
      int i = this.bIo.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void d()
  {
    try
    {
      ArrayList localArrayList = new ArrayList(this.bIo);
      this.bIo.clear();
      notifyAll();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        i.a(((m)localArrayList.get(i)).bIi);
        i += 1;
      }
      return;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */