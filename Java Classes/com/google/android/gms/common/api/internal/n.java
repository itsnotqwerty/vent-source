package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ar;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;

final class n
  implements ar
{
  private final com.google.android.gms.common.api.a<?> aCz;
  private final WeakReference<l> aEn;
  final boolean aEo;
  
  public n(l paraml, com.google.android.gms.common.api.a<?> parama, boolean paramBoolean)
  {
    this.aEn = new WeakReference(paraml);
    this.aCz = parama;
    this.aEo = paramBoolean;
  }
  
  public final void d(com.google.android.gms.common.a parama)
  {
    boolean bool = false;
    l locall = (l)this.aEn.get();
    if (locall == null) {
      return;
    }
    if (Looper.myLooper() == locall.aDW.aEU.getLooper()) {
      bool = true;
    }
    ae.a(bool, "onReportServiceBinding must be called on the GoogleApiClient handler thread");
    locall.aDD.lock();
    try
    {
      bool = locall.cH(0);
      if (!bool) {
        return;
      }
      if (!parama.mQ()) {
        locall.b(parama, this.aCz, this.aEo);
      }
      if (locall.no()) {
        locall.np();
      }
      return;
    }
    finally
    {
      locall.aDD.unlock();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */