package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;

final class ab
  extends at
{
  private WeakReference<y> aEN;
  
  ab(y paramy)
  {
    this.aEN = new WeakReference(paramy);
  }
  
  public final void nx()
  {
    y localy = (y)this.aEN.get();
    if (localy == null) {
      return;
    }
    y.a(localy);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */