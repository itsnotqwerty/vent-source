package com.google.android.gms.location;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.mr;
import com.google.android.gms.internal.mt;

public final class s
  extends mr
  implements q
{
  s(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.location.ILocationCallback");
  }
  
  public final void a(LocationAvailability paramLocationAvailability)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramLocationAvailability);
    c(2, localParcel);
  }
  
  public final void a(LocationResult paramLocationResult)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramLocationResult);
    c(1, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */