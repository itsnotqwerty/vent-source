package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

final class kh
  implements Runnable
{
  kh(ju paramju, AtomicReference paramAtomicReference, fx paramfx, boolean paramBoolean) {}
  
  public final void run()
  {
    localAtomicReference = this.aWH;
    for (;;)
    {
      try
      {
        localgt = this.aWG.aWA;
        if (localgt == null) {
          this.aWG.qP().aTa.bq("Failed to get user properties");
        }
      }
      catch (RemoteException localRemoteException)
      {
        gt localgt;
        this.aWG.qP().aTa.j("Failed to get user properties", localRemoteException);
        this.aWH.notify();
        continue;
      }
      finally
      {
        this.aWH.notify();
      }
      try
      {
        this.aWH.notify();
        return;
      }
      finally {}
    }
    this.aWH.set(localgt.a(this.aVG, this.aVZ));
    this.aWG.po();
    this.aWH.notify();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/kh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */