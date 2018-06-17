package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;

final class dh
{
  long Ie;
  private final e aBm;
  
  public dh(e parame)
  {
    ae.E(parame);
    this.aBm = parame;
  }
  
  public dh(e parame, long paramLong)
  {
    ae.E(parame);
    this.aBm = parame;
    this.Ie = paramLong;
  }
  
  public final boolean o(long paramLong)
  {
    if (this.Ie == 0L) {}
    while (this.aBm.elapsedRealtime() - this.Ie > paramLong) {
      return true;
    }
    return false;
  }
  
  public final void start()
  {
    this.Ie = this.aBm.elapsedRealtime();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/dh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */