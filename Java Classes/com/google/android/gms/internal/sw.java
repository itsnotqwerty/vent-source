package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class sw
  extends ms
  implements sv
{
  public sw()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    if (paramInt1 == 1)
    {
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = null;
      }
      for (;;)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        IInterface localIInterface = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
        if ((localIInterface instanceof sy)) {
          paramParcel1 = (sy)localIInterface;
        } else {
          paramParcel1 = new sz(paramParcel1);
        }
      }
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/sw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */