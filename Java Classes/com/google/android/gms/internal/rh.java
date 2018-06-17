package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

public final class rh
  extends mr
  implements rf
{
  rh(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
  }
  
  public final String getText()
    throws RemoteException
  {
    Parcel localParcel = a(2, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final List<rj> tH()
    throws RemoteException
  {
    Parcel localParcel = a(3, sH());
    ArrayList localArrayList = mt.c(localParcel);
    localParcel.recycle();
    return localArrayList;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/rh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */