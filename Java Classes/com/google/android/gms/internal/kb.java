package com.google.android.gms.internal;

import android.os.RemoteException;

final class kb
  implements Runnable
{
  kb(ju paramju, fx paramfx) {}
  
  public final void run()
  {
    gt localgt = this.aWG.aWA;
    if (localgt == null)
    {
      this.aWG.qP().aTa.bq("Failed to send measurementEnabled to service");
      return;
    }
    try
    {
      localgt.b(this.aVG);
      this.aWG.po();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      this.aWG.qP().aTa.j("Failed to send measurementEnabled to the service", localRemoteException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/kb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */