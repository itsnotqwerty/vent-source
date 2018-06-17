package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;

abstract class ae
{
  private final ac aEW;
  
  protected ae(ac paramac)
  {
    this.aEW = paramac;
  }
  
  public final void a(ad paramad)
  {
    paramad.aDD.lock();
    try
    {
      ac localac1 = paramad.aER;
      ac localac2 = this.aEW;
      if (localac1 != localac2) {
        return;
      }
      nn();
      return;
    }
    finally
    {
      paramad.aDD.unlock();
    }
  }
  
  protected abstract void nn();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */