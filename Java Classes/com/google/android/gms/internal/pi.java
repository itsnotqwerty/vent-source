package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class pi
  extends ms
  implements ph
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    if (paramInt1 == 1)
    {
      long l = getValue();
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l);
      return true;
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */