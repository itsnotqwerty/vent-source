package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class rk
  extends ms
  implements rj
{
  public rk()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
  }
  
  public static rj t(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    if ((localIInterface instanceof rj)) {
      return (rj)localIInterface;
    }
    return new rl(paramIBinder);
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
      paramParcel1 = tG();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    case 2: 
      paramParcel1 = getUri();
      paramParcel2.writeNoException();
      mt.b(paramParcel2, paramParcel1);
      return true;
    }
    double d = lB();
    paramParcel2.writeNoException();
    paramParcel2.writeDouble(d);
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/rk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */