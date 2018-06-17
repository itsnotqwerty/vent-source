package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ms;
import com.google.android.gms.internal.mt;

public abstract class s
  extends ms
  implements r
{
  public s()
  {
    attachInterface(this, "com.google.android.gms.common.internal.ICertData");
  }
  
  public static r f(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
    if ((localIInterface instanceof r)) {
      return (r)localIInterface;
    }
    return new t(paramIBinder);
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
      paramParcel1 = oe();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    }
    paramInt1 = of();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(paramInt1);
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */