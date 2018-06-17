package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class fb
  extends mr
  implements ez
{
  fb(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.location.internal.IFusedLocationProviderCallback");
  }
  
  public final void a(ew paramew)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramew);
    c(1, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */