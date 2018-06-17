package com.layer.sdk.internal.lsdkk;

import com.layer.a.a.c;
import java.util.concurrent.TimeUnit;

public class p<T>
{
  private final c a;
  private final long b;
  private T c;
  private long d;
  
  public p(c paramc, long paramLong, T paramT)
  {
    this.a = paramc;
    this.b = TimeUnit.MILLISECONDS.toNanos(paramLong);
    this.c = paramT;
    this.d = 0L;
  }
  
  public T a()
  {
    return (T)this.c;
  }
  
  /* Error */
  public boolean a(T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 20	com/layer/sdk/internal/lsdkk/p:a	Lcom/layer/a/a/c;
    //   6: invokeinterface 47 1 0
    //   11: lstore_2
    //   12: lload_2
    //   13: aload_0
    //   14: getfield 36	com/layer/sdk/internal/lsdkk/p:d	J
    //   17: aload_0
    //   18: getfield 32	com/layer/sdk/internal/lsdkk/p:b	J
    //   21: ladd
    //   22: lcmp
    //   23: ifge +32 -> 55
    //   26: aload_0
    //   27: getfield 34	com/layer/sdk/internal/lsdkk/p:c	Ljava/lang/Object;
    //   30: ifnull +14 -> 44
    //   33: aload_0
    //   34: getfield 34	com/layer/sdk/internal/lsdkk/p:c	Ljava/lang/Object;
    //   37: aload_1
    //   38: invokevirtual 50	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   41: ifeq +14 -> 55
    //   44: aload_0
    //   45: getfield 34	com/layer/sdk/internal/lsdkk/p:c	Ljava/lang/Object;
    //   48: ifnonnull +25 -> 73
    //   51: aload_1
    //   52: ifnull +21 -> 73
    //   55: aload_0
    //   56: aload_1
    //   57: putfield 34	com/layer/sdk/internal/lsdkk/p:c	Ljava/lang/Object;
    //   60: aload_0
    //   61: lload_2
    //   62: putfield 36	com/layer/sdk/internal/lsdkk/p:d	J
    //   65: iconst_1
    //   66: istore 4
    //   68: aload_0
    //   69: monitorexit
    //   70: iload 4
    //   72: ireturn
    //   73: iconst_0
    //   74: istore 4
    //   76: goto -8 -> 68
    //   79: astore_1
    //   80: aload_0
    //   81: monitorexit
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	p
    //   0	84	1	paramT	T
    //   11	51	2	l	long
    //   66	9	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	44	79	finally
    //   44	51	79	finally
    //   55	65	79	finally
  }
  
  public void b()
  {
    try
    {
      this.c = null;
      this.d = 0L;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */