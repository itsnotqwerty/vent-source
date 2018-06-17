package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class sx
  extends mr
  implements sv
{
  sx(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
  }
  
  public final void a(sy paramsy)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramsy);
    b(1, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/sx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */