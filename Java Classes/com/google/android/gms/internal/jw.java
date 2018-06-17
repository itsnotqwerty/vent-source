package com.google.android.gms.internal;

import android.os.RemoteException;

final class jw
  implements Runnable
{
  jw(ju paramju, fx paramfx) {}
  
  public final void run()
  {
    gt localgt = this.aWG.aWA;
    if (localgt == null)
    {
      this.aWG.qP().aTa.bq("Failed to reset data on the service; null service");
      return;
    }
    try
    {
      localgt.d(this.aVG);
      this.aWG.po();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        this.aWG.qP().aTa.j("Failed to reset data on the service", localRemoteException);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/jw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */