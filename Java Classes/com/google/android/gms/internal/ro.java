package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a.a;

public abstract class ro
  extends ms
  implements rn
{
  public static rn u(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    if ((localIInterface instanceof rn)) {
      return (rn)localIInterface;
    }
    return new rp(paramIBinder);
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
      b(paramParcel1.readString(), a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 2: 
      paramParcel1 = cP(paramParcel1.readString());
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    case 3: 
      q(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 4: 
      destroy();
      paramParcel2.writeNoException();
      return true;
    }
    d(a.a.j(paramParcel1.readStrongBinder()), paramParcel1.readInt());
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ro.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */