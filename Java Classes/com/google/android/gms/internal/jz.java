package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;

final class jz
  implements Runnable
{
  jz(ju paramju, jp paramjp) {}
  
  public final void run()
  {
    gt localgt = this.aWG.aWA;
    if (localgt == null)
    {
      this.aWG.qP().aTa.bq("Failed to send current screen to service");
      return;
    }
    for (;;)
    {
      try
      {
        if (this.aWI == null)
        {
          localgt.a(0L, null, null, this.aWG.getContext().getPackageName());
          this.aWG.po();
          return;
        }
      }
      catch (RemoteException localRemoteException)
      {
        this.aWG.qP().aTa.j("Failed to send current screen to the service", localRemoteException);
        return;
      }
      localRemoteException.a(this.aWI.aWj, this.aWI.aWh, this.aWI.aWi, this.aWG.getContext().getPackageName());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/jz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */