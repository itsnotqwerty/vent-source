package com.google.android.gms.internal;

import android.os.RemoteException;

final class qm
  implements Runnable
{
  qm(ql paramql) {}
  
  public final void run()
  {
    if (ql.a(this.bch) != null) {}
    try
    {
      ql.a(this.bch).cw(1);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not notify onRewardedVideoAdFailedToLoad event.", localRemoteException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/qm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */