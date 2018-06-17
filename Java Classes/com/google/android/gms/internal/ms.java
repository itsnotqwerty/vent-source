package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public class ms
  extends Binder
  implements IInterface
{
  protected final boolean a(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (paramInt1 > 16777215) {
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    }
    paramParcel1.enforceInterface(getInterfaceDescriptor());
    return false;
  }
  
  public IBinder asBinder()
  {
    return this;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ms.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */