package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class ux
  extends ms
  implements uw
{
  public static uw z(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager");
    if ((localIInterface instanceof uw)) {
      return (uw)localIInterface;
    }
    return new uy(paramIBinder);
  }
  
  public final boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    throw new NoSuchMethodError();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ux.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */