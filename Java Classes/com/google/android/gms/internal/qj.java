package com.google.android.gms.internal;

import android.os.RemoteException;

final class qj
  implements Runnable
{
  qj(qi paramqi) {}
  
  public final void run()
  {
    if (qi.a(this.bcf) != null) {}
    try
    {
      qi.a(this.bcf).cv(1);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not notify onAdFailedToLoad event.", localRemoteException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/qj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */