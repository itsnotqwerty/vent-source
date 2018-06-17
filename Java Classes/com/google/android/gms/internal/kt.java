package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.util.e;

public final class kt
  extends iy
{
  long aXa = qH().elapsedRealtime();
  final gh aXb = new ku(this, this.zzjev);
  final gh aXc = new kv(this, this.zzjev);
  private Handler handler;
  
  kt(hz paramhz)
  {
    super(paramhz);
  }
  
  public final boolean aA(boolean paramBoolean)
  {
    mN();
    pf();
    long l1 = qH().elapsedRealtime();
    qQ().aTX.set(qH().currentTimeMillis());
    long l2 = l1 - this.aXa;
    if ((!paramBoolean) && (l2 < 1000L))
    {
      qP().aTi.j("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(l2));
      return false;
    }
    qQ().aTY.set(l2);
    qP().aTi.j("Recording user engagement, ms", Long.valueOf(l2));
    Bundle localBundle = new Bundle();
    localBundle.putLong("_et", l2);
    jq.a(qG().sj(), localBundle, true);
    qC().a("auto", "_e", localBundle);
    this.aXa = l1;
    this.aXc.cancel();
    this.aXc.n(Math.max(0L, 3600000L - qQ().aTY.get()));
    return true;
  }
  
  protected final boolean ri()
  {
    return false;
  }
  
  final void so()
  {
    try
    {
      if (this.handler == null) {
        this.handler = new Handler(Looper.getMainLooper());
      }
      return;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/kt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */