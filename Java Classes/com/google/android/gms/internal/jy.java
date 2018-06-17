package com.google.android.gms.internal;

import android.os.RemoteException;

final class jy
  implements Runnable
{
  jy(ju paramju, fx paramfx) {}
  
  public final void run()
  {
    gt localgt = this.aWG.aWA;
    if (localgt == null)
    {
      this.aWG.qP().aTa.bq("Discarding data. Failed to send app launch");
      return;
    }
    try
    {
      localgt.a(this.aVG);
      this.aWG.a(localgt, null, this.aVG);
      this.aWG.po();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      this.aWG.qP().aTa.j("Failed to send app launch to the service", localRemoteException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/jy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */