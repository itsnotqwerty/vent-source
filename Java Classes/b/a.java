package b;

import java.io.IOException;
import java.io.InterruptedIOException;

public class a
  extends t
{
  private static a cUt;
  private boolean c;
  private a cUu;
  private long e;
  
  private static a KS()
    throws InterruptedException
  {
    a locala1 = null;
    for (;;)
    {
      a locala2;
      try
      {
        locala2 = cUt.cUu;
        if (locala2 == null)
        {
          a.class.wait();
          return locala1;
        }
        long l1 = System.nanoTime();
        l1 = locala2.e - l1;
        if (l1 > 0L)
        {
          long l2 = l1 / 1000000L;
          a.class.wait(l2, (int)(l1 - 1000000L * l2));
          continue;
        }
        cUt.cUu = locala2.cUu;
      }
      finally {}
      locala2.cUu = null;
      Object localObject2 = locala2;
    }
  }
  
  private static void a(a parama, long paramLong, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (cUt == null)
        {
          cUt = new a();
          new a().start();
        }
        long l = System.nanoTime();
        if ((paramLong != 0L) && (paramBoolean))
        {
          parama.e = (Math.min(paramLong, parama.d() - l) + l);
          paramLong = parama.e;
          locala = cUt;
          if ((locala.cUu != null) && (paramLong - l >= locala.cUu.e - l)) {
            break label177;
          }
          parama.cUu = locala.cUu;
          locala.cUu = parama;
          if (locala == cUt) {
            a.class.notify();
          }
          return;
        }
        if (paramLong != 0L)
        {
          parama.e = (l + paramLong);
          continue;
        }
        if (!paramBoolean) {
          break label169;
        }
      }
      finally {}
      parama.e = parama.d();
      continue;
      label169:
      throw new AssertionError();
      label177:
      a locala = locala.cUu;
    }
  }
  
  /* Error */
  private static boolean a(a parama)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 29	b/a:cUt	Lb/a;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +39 -> 47
    //   11: aload_2
    //   12: getfield 31	b/a:cUu	Lb/a;
    //   15: aload_0
    //   16: if_acmpne +23 -> 39
    //   19: aload_2
    //   20: aload_0
    //   21: getfield 31	b/a:cUu	Lb/a;
    //   24: putfield 31	b/a:cUu	Lb/a;
    //   27: aload_0
    //   28: aconst_null
    //   29: putfield 31	b/a:cUu	Lb/a;
    //   32: iconst_0
    //   33: istore_1
    //   34: ldc 2
    //   36: monitorexit
    //   37: iload_1
    //   38: ireturn
    //   39: aload_2
    //   40: getfield 31	b/a:cUu	Lb/a;
    //   43: astore_2
    //   44: goto -37 -> 7
    //   47: iconst_1
    //   48: istore_1
    //   49: goto -15 -> 34
    //   52: astore_0
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_0
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	parama	a
    //   33	16	1	bool	boolean
    //   6	38	2	locala	a
    // Exception table:
    //   from	to	target	type
    //   3	7	52	finally
    //   11	32	52	finally
    //   39	44	52	finally
  }
  
  public final boolean KR()
  {
    if (!this.c) {
      return false;
    }
    this.c = false;
    return a(this);
  }
  
  protected void a() {}
  
  final void a(boolean paramBoolean)
    throws IOException
  {
    if ((KR()) && (paramBoolean)) {
      throw e(null);
    }
  }
  
  public final void c()
  {
    if (this.c) {
      throw new IllegalStateException("Unbalanced enter/exit");
    }
    long l = Lk();
    boolean bool = Ll();
    if ((l == 0L) && (!bool)) {
      return;
    }
    this.c = true;
    a(this, l, bool);
  }
  
  final IOException d(IOException paramIOException)
    throws IOException
  {
    if (!KR()) {
      return paramIOException;
    }
    return e(paramIOException);
  }
  
  protected IOException e(IOException paramIOException)
  {
    InterruptedIOException localInterruptedIOException = new InterruptedIOException("timeout");
    if (paramIOException != null) {
      localInterruptedIOException.initCause(paramIOException);
    }
    return localInterruptedIOException;
  }
  
  private static final class a
    extends Thread
  {
    public a()
    {
      super();
      setDaemon(true);
    }
    
    public final void run()
    {
      try
      {
        for (;;)
        {
          a locala = a.KT();
          if (locala != null) {
            locala.a();
          }
        }
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */