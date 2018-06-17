package d;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public class a
  extends t
{
  private static final long IDLE_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(60L);
  private static final long IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(IDLE_TIMEOUT_MILLIS);
  @Nullable
  static a dbU;
  @Nullable
  private a dbV;
  private boolean inQueue;
  private long timeoutAt;
  
  @Nullable
  static a Ni()
    throws InterruptedException
  {
    Object localObject2 = null;
    Object localObject1 = dbU.dbV;
    if (localObject1 == null)
    {
      l1 = System.nanoTime();
      a.class.wait(IDLE_TIMEOUT_MILLIS);
      localObject1 = localObject2;
      if (dbU.dbV == null)
      {
        localObject1 = localObject2;
        if (System.nanoTime() - l1 >= IDLE_TIMEOUT_NANOS) {
          localObject1 = dbU;
        }
      }
      return (a)localObject1;
    }
    long l1 = System.nanoTime();
    l1 = ((a)localObject1).timeoutAt - l1;
    if (l1 > 0L)
    {
      long l2 = l1 / 1000000L;
      a.class.wait(l2, (int)(l1 - 1000000L * l2));
      return null;
    }
    dbU.dbV = ((a)localObject1).dbV;
    ((a)localObject1).dbV = null;
    return (a)localObject1;
  }
  
  private static void a(a parama, long paramLong, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (dbU == null)
        {
          dbU = new a();
          new a().start();
        }
        long l = System.nanoTime();
        if ((paramLong != 0L) && (paramBoolean))
        {
          parama.timeoutAt = (Math.min(paramLong, parama.deadlineNanoTime() - l) + l);
          paramLong = parama.timeoutAt;
          locala = dbU;
          if ((locala.dbV != null) && (paramLong - l >= locala.dbV.timeoutAt - l)) {
            break label177;
          }
          parama.dbV = locala.dbV;
          locala.dbV = parama;
          if (locala == dbU) {
            a.class.notify();
          }
          return;
        }
        if (paramLong != 0L)
        {
          parama.timeoutAt = (l + paramLong);
          continue;
        }
        if (!paramBoolean) {
          break label169;
        }
      }
      finally {}
      parama.timeoutAt = parama.deadlineNanoTime();
      continue;
      label169:
      throw new AssertionError();
      label177:
      a locala = locala.dbV;
    }
  }
  
  /* Error */
  private static boolean a(a parama)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 55	d/a:dbU	Ld/a;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +39 -> 47
    //   11: aload_2
    //   12: getfield 57	d/a:dbV	Ld/a;
    //   15: aload_0
    //   16: if_acmpne +23 -> 39
    //   19: aload_2
    //   20: aload_0
    //   21: getfield 57	d/a:dbV	Ld/a;
    //   24: putfield 57	d/a:dbV	Ld/a;
    //   27: aload_0
    //   28: aconst_null
    //   29: putfield 57	d/a:dbV	Ld/a;
    //   32: iconst_0
    //   33: istore_1
    //   34: ldc 2
    //   36: monitorexit
    //   37: iload_1
    //   38: ireturn
    //   39: aload_2
    //   40: getfield 57	d/a:dbV	Ld/a;
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
  
  public final void enter()
  {
    if (this.inQueue) {
      throw new IllegalStateException("Unbalanced enter/exit");
    }
    long l = timeoutNanos();
    boolean bool = hasDeadline();
    if ((l == 0L) && (!bool)) {
      return;
    }
    this.inQueue = true;
    a(this, l, bool);
  }
  
  final IOException exit(IOException paramIOException)
    throws IOException
  {
    if (!exit()) {
      return paramIOException;
    }
    return newTimeoutException(paramIOException);
  }
  
  final void exit(boolean paramBoolean)
    throws IOException
  {
    if ((exit()) && (paramBoolean)) {
      throw newTimeoutException(null);
    }
  }
  
  public final boolean exit()
  {
    if (!this.inQueue) {
      return false;
    }
    this.inQueue = false;
    return a(this);
  }
  
  protected IOException newTimeoutException(@Nullable IOException paramIOException)
  {
    InterruptedIOException localInterruptedIOException = new InterruptedIOException("timeout");
    if (paramIOException != null) {
      localInterruptedIOException.initCause(paramIOException);
    }
    return localInterruptedIOException;
  }
  
  protected void timedOut() {}
  
  private static final class a
    extends Thread
  {
    a()
    {
      super();
      setDaemon(true);
    }
    
    public final void run()
    {
      for (;;)
      {
        try
        {
          try
          {
            a locala = a.Ni();
            if (locala != null) {
              break label27;
            }
            continue;
          }
          finally {}
          continue;
        }
        catch (InterruptedException localInterruptedException) {}
        label27:
        if (localInterruptedException == a.dbU)
        {
          a.dbU = null;
          return;
        }
        localInterruptedException.timedOut();
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */