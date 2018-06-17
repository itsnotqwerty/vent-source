package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.c.a;
import io.intercom.a.b.a.d.c;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.r;
import io.intercom.a.b.a.s;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public final class j
  extends r<Date>
{
  public static final s cRW = new s()
  {
    public final <T> r<T> a(e paramAnonymouse, a<T> paramAnonymousa)
    {
      if (paramAnonymousa.bkb == Date.class) {
        return new j();
      }
      return null;
    }
  };
  private final DateFormat biy = new SimpleDateFormat("MMM d, yyyy");
  
  private void a(c paramc, Date paramDate)
    throws IOException
  {
    if (paramDate == null) {}
    for (paramDate = null;; paramDate = this.biy.format(paramDate)) {
      try
      {
        paramc.fe(paramDate);
        return;
      }
      finally {}
    }
  }
  
  /* Error */
  private Date d(io.intercom.a.b.a.d.a parama)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 56	io/intercom/a/b/a/d/a:Kh	()Lio/intercom/a/b/a/d/b;
    //   6: getstatic 62	io/intercom/a/b/a/d/b:cTE	Lio/intercom/a/b/a/d/b;
    //   9: if_acmpne +13 -> 22
    //   12: aload_1
    //   13: invokevirtual 65	io/intercom/a/b/a/d/a:nextNull	()V
    //   16: aconst_null
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: areturn
    //   22: new 67	java/sql/Date
    //   25: dup
    //   26: aload_0
    //   27: getfield 29	io/intercom/a/b/a/b/a/j:biy	Ljava/text/DateFormat;
    //   30: aload_1
    //   31: invokevirtual 71	io/intercom/a/b/a/d/a:nextString	()Ljava/lang/String;
    //   34: invokevirtual 75	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   37: invokevirtual 81	java/util/Date:getTime	()J
    //   40: invokespecial 84	java/sql/Date:<init>	(J)V
    //   43: astore_1
    //   44: goto -26 -> 18
    //   47: astore_1
    //   48: new 86	io/intercom/a/b/a/p
    //   51: dup
    //   52: aload_1
    //   53: invokespecial 89	io/intercom/a/b/a/p:<init>	(Ljava/lang/Throwable;)V
    //   56: athrow
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	j
    //   0	62	1	parama	io.intercom.a.b.a.d.a
    // Exception table:
    //   from	to	target	type
    //   22	44	47	java/text/ParseException
    //   2	16	57	finally
    //   22	44	57	finally
    //   48	57	57	finally
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */