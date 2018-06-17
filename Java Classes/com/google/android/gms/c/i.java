package com.google.android.gms.c;

import java.util.concurrent.Executor;

final class i<TResult>
  implements o<TResult>
{
  private final Executor bdX;
  a<TResult> bdY;
  final Object mLock = new Object();
  
  public i(Executor paramExecutor, a<TResult> parama)
  {
    this.bdX = paramExecutor;
    this.bdY = parama;
  }
  
  public final void a(e<TResult> parame)
  {
    synchronized (this.mLock)
    {
      if (this.bdY == null) {
        return;
      }
      this.bdX.execute(new j(this, parame));
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/c/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */