package com.google.android.gms.internal;

import android.os.RemoteException;

final class qh
  implements Runnable
{
  qh(qg paramqg) {}
  
  public final void run()
  {
    if (qf.a(this.bce.bcd) != null) {}
    try
    {
      qf.a(this.bce.bcd).cv(1);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not notify onAdFailedToLoad event.", localRemoteException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/qh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */