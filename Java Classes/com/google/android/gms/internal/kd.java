package com.google.android.gms.internal;

import android.os.RemoteException;
import android.text.TextUtils;

final class kd
  implements Runnable
{
  kd(ju paramju, boolean paramBoolean, ga paramga1, fx paramfx, ga paramga2) {}
  
  public final void run()
  {
    gt localgt = this.aWG.aWA;
    if (localgt == null)
    {
      this.aWG.qP().aTa.bq("Discarding data. Failed to send conditional user property to service");
      return;
    }
    Object localObject;
    if (this.aWJ)
    {
      ju localju = this.aWG;
      if (this.aWK)
      {
        localObject = null;
        localju.a(localgt, (dr)localObject, this.aVG);
      }
    }
    for (;;)
    {
      this.aWG.po();
      return;
      localObject = this.aWL;
      break;
      try
      {
        if (!TextUtils.isEmpty(this.aWM.packageName)) {
          break label125;
        }
        localgt.a(this.aWL, this.aVG);
      }
      catch (RemoteException localRemoteException)
      {
        this.aWG.qP().aTa.j("Failed to send conditional user property to the service", localRemoteException);
      }
      continue;
      label125:
      localgt.b(this.aWL);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/kd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */