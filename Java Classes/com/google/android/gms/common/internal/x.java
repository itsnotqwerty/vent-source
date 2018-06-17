package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

final class x
  implements w
{
  private final IBinder aHI;
  
  x(IBinder paramIBinder)
  {
    this.aHI = paramIBinder;
  }
  
  public final void a(u paramu, bf parambf)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      localParcel1.writeStrongBinder(paramu.asBinder());
      localParcel1.writeInt(1);
      parambf.writeToParcel(localParcel1, 0);
      this.aHI.transact(46, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public final IBinder asBinder()
  {
    return this.aHI;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */