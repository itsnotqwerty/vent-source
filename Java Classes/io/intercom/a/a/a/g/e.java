package io.intercom.a.a.a.g;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.c.b.p;
import io.intercom.a.a.a.g.a.g;
import io.intercom.a.a.a.g.a.h;
import io.intercom.a.a.a.g.b.d;
import io.intercom.a.a.a.i.i;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class e<R>
  implements b<R>, f<R>, Runnable
{
  private static final b cPL = new b();
  private boolean cIs;
  private p cKE;
  private R cNq;
  private final boolean cPM;
  private final b cPN;
  private boolean cPO;
  private boolean cPP;
  private final int height;
  private final Handler mainHandler;
  private c request;
  private final int width;
  
  public e(Handler paramHandler, int paramInt1, int paramInt2)
  {
    this(paramHandler, paramInt1, paramInt2, cPL);
  }
  
  private e(Handler paramHandler, int paramInt1, int paramInt2, b paramb)
  {
    this.mainHandler = paramHandler;
    this.width = paramInt1;
    this.height = paramInt2;
    this.cPM = true;
    this.cPN = paramb;
  }
  
  private R h(Long paramLong)
    throws ExecutionException, InterruptedException, TimeoutException
  {
    try
    {
      if ((this.cPM) && (!isDone())) {
        i.JT();
      }
      if (this.cIs) {
        throw new CancellationException();
      }
    }
    finally {}
    if (this.cPP) {
      throw new ExecutionException(this.cKE);
    }
    if (this.cPO) {}
    for (paramLong = this.cNq;; paramLong = this.cNq)
    {
      return paramLong;
      if (paramLong == null) {
        wait(0L);
      }
      while (Thread.interrupted())
      {
        throw new InterruptedException();
        if (paramLong.longValue() > 0L) {
          wait(paramLong.longValue());
        }
      }
      if (this.cPP) {
        throw new a(this.cKE);
      }
      if (this.cIs) {
        throw new CancellationException();
      }
      if (!this.cPO) {
        throw new TimeoutException();
      }
    }
  }
  
  /* Error */
  public final boolean cancel(boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: invokevirtual 72	io/intercom/a/a/a/g/e:isDone	()Z
    //   8: istore_2
    //   9: iload_2
    //   10: ifeq +9 -> 19
    //   13: iconst_0
    //   14: istore_2
    //   15: aload_0
    //   16: monitorexit
    //   17: iload_2
    //   18: ireturn
    //   19: aload_0
    //   20: iconst_1
    //   21: putfield 79	io/intercom/a/a/a/g/e:cIs	Z
    //   24: aload_0
    //   25: invokevirtual 121	java/lang/Object:notifyAll	()V
    //   28: iload_3
    //   29: istore_2
    //   30: iload_1
    //   31: ifeq -16 -> 15
    //   34: aload_0
    //   35: getfield 52	io/intercom/a/a/a/g/e:mainHandler	Landroid/os/Handler;
    //   38: aload_0
    //   39: invokevirtual 127	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   42: pop
    //   43: iload_3
    //   44: istore_2
    //   45: goto -30 -> 15
    //   48: astore 4
    //   50: aload_0
    //   51: monitorexit
    //   52: aload 4
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	e
    //   0	55	1	paramBoolean	boolean
    //   8	37	2	bool1	boolean
    //   1	43	3	bool2	boolean
    //   48	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	9	48	finally
    //   19	28	48	finally
    //   34	43	48	finally
  }
  
  public final R get()
    throws InterruptedException, ExecutionException
  {
    try
    {
      Object localObject = h(null);
      return (R)localObject;
    }
    catch (TimeoutException localTimeoutException)
    {
      throw new AssertionError(localTimeoutException);
    }
  }
  
  public final R get(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    return (R)h(Long.valueOf(paramTimeUnit.toMillis(paramLong)));
  }
  
  public final c getRequest()
  {
    return this.request;
  }
  
  public final void getSize(g paramg)
  {
    paramg.aP(this.width, this.height);
  }
  
  public final boolean isCancelled()
  {
    try
    {
      boolean bool = this.cIs;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final boolean isDone()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 79	io/intercom/a/a/a/g/e:cIs	Z
    //   6: ifne +19 -> 25
    //   9: aload_0
    //   10: getfield 91	io/intercom/a/a/a/g/e:cPO	Z
    //   13: ifne +12 -> 25
    //   16: aload_0
    //   17: getfield 84	io/intercom/a/a/a/g/e:cPP	Z
    //   20: istore_1
    //   21: iload_1
    //   22: ifeq +9 -> 31
    //   25: iconst_1
    //   26: istore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: iload_1
    //   30: ireturn
    //   31: iconst_0
    //   32: istore_1
    //   33: goto -6 -> 27
    //   36: astore_2
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_2
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	e
    //   20	13	1	bool	boolean
    //   36	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	21	36	finally
  }
  
  public final void onDestroy() {}
  
  public final void onLoadCleared(Drawable paramDrawable) {}
  
  public final void onLoadFailed(Drawable paramDrawable) {}
  
  public final boolean onLoadFailed(p paramp, Object paramObject, h<R> paramh, boolean paramBoolean)
  {
    try
    {
      this.cPP = true;
      this.cKE = paramp;
      notifyAll();
      return false;
    }
    finally
    {
      paramp = finally;
      throw paramp;
    }
  }
  
  public final void onLoadStarted(Drawable paramDrawable) {}
  
  public final void onResourceReady(R paramR, d<? super R> paramd) {}
  
  public final boolean onResourceReady(R paramR, Object paramObject, h<R> paramh, a parama, boolean paramBoolean)
  {
    try
    {
      this.cPO = true;
      this.cNq = paramR;
      notifyAll();
      return false;
    }
    finally
    {
      paramR = finally;
      throw paramR;
    }
  }
  
  public final void onStart() {}
  
  public final void onStop() {}
  
  public final void removeCallback(g paramg) {}
  
  public final void run()
  {
    if (this.request != null)
    {
      this.request.clear();
      this.request = null;
    }
  }
  
  public final void setRequest(c paramc)
  {
    this.request = paramc;
  }
  
  private static final class a
    extends ExecutionException
  {
    private final p cPQ;
    
    a(p paramp)
    {
      this.cPQ = paramp;
    }
    
    public final void printStackTrace()
    {
      printStackTrace(System.err);
    }
    
    public final void printStackTrace(PrintStream paramPrintStream)
    {
      super.printStackTrace(paramPrintStream);
      paramPrintStream.print("Caused by: ");
      this.cPQ.printStackTrace(paramPrintStream);
    }
    
    public final void printStackTrace(PrintWriter paramPrintWriter)
    {
      super.printStackTrace(paramPrintWriter);
      paramPrintWriter.print("Caused by: ");
      this.cPQ.printStackTrace(paramPrintWriter);
    }
  }
  
  static final class b {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/g/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */