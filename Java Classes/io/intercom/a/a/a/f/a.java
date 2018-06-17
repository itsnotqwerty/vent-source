package io.intercom.a.a.a.f;

import io.intercom.a.a.a.c.d;
import java.util.ArrayList;
import java.util.List;

public final class a
{
  private final List<a<?>> cPB = new ArrayList();
  
  /* Error */
  public final <T> d<T> I(Class<T> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 19	io/intercom/a/a/a/f/a:cPB	Ljava/util/List;
    //   6: invokeinterface 28 1 0
    //   11: astore_2
    //   12: aload_2
    //   13: invokeinterface 34 1 0
    //   18: ifeq +33 -> 51
    //   21: aload_2
    //   22: invokeinterface 38 1 0
    //   27: checkcast 6	io/intercom/a/a/a/f/a$a
    //   30: astore_3
    //   31: aload_3
    //   32: getfield 42	io/intercom/a/a/a/f/a$a:csM	Ljava/lang/Class;
    //   35: aload_1
    //   36: invokevirtual 48	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   39: ifeq -27 -> 12
    //   42: aload_3
    //   43: getfield 52	io/intercom/a/a/a/f/a$a:cIY	Lio/intercom/a/a/a/c/d;
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: areturn
    //   51: aconst_null
    //   52: astore_1
    //   53: goto -6 -> 47
    //   56: astore_1
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_1
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	a
    //   0	61	1	paramClass	Class<T>
    //   11	11	2	localIterator	java.util.Iterator
    //   30	13	3	locala	a
    // Exception table:
    //   from	to	target	type
    //   2	12	56	finally
    //   12	47	56	finally
  }
  
  public final <T> void b(Class<T> paramClass, d<T> paramd)
  {
    try
    {
      this.cPB.add(new a(paramClass, paramd));
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
    final d<T> cIY;
    final Class<T> csM;
    
    a(Class<T> paramClass, d<T> paramd)
    {
      this.csM = paramClass;
      this.cIY = paramd;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/f/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */