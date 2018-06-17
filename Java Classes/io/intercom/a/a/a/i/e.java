package io.intercom.a.a.a.i;

import java.util.LinkedHashMap;

public class e<T, Y>
{
  private final long cLw;
  private long cLy = 0L;
  private final LinkedHashMap<T, Y> cQV = new LinkedHashMap(100, 0.75F, true);
  private long maxSize;
  
  public e(long paramLong)
  {
    this.cLw = paramLong;
    this.maxSize = paramLong;
  }
  
  public final void Iw()
  {
    U(0L);
  }
  
  public final long JR()
  {
    try
    {
      long l = this.cLy;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  protected final void U(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 27	io/intercom/a/a/a/i/e:cLy	J
    //   6: lload_1
    //   7: lcmp
    //   8: ifle +83 -> 91
    //   11: aload_0
    //   12: getfield 25	io/intercom/a/a/a/i/e:cQV	Ljava/util/LinkedHashMap;
    //   15: invokevirtual 42	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   18: invokeinterface 48 1 0
    //   23: astore_3
    //   24: aload_3
    //   25: invokeinterface 54 1 0
    //   30: checkcast 56	java/util/Map$Entry
    //   33: astore 5
    //   35: aload 5
    //   37: invokeinterface 59 1 0
    //   42: astore 4
    //   44: aload_0
    //   45: aload_0
    //   46: getfield 27	io/intercom/a/a/a/i/e:cLy	J
    //   49: aload_0
    //   50: aload 4
    //   52: invokevirtual 63	io/intercom/a/a/a/i/e:av	(Ljava/lang/Object;)I
    //   55: i2l
    //   56: lsub
    //   57: putfield 27	io/intercom/a/a/a/i/e:cLy	J
    //   60: aload 5
    //   62: invokeinterface 66 1 0
    //   67: astore 5
    //   69: aload_3
    //   70: invokeinterface 69 1 0
    //   75: aload_0
    //   76: aload 5
    //   78: aload 4
    //   80: invokevirtual 73	io/intercom/a/a/a/i/e:h	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   83: goto -81 -> 2
    //   86: astore_3
    //   87: aload_0
    //   88: monitorexit
    //   89: aload_3
    //   90: athrow
    //   91: aload_0
    //   92: monitorexit
    //   93: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	e
    //   0	94	1	paramLong	long
    //   23	47	3	localIterator	java.util.Iterator
    //   86	4	3	localObject1	Object
    //   42	37	4	localObject2	Object
    //   33	44	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	83	86	finally
  }
  
  protected int av(Y paramY)
  {
    return 1;
  }
  
  public final Y get(T paramT)
  {
    try
    {
      paramT = this.cQV.get(paramT);
      return paramT;
    }
    finally
    {
      paramT = finally;
      throw paramT;
    }
  }
  
  public void h(T paramT, Y paramY) {}
  
  /* Error */
  public final Y put(T paramT, Y paramY)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_2
    //   4: invokevirtual 63	io/intercom/a/a/a/i/e:av	(Ljava/lang/Object;)I
    //   7: i2l
    //   8: aload_0
    //   9: getfield 31	io/intercom/a/a/a/i/e:maxSize	J
    //   12: lcmp
    //   13: iflt +15 -> 28
    //   16: aload_0
    //   17: aload_1
    //   18: aload_2
    //   19: invokevirtual 73	io/intercom/a/a/a/i/e:h	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   22: aconst_null
    //   23: astore_1
    //   24: aload_0
    //   25: monitorexit
    //   26: aload_1
    //   27: areturn
    //   28: aload_0
    //   29: getfield 25	io/intercom/a/a/a/i/e:cQV	Ljava/util/LinkedHashMap;
    //   32: aload_1
    //   33: aload_2
    //   34: invokevirtual 85	java/util/LinkedHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   37: astore_3
    //   38: aload_2
    //   39: ifnull +18 -> 57
    //   42: aload_0
    //   43: aload_0
    //   44: getfield 27	io/intercom/a/a/a/i/e:cLy	J
    //   47: aload_0
    //   48: aload_2
    //   49: invokevirtual 63	io/intercom/a/a/a/i/e:av	(Ljava/lang/Object;)I
    //   52: i2l
    //   53: ladd
    //   54: putfield 27	io/intercom/a/a/a/i/e:cLy	J
    //   57: aload_3
    //   58: ifnull +32 -> 90
    //   61: aload_0
    //   62: aload_0
    //   63: getfield 27	io/intercom/a/a/a/i/e:cLy	J
    //   66: aload_0
    //   67: aload_3
    //   68: invokevirtual 63	io/intercom/a/a/a/i/e:av	(Ljava/lang/Object;)I
    //   71: i2l
    //   72: lsub
    //   73: putfield 27	io/intercom/a/a/a/i/e:cLy	J
    //   76: aload_3
    //   77: aload_2
    //   78: invokevirtual 89	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   81: ifne +9 -> 90
    //   84: aload_0
    //   85: aload_1
    //   86: aload_3
    //   87: invokevirtual 73	io/intercom/a/a/a/i/e:h	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   90: aload_0
    //   91: aload_0
    //   92: getfield 31	io/intercom/a/a/a/i/e:maxSize	J
    //   95: invokevirtual 36	io/intercom/a/a/a/i/e:U	(J)V
    //   98: aload_3
    //   99: astore_1
    //   100: goto -76 -> 24
    //   103: astore_1
    //   104: aload_0
    //   105: monitorexit
    //   106: aload_1
    //   107: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	e
    //   0	108	1	paramT	T
    //   0	108	2	paramY	Y
    //   37	62	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	22	103	finally
    //   28	38	103	finally
    //   42	57	103	finally
    //   61	90	103	finally
    //   90	98	103	finally
  }
  
  public final Y remove(T paramT)
  {
    try
    {
      paramT = this.cQV.remove(paramT);
      if (paramT != null) {
        this.cLy -= av(paramT);
      }
      return paramT;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */