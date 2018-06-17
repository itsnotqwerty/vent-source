package com.b.a;

import com.b.a.a.a.g;
import com.b.a.a.i;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class r
{
  private int a = 64;
  private int b = 5;
  private ExecutorService bLP;
  private final Deque<h.b> bLQ = new ArrayDeque();
  private final Deque<h.b> bLR = new ArrayDeque();
  private final Deque<h> bLS = new ArrayDeque();
  
  public r() {}
  
  public r(ExecutorService paramExecutorService)
  {
    this.bLP = paramExecutorService;
  }
  
  private ExecutorService Aa()
  {
    try
    {
      if (this.bLP == null) {
        this.bLP = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), i.g("OkHttp Dispatcher", false));
      }
      ExecutorService localExecutorService = this.bLP;
      return localExecutorService;
    }
    finally {}
  }
  
  private void b()
  {
    if (this.bLR.size() >= this.a) {}
    do
    {
      Iterator localIterator;
      do
      {
        return;
        while (this.bLQ.isEmpty()) {}
        localIterator = this.bLQ.iterator();
      } while (!localIterator.hasNext());
      h.b localb = (h.b)localIterator.next();
      if (c(localb) < this.b)
      {
        localIterator.remove();
        this.bLR.add(localb);
        Aa().execute(localb);
      }
    } while (this.bLR.size() < this.a);
  }
  
  private int c(h.b paramb)
  {
    Iterator localIterator = this.bLR.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      if (!((h.b)localIterator.next()).a().equals(paramb.a())) {
        break label52;
      }
      i += 1;
    }
    label52:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public final void a(int paramInt)
  {
    if (paramInt <= 0) {
      try
      {
        throw new IllegalArgumentException("max < 1: " + paramInt);
      }
      finally {}
    }
    this.a = paramInt;
    b();
  }
  
  /* Error */
  final void a(h.b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 30	com/b/a/r:bLR	Ljava/util/Deque;
    //   6: invokeinterface 69 1 0
    //   11: aload_0
    //   12: getfield 21	com/b/a/r:a	I
    //   15: if_icmpge +39 -> 54
    //   18: aload_0
    //   19: aload_1
    //   20: invokespecial 92	com/b/a/r:c	(Lcom/b/a/h$b;)I
    //   23: aload_0
    //   24: getfield 23	com/b/a/r:b	I
    //   27: if_icmpge +27 -> 54
    //   30: aload_0
    //   31: getfield 30	com/b/a/r:bLR	Ljava/util/Deque;
    //   34: aload_1
    //   35: invokeinterface 99 2 0
    //   40: pop
    //   41: aload_0
    //   42: invokespecial 101	com/b/a/r:Aa	()Ljava/util/concurrent/ExecutorService;
    //   45: aload_1
    //   46: invokeinterface 107 2 0
    //   51: aload_0
    //   52: monitorexit
    //   53: return
    //   54: aload_0
    //   55: getfield 28	com/b/a/r:bLQ	Ljava/util/Deque;
    //   58: aload_1
    //   59: invokeinterface 99 2 0
    //   64: pop
    //   65: goto -14 -> 51
    //   68: astore_1
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	r
    //   0	73	1	paramb	h.b
    // Exception table:
    //   from	to	target	type
    //   2	51	68	finally
    //   54	65	68	finally
  }
  
  final void a(h paramh)
  {
    try
    {
      this.bLS.add(paramh);
      return;
    }
    finally
    {
      paramh = finally;
      throw paramh;
    }
  }
  
  public final void a(Object paramObject)
  {
    Object localObject;
    try
    {
      localIterator = this.bLQ.iterator();
      while (localIterator.hasNext())
      {
        localObject = (h.b)localIterator.next();
        if (i.a(paramObject, ((h.b)localObject).zr())) {
          ((h.b)localObject).bGi.c();
        }
      }
      localIterator = this.bLR.iterator();
    }
    finally {}
    while (localIterator.hasNext())
    {
      localObject = (h.b)localIterator.next();
      if (i.a(paramObject, ((h.b)localObject).zr()))
      {
        ((h.b)localObject).bGi.a = true;
        localObject = ((h.b)localObject).bGi.bGg;
        if (localObject != null) {
          ((g)localObject).i();
        }
      }
    }
    Iterator localIterator = this.bLS.iterator();
    while (localIterator.hasNext())
    {
      localObject = (h)localIterator.next();
      if (i.a(paramObject, ((h)localObject).bGf.bMq)) {
        ((h)localObject).c();
      }
    }
  }
  
  public final void b(int paramInt)
  {
    if (paramInt <= 0) {
      try
      {
        throw new IllegalArgumentException("max < 1: " + paramInt);
      }
      finally {}
    }
    this.b = paramInt;
    b();
  }
  
  final void b(h.b paramb)
  {
    try
    {
      if (!this.bLR.remove(paramb)) {
        throw new AssertionError("AsyncCall wasn't running!");
      }
    }
    finally {}
    b();
  }
  
  final void b(h paramh)
  {
    try
    {
      if (!this.bLS.remove(paramh)) {
        throw new AssertionError("Call wasn't in-flight!");
      }
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */