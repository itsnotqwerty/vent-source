package com.firebase.jobdispatcher;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

final class h
  implements o
{
  private final IBinder axu;
  
  public h(IBinder paramIBinder)
  {
    this.axu = paramIBinder;
  }
  
  public final void ct(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.gcm.INetworkTaskCallback");
      localParcel1.writeInt(paramInt);
      this.axu.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
    finally
    {
      localParcel1.recycle();
      localParcel2.recycle();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */