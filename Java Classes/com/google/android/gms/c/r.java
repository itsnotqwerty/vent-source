package com.google.android.gms.c;

import com.google.android.gms.common.internal.ae;
import java.util.concurrent.Executor;

public final class r<TResult>
  extends e<TResult>
{
  private final p<TResult> bei = new p();
  private boolean bej;
  private TResult bek;
  private Exception bel;
  private final Object mLock = new Object();
  
  private final void uj()
  {
    if (!this.bej) {}
    for (boolean bool = true;; bool = false)
    {
      ae.a(bool, "Task is already complete");
      return;
    }
  }
  
  private final void uk()
  {
    synchronized (this.mLock)
    {
      if (!this.bej) {
        return;
      }
      this.bei.c(this);
      return;
    }
  }
  
  public final void N(TResult paramTResult)
  {
    synchronized (this.mLock)
    {
      uj();
      this.bej = true;
      this.bek = paramTResult;
      this.bei.c(this);
      return;
    }
  }
  
  public final boolean X(TResult paramTResult)
  {
    synchronized (this.mLock)
    {
      if (this.bej) {
        return false;
      }
      this.bej = true;
      this.bek = paramTResult;
      this.bei.c(this);
      return true;
    }
  }
  
  public final e<TResult> a(Executor paramExecutor, a<TResult> parama)
  {
    this.bei.a(new i(paramExecutor, parama));
    uk();
    return this;
  }
  
  public final e<TResult> a(Executor paramExecutor, b paramb)
  {
    this.bei.a(new k(paramExecutor, paramb));
    uk();
    return this;
  }
  
  public final e<TResult> a(Executor paramExecutor, c<? super TResult> paramc)
  {
    this.bei.a(new m(paramExecutor, paramc));
    uk();
    return this;
  }
  
  public final void e(Exception paramException)
  {
    ae.g(paramException, "Exception must not be null");
    synchronized (this.mLock)
    {
      uj();
      this.bej = true;
      this.bel = paramException;
      this.bei.c(this);
      return;
    }
  }
  
  public final boolean f(Exception paramException)
  {
    ae.g(paramException, "Exception must not be null");
    synchronized (this.mLock)
    {
      if (this.bej) {
        return false;
      }
      this.bej = true;
      this.bel = paramException;
      this.bei.c(this);
      return true;
    }
  }
  
  public final Exception getException()
  {
    synchronized (this.mLock)
    {
      Exception localException = this.bel;
      return localException;
    }
  }
  
  public final TResult getResult()
  {
    synchronized (this.mLock)
    {
      ae.a(this.bej, "Task is not yet complete");
      if (this.bel != null) {
        throw new d(this.bel);
      }
    }
    Object localObject3 = this.bek;
    return (TResult)localObject3;
  }
  
  public final boolean isComplete()
  {
    synchronized (this.mLock)
    {
      boolean bool = this.bej;
      return bool;
    }
  }
  
  public final boolean isSuccessful()
  {
    for (;;)
    {
      synchronized (this.mLock)
      {
        if ((this.bej) && (this.bel == null))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/c/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */