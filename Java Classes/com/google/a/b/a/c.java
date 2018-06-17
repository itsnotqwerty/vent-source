package com.google.a.b.a;

import com.google.a.b.e;
import com.google.a.b.j;
import com.google.a.c.a;
import com.google.a.f;
import com.google.a.u;
import com.google.a.v;
import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public final class c
  extends u<Date>
{
  public static final v bhS = new v()
  {
    public final <T> u<T> a(f paramAnonymousf, a<T> paramAnonymousa)
    {
      if (paramAnonymousa.bkb == Date.class) {
        return new c();
      }
      return null;
    }
  };
  private final List<DateFormat> bgh = new ArrayList();
  
  public c()
  {
    this.bgh.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
    if (!Locale.getDefault().equals(Locale.US)) {
      this.bgh.add(DateFormat.getDateTimeInstance(2, 2));
    }
    if (e.vs()) {
      this.bgh.add(j.az(2, 2));
    }
  }
  
  private void a(com.google.a.d.c paramc, Date paramDate)
    throws IOException
  {
    if (paramDate == null) {}
    for (;;)
    {
      try
      {
        paramc.vF();
        return;
      }
      finally {}
      paramc.dp(((DateFormat)this.bgh.get(0)).format(paramDate));
    }
  }
  
  /* Error */
  private Date dk(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 26	com/google/a/b/a/c:bgh	Ljava/util/List;
    //   6: invokeinterface 96 1 0
    //   11: astore_3
    //   12: aload_3
    //   13: invokeinterface 101 1 0
    //   18: ifeq +25 -> 43
    //   21: aload_3
    //   22: invokeinterface 105 1 0
    //   27: checkcast 34	java/text/DateFormat
    //   30: astore_2
    //   31: aload_2
    //   32: aload_1
    //   33: invokevirtual 108	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   36: astore_2
    //   37: aload_2
    //   38: astore_1
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: areturn
    //   43: aload_1
    //   44: new 110	java/text/ParsePosition
    //   47: dup
    //   48: iconst_0
    //   49: invokespecial 113	java/text/ParsePosition:<init>	(I)V
    //   52: invokestatic 118	com/google/a/b/a/a/a:parse	(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    //   55: astore_2
    //   56: aload_2
    //   57: astore_1
    //   58: goto -19 -> 39
    //   61: astore_2
    //   62: new 120	com/google/a/s
    //   65: dup
    //   66: aload_1
    //   67: aload_2
    //   68: invokespecial 123	com/google/a/s:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   71: athrow
    //   72: astore_1
    //   73: aload_0
    //   74: monitorexit
    //   75: aload_1
    //   76: athrow
    //   77: astore_2
    //   78: goto -66 -> 12
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	this	c
    //   0	81	1	paramString	String
    //   30	27	2	localObject	Object
    //   61	7	2	localParseException1	java.text.ParseException
    //   77	1	2	localParseException2	java.text.ParseException
    //   11	11	3	localIterator	java.util.Iterator
    // Exception table:
    //   from	to	target	type
    //   43	56	61	java/text/ParseException
    //   2	12	72	finally
    //   12	31	72	finally
    //   31	37	72	finally
    //   43	56	72	finally
    //   62	72	72	finally
    //   31	37	77	java/text/ParseException
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */