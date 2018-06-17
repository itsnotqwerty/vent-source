package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class oq
  extends mr
  implements oo
{
  oq(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
  }
  
  public final void a(nr paramnr)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramnr);
    b(1, localParcel);
  }
  
  public final void a(nr paramnr, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramnr);
    localParcel.writeInt(paramInt);
    b(5, localParcel);
  }
  
  public final String getMediationAdapterClassName()
    throws RemoteException
  {
    Parcel localParcel = a(2, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final boolean isLoading()
    throws RemoteException
  {
    Parcel localParcel = a(3, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final String tl()
    throws RemoteException
  {
    Parcel localParcel = a(4, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/oq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */