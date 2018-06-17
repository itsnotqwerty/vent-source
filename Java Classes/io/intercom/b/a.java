package io.intercom.b;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public class a
  extends t
{
  private static final long IDLE_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(60L);
  private static final long IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(IDLE_TIMEOUT_MILLIS);
  private static final int TIMEOUT_WRITE_SIZE = 65536;
  @Nullable
  static a head;
  private boolean inQueue;
  @Nullable
  private a next;
  private long timeoutAt;
  
  @Nullable
  static a awaitTimeout()
    throws InterruptedException
  {
    Object localObject2 = null;
    Object localObject1 = head.next;
    if (localObject1 == null)
    {
      l1 = System.nanoTime();
      a.class.wait(IDLE_TIMEOUT_MILLIS);
      localObject1 = localObject2;
      if (head.next == null)
      {
        localObject1 = localObject2;
        if (System.nanoTime() - l1 >= IDLE_TIMEOUT_NANOS) {
          localObject1 = head;
        }
      }
      return (a)localObject1;
    }
    long l1 = ((a)localObject1).remainingNanos(System.nanoTime());
    if (l1 > 0L)
    {
      long l2 = l1 / 1000000L;
      a.class.wait(l2, (int)(l1 - 1000000L * l2));
      return null;
    }
    head.next = ((a)localObject1).next;
    ((a)localObject1).next = null;
    return (a)localObject1;
  }
  
  /* Error */
  private static boolean cancelScheduledTimeout(a parama)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 58	io/intercom/b/a:head	Lio/intercom/b/a;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +39 -> 47
    //   11: aload_2
    //   12: getfield 60	io/intercom/b/a:next	Lio/intercom/b/a;
    //   15: aload_0
    //   16: if_acmpne +23 -> 39
    //   19: aload_2
    //   20: aload_0
    //   21: getfield 60	io/intercom/b/a:next	Lio/intercom/b/a;
    //   24: putfield 60	io/intercom/b/a:next	Lio/intercom/b/a;
    //   27: aload_0
    //   28: aconst_null
    //   29: putfield 60	io/intercom/b/a:next	Lio/intercom/b/a;
    //   32: iconst_0
    //   33: istore_1
    //   34: ldc 2
    //   36: monitorexit
    //   37: iload_1
    //   38: ireturn
    //   39: aload_2
    //   40: getfield 60	io/intercom/b/a:next	Lio/intercom/b/a;
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
  
  private long remainingNanos(long paramLong)
  {
    return this.timeoutAt - paramLong;
  }
  
  private static void scheduleTimeout(a parama, long paramLong, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (head == null)
        {
          head = new a();
          new a().start();
        }
        long l = System.nanoTime();
        if ((paramLong != 0L) && (paramBoolean))
        {
          parama.timeoutAt = (Math.min(paramLong, parama.deadlineNanoTime() - l) + l);
          paramLong = parama.remainingNanos(l);
          locala = head;
          if ((locala.next != null) && (paramLong >= locala.next.remainingNanos(l))) {
            break label175;
          }
          parama.next = locala.next;
          locala.next = parama;
          if (locala == head) {
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
          break label167;
        }
      }
      finally {}
      parama.timeoutAt = parama.deadlineNanoTime();
      continue;
      label167:
      throw new AssertionError();
      label175:
      a locala = locala.next;
    }
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
    scheduleTimeout(this, l, bool);
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
    return cancelScheduledTimeout(this);
  }
  
  protected IOException newTimeoutException(@Nullable IOException paramIOException)
  {
    InterruptedIOException localInterruptedIOException = new InterruptedIOException("timeout");
    if (paramIOException != null) {
      localInterruptedIOException.initCause(paramIOException);
    }
    return localInterruptedIOException;
  }
  
  public final r sink(final r paramr)
  {
    new r()
    {
      public final void close()
        throws IOException
      {
        a.this.enter();
        try
        {
          paramr.close();
          a.this.exit(true);
          return;
        }
        catch (IOException localIOException)
        {
          throw a.this.exit(localIOException);
        }
        finally
        {
          a.this.exit(false);
        }
      }
      
      public final void flush()
        throws IOException
      {
        a.this.enter();
        try
        {
          paramr.flush();
          a.this.exit(true);
          return;
        }
        catch (IOException localIOException)
        {
          throw a.this.exit(localIOException);
        }
        finally
        {
          a.this.exit(false);
        }
      }
      
      public final t timeout()
      {
        return a.this;
      }
      
      public final String toString()
      {
        return "AsyncTimeout.sink(" + paramr + ")";
      }
      
      public final void write(c paramAnonymousc, long paramAnonymousLong)
        throws IOException
      {
        u.checkOffsetAndCount(paramAnonymousc.size, 0L, paramAnonymousLong);
        if (paramAnonymousLong > 0L)
        {
          o localo = paramAnonymousc.cTW;
          long l1 = 0L;
          for (;;)
          {
            long l2 = l1;
            if (l1 < 65536L)
            {
              l1 += localo.limit - localo.pos;
              if (l1 >= paramAnonymousLong) {
                l2 = paramAnonymousLong;
              }
            }
            else
            {
              a.this.enter();
            }
            try
            {
              paramr.write(paramAnonymousc, l2);
              paramAnonymousLong -= l2;
              a.this.exit(true);
              break;
            }
            catch (IOException paramAnonymousc)
            {
              throw a.this.exit(paramAnonymousc);
            }
            finally
            {
              a.this.exit(false);
            }
            localo = localo.cUo;
          }
        }
      }
    };
  }
  
  public final s source(final s params)
  {
    new s()
    {
      public final void close()
        throws IOException
      {
        try
        {
          params.close();
          a.this.exit(true);
          return;
        }
        catch (IOException localIOException)
        {
          throw a.this.exit(localIOException);
        }
        finally
        {
          a.this.exit(false);
        }
      }
      
      public final long read(c paramAnonymousc, long paramAnonymousLong)
        throws IOException
      {
        a.this.enter();
        try
        {
          paramAnonymousLong = params.read(paramAnonymousc, paramAnonymousLong);
          a.this.exit(true);
          return paramAnonymousLong;
        }
        catch (IOException paramAnonymousc)
        {
          throw a.this.exit(paramAnonymousc);
        }
        finally
        {
          a.this.exit(false);
        }
      }
      
      public final t timeout()
      {
        return a.this;
      }
      
      public final String toString()
      {
        return "AsyncTimeout.source(" + params + ")";
      }
    };
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
            a locala = a.awaitTimeout();
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
        if (localInterruptedException == a.head)
        {
          a.head = null;
          return;
        }
        localInterruptedException.timedOut();
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */