package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class sj
  extends mr
  implements sh
{
  sj(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
  }
  
  public final void a(rx paramrx)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramrx);
    b(1, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/sj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */