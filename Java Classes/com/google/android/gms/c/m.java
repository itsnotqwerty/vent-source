package com.google.android.gms.c;

import java.util.concurrent.Executor;

final class m<TResult>
  implements o<TResult>
{
  private final Executor bdX;
  c<? super TResult> bed;
  final Object mLock = new Object();
  
  public m(Executor paramExecutor, c<? super TResult> paramc)
  {
    this.bdX = paramExecutor;
    this.bed = paramc;
  }
  
  public final void a(e<TResult> parame)
  {
    if (parame.isSuccessful()) {
      synchronized (this.mLock)
      {
        if (this.bed == null) {
          return;
        }
        this.bdX.execute(new n(this, parame));
        return;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/c/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */