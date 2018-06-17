package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;

final class hx<V>
  extends FutureTask<V>
  implements Comparable<hx>
{
  private final String aUF;
  private final long aUH;
  final boolean aUI;
  
  hx(hu paramhu, Runnable paramRunnable, String paramString)
  {
    super(paramRunnable, null);
    ae.E(paramString);
    this.aUH = hu.rT().getAndIncrement();
    this.aUF = paramString;
    this.aUI = false;
    if (this.aUH == Long.MAX_VALUE) {
      paramhu.qP().aTa.bq("Tasks index overflow");
    }
  }
  
  hx(Callable<V> paramCallable, boolean paramBoolean, String paramString)
  {
    super(paramBoolean);
    Object localObject;
    ae.E(localObject);
    this.aUH = hu.rT().getAndIncrement();
    this.aUF = ((String)localObject);
    this.aUI = paramString;
    if (this.aUH == Long.MAX_VALUE) {
      paramCallable.qP().aTa.bq("Tasks index overflow");
    }
  }
  
  protected final void setException(Throwable paramThrowable)
  {
    this.aUG.qP().aTa.j(this.aUF, paramThrowable);
    if ((paramThrowable instanceof hv)) {
      Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), paramThrowable);
    }
    super.setException(paramThrowable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */