package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;

abstract class gh
{
  private static volatile Handler handler;
  private volatile long aRA;
  private final Runnable aRz;
  private boolean enabled;
  private final hz zzjev;
  
  gh(hz paramhz)
  {
    ae.E(paramhz);
    this.zzjev = paramhz;
    this.enabled = true;
    this.aRz = new gi(this, paramhz);
  }
  
  private final Handler getHandler()
  {
    if (handler != null) {
      return handler;
    }
    try
    {
      if (handler == null) {
        handler = new Handler(this.zzjev.aUM.getMainLooper());
      }
      Handler localHandler = handler;
      return localHandler;
    }
    finally {}
  }
  
  public final void cancel()
  {
    this.aRA = 0L;
    getHandler().removeCallbacks(this.aRz);
  }
  
  public final void n(long paramLong)
  {
    cancel();
    if (paramLong >= 0L)
    {
      this.aRA = this.zzjev.aLd.currentTimeMillis();
      if (!getHandler().postDelayed(this.aRz, paramLong)) {
        this.zzjev.qP().aTa.j("Failed to schedule delayed post. time", Long.valueOf(paramLong));
      }
    }
  }
  
  public final boolean pW()
  {
    return this.aRA != 0L;
  }
  
  public abstract void run();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */