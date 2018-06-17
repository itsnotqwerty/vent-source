package io.intercom.a.a.a.f;

import io.intercom.a.a.a.c.l;
import java.util.ArrayList;
import java.util.List;

public final class f
{
  private final List<a<?>> cPB = new ArrayList();
  
  /* Error */
  public final <Z> l<Z> J(Class<Z> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 19	io/intercom/a/a/a/f/f:cPB	Ljava/util/List;
    //   6: invokeinterface 28 1 0
    //   11: istore_3
    //   12: iconst_0
    //   13: istore_2
    //   14: iload_2
    //   15: iload_3
    //   16: if_icmpge +47 -> 63
    //   19: aload_0
    //   20: getfield 19	io/intercom/a/a/a/f/f:cPB	Ljava/util/List;
    //   23: iload_2
    //   24: invokeinterface 32 2 0
    //   29: checkcast 6	io/intercom/a/a/a/f/f$a
    //   32: astore 4
    //   34: aload 4
    //   36: getfield 36	io/intercom/a/a/a/f/f$a:cJb	Ljava/lang/Class;
    //   39: aload_1
    //   40: invokevirtual 42	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   43: ifeq +13 -> 56
    //   46: aload 4
    //   48: getfield 46	io/intercom/a/a/a/f/f$a:cJH	Lio/intercom/a/a/a/c/l;
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: areturn
    //   56: iload_2
    //   57: iconst_1
    //   58: iadd
    //   59: istore_2
    //   60: goto -46 -> 14
    //   63: aconst_null
    //   64: astore_1
    //   65: goto -13 -> 52
    //   68: astore_1
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	f
    //   0	73	1	paramClass	Class<Z>
    //   13	47	2	i	int
    //   11	6	3	j	int
    //   32	15	4	locala	a
    // Exception table:
    //   from	to	target	type
    //   2	12	68	finally
    //   19	52	68	finally
  }
  
  public final <Z> void b(Class<Z> paramClass, l<Z> paraml)
  {
    try
    {
      this.cPB.add(new a(paramClass, paraml));
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  private static final class a<T>
  {
    final l<T> cJH;
    final Class<T> cJb;
    
    a(Class<T> paramClass, l<T> paraml)
    {
      this.cJb = paramClass;
      this.cJH = paraml;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/f/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */