package com.google.android.gms.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.util.e;

final class kw
  implements Runnable
{
  kw(kt paramkt, long paramLong) {}
  
  public final void run()
  {
    kt localkt = this.aXd;
    long l = this.aQv;
    localkt.mN();
    localkt.so();
    localkt.aXb.cancel();
    localkt.aXc.cancel();
    localkt.qP().aTi.j("Activity resumed, time", Long.valueOf(l));
    localkt.aXa = l;
    if (localkt.qH().currentTimeMillis() - localkt.qQ().aTV.get() > localkt.qQ().aTX.get())
    {
      localkt.qQ().aTW.set(true);
      localkt.qQ().aTY.set(0L);
    }
    hm localhm = localkt.qQ().aTW;
    if (!localhm.aUb)
    {
      localhm.aUb = true;
      localhm.value = hl.a(localhm.aUc).getBoolean(localhm.key, localhm.aUa);
    }
    if (localhm.value)
    {
      localkt.aXb.n(Math.max(0L, localkt.qQ().aTU.get() - localkt.qQ().aTY.get()));
      return;
    }
    localkt.aXc.n(Math.max(0L, 3600000L - localkt.qQ().aTY.get()));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/kw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */