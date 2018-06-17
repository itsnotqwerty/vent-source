package com.google.android.gms.internal;

import android.os.RemoteException;
import android.text.TextUtils;

final class kc
  implements Runnable
{
  kc(ju paramju, boolean paramBoolean, gp paramgp, fx paramfx, String paramString) {}
  
  public final void run()
  {
    gt localgt = this.aWG.aWA;
    if (localgt == null)
    {
      this.aWG.qP().aTa.bq("Discarding data. Failed to send event to service");
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
      localObject = this.aVL;
      break;
      try
      {
        if (!TextUtils.isEmpty(this.aVD)) {
          break label122;
        }
        localgt.a(this.aVL, this.aVG);
      }
      catch (RemoteException localRemoteException)
      {
        this.aWG.qP().aTa.j("Failed to send event to the service", localRemoteException);
      }
      continue;
      label122:
      localgt.a(this.aVL, this.aVD, this.aWG.qP().rJ());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/kc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */