package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;

final class ky
{
  long Ie;
  final e aLd;
  
  public ky(e parame)
  {
    ae.E(parame);
    this.aLd = parame;
  }
  
  public final void start()
  {
    this.Ie = this.aLd.elapsedRealtime();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ky.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */