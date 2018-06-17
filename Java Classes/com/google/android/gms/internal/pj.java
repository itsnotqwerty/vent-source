package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class pj
  extends mr
  implements ph
{
  pj(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
  }
  
  public final long getValue()
    throws RemoteException
  {
    Parcel localParcel = a(1, sH());
    long l = localParcel.readLong();
    localParcel.recycle();
    return l;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */