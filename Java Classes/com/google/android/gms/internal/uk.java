package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.a.a;

final class uk
  implements Runnable
{
  uk(ui paramui, a.a parama) {}
  
  public final void run()
  {
    try
    {
      this.bdi.bcW.cv(ul.c(this.bdh));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdFailedToLoad.", localRemoteException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/uk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */