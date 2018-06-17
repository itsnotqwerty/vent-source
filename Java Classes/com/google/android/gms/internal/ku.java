package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.util.e;

final class ku
  extends gh
{
  ku(kt paramkt, hz paramhz)
  {
    super(paramhz);
  }
  
  public final void run()
  {
    kt localkt = this.aXd;
    localkt.mN();
    long l = localkt.qH().elapsedRealtime();
    localkt.qP().aTi.j("Session started, time", Long.valueOf(l));
    localkt.qQ().aTW.set(false);
    localkt.qC().a("auto", "_s", new Bundle());
    localkt.qQ().aTX.set(localkt.qH().currentTimeMillis());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ku.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */