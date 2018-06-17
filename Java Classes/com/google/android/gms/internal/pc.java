package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class pc
  extends ms
  implements pb
{
  public pc()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.client.IAppEventListener");
  }
  
  public static pb p(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
    if ((localIInterface instanceof pb)) {
      return (pb)localIInterface;
    }
    return new pd(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    if (paramInt1 == 1)
    {
      m(paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */