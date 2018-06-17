package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

final class jx
  implements Runnable
{
  jx(ju paramju, AtomicReference paramAtomicReference, fx paramfx) {}
  
  public final void run()
  {
    localAtomicReference = this.aWH;
    for (;;)
    {
      try
      {
        localObject1 = this.aWG.aWA;
        if (localObject1 == null) {
          this.aWG.qP().aTa.bq("Failed to get app instance id");
        }
      }
      catch (RemoteException localRemoteException)
      {
        Object localObject1;
        this.aWG.qP().aTa.j("Failed to get app instance id", localRemoteException);
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
    this.aWH.set(((gt)localObject1).c(this.aVG));
    localObject1 = (String)this.aWH.get();
    if (localObject1 != null)
    {
      this.aWG.qC().cu((String)localObject1);
      this.aWG.qQ().aTN.cp((String)localObject1);
    }
    this.aWG.po();
    this.aWH.notify();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/jx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */