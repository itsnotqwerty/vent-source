package com.google.android.gms.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

final class ke
  implements Runnable
{
  ke(ju paramju, AtomicReference paramAtomicReference, String paramString1, String paramString2, String paramString3, fx paramfx) {}
  
  public final void run()
  {
    AtomicReference localAtomicReference = this.aWH;
    for (;;)
    {
      try
      {
        localgt = this.aWG.aWA;
        if (localgt == null)
        {
          this.aWG.qP().aTa.d("Failed to get conditional properties", hb.ck(this.aVD), this.aVJ, this.aVK);
          this.aWH.set(Collections.emptyList());
        }
      }
      catch (RemoteException localRemoteException)
      {
        gt localgt;
        this.aWG.qP().aTa.d("Failed to get conditional properties", hb.ck(this.aVD), this.aVJ, localRemoteException);
        this.aWH.set(Collections.emptyList());
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
    if (TextUtils.isEmpty(this.aVD)) {
      this.aWH.set(localgt.a(this.aVJ, this.aVK, this.aVG));
    }
    for (;;)
    {
      this.aWG.po();
      this.aWH.notify();
      return;
      this.aWH.set(((gt)localObject1).e(this.aVD, this.aVJ, this.aVK));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ke.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */