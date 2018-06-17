package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.a;
import java.util.concurrent.locks.Lock;

final class cr
  implements ax
{
  private cr(cp paramcp) {}
  
  public final void e(a parama)
  {
    this.aHd.aDD.lock();
    try
    {
      this.aHd.aHa = parama;
      cp.a(this.aHd);
      return;
    }
    finally
    {
      this.aHd.aDD.unlock();
    }
  }
  
  public final void h(int paramInt, boolean paramBoolean)
  {
    this.aHd.aDD.lock();
    try
    {
      if (this.aHd.aHb)
      {
        this.aHd.aHb = false;
        cp.a(this.aHd, paramInt, paramBoolean);
        return;
      }
      this.aHd.aHb = true;
      this.aHd.aGT.cG(paramInt);
      return;
    }
    finally
    {
      this.aHd.aDD.unlock();
    }
  }
  
  public final void i(Bundle paramBundle)
  {
    this.aHd.aDD.lock();
    try
    {
      this.aHd.aHa = a.aCh;
      cp.a(this.aHd);
      return;
    }
    finally
    {
      this.aHd.aDD.unlock();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/cr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */