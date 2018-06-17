package com.google.android.gms.c;

import java.util.concurrent.Executor;

final class k<TResult>
  implements o<TResult>
{
  private final Executor bdX;
  b beb;
  final Object mLock = new Object();
  
  public k(Executor paramExecutor, b paramb)
  {
    this.bdX = paramExecutor;
    this.beb = paramb;
  }
  
  public final void a(e<TResult> parame)
  {
    if (!parame.isSuccessful()) {
      synchronized (this.mLock)
      {
        if (this.beb == null) {
          return;
        }
        this.bdX.execute(new l(this, parame));
        return;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/c/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */