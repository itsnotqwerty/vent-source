package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class pu
  extends mr
  implements ps
{
  pu(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
  }
  
  public final void aD(boolean paramBoolean)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramBoolean);
    b(5, localParcel);
  }
  
  public final void tB()
    throws RemoteException
  {
    b(1, sH());
  }
  
  public final void tC()
    throws RemoteException
  {
    b(2, sH());
  }
  
  public final void tD()
    throws RemoteException
  {
    b(3, sH());
  }
  
  public final void tE()
    throws RemoteException
  {
    b(4, sH());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */