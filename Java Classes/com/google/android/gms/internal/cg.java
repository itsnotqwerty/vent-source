package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;

abstract class cg
{
  private static volatile Handler aNF;
  final bd aMq;
  final Runnable aNG;
  volatile long aNH;
  
  cg(bd parambd)
  {
    ae.E(parambd);
    this.aMq = parambd;
    this.aNG = new ch(this);
  }
  
  public final void cancel()
  {
    this.aNH = 0L;
    getHandler().removeCallbacks(this.aNG);
  }
  
  final Handler getHandler()
  {
    if (aNF != null) {
      return aNF;
    }
    try
    {
      if (aNF == null) {
        aNF = new Handler(this.aMq.mContext.getMainLooper());
      }
      Handler localHandler = aNF;
      return localHandler;
    }
    finally {}
  }
  
  public final void n(long paramLong)
  {
    cancel();
    if (paramLong >= 0L)
    {
      this.aNH = this.aMq.aBm.currentTimeMillis();
      if (!getHandler().postDelayed(this.aNG, paramLong)) {
        this.aMq.pg().h("Failed to schedule delayed post. time", Long.valueOf(paramLong));
      }
    }
  }
  
  public final boolean pW()
  {
    return this.aNH != 0L;
  }
  
  public abstract void run();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */