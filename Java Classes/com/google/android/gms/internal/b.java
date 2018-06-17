package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class b
  extends mr
  implements a
{
  b(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.reward.client.IRewardItem");
  }
  
  public final String getType()
    throws RemoteException
  {
    Parcel localParcel = a(1, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final int mC()
    throws RemoteException
  {
    Parcel localParcel = a(2, sH());
    int i = localParcel.readInt();
    localParcel.recycle();
    return i;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */