package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class nl
  extends mr
  implements nj
{
  nl(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
  }
  
  public final String getId()
    throws RemoteException
  {
    Parcel localParcel = a(1, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final boolean tb()
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, true);
    localParcel = a(2, localParcel);
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/nl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */