package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a.a;

public abstract class d
  extends ms
  implements c
{
  public d()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
  }
  
  public static c m(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    if ((localIInterface instanceof c)) {
      return (c)localIInterface;
    }
    return new e(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    switch (paramInt1)
    {
    default: 
      return false;
    case 1: 
      a((n)mt.a(paramParcel1, n.CREATOR));
      paramParcel2.writeNoException();
    }
    for (;;)
    {
      return true;
      show();
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = null;
      }
      for (;;)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        break;
        IInterface localIInterface = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
        if ((localIInterface instanceof h)) {
          paramParcel1 = (h)localIInterface;
        } else {
          paramParcel1 = new j(paramParcel1);
        }
      }
      boolean bool = isLoaded();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      continue;
      pause();
      paramParcel2.writeNoException();
      continue;
      resume();
      paramParcel2.writeNoException();
      continue;
      destroy();
      paramParcel2.writeNoException();
      continue;
      b(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      continue;
      c(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      continue;
      d(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = getMediationAdapterClassName();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      continue;
      setUserId(paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      aq(mt.b(paramParcel1));
      paramParcel2.writeNoException();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */