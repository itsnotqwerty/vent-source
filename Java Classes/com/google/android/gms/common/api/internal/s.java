package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.mf;
import com.google.android.gms.internal.mn;
import java.lang.ref.WeakReference;

final class s
  extends mf
{
  private final WeakReference<l> aEn;
  
  s(l paraml)
  {
    this.aEn = new WeakReference(paraml);
  }
  
  public final void a(mn parammn)
  {
    l locall = (l)this.aEn.get();
    if (locall == null) {
      return;
    }
    locall.aDW.a(new t(locall, locall, parammn));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */