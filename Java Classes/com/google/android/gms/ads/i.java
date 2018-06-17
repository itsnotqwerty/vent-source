package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.pp;
import com.google.android.gms.internal.qp;

public final class i
{
  private pp azr;
  private a azs;
  private final Object mLock = new Object();
  
  public final void a(pp arg1)
  {
    for (;;)
    {
      a locala;
      synchronized (this.mLock)
      {
        this.azr = ???;
        if (this.azs != null)
        {
          locala = this.azs;
          ae.g(locala, "VideoLifecycleCallbacks may not be null.");
        }
        synchronized (this.mLock)
        {
          this.azs = locala;
          if (this.azr == null) {
            return;
          }
        }
      }
      try
      {
        this.azr.a(new qp(locala));
        continue;
        localObject2 = finally;
        throw ((Throwable)localObject2);
        ??? = finally;
        throw ???;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          af.c("Unable to call setVideoLifecycleCallbacks on video controller.", localRemoteException);
        }
      }
    }
  }
  
  public final pp lz()
  {
    synchronized (this.mLock)
    {
      pp localpp = this.azr;
      return localpp;
    }
  }
  
  public static final class a {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */