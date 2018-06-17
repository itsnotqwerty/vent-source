package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.mr;
import com.google.android.gms.internal.mt;

public final class v
  extends mr
  implements t
{
  v(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.location.ILocationListener");
  }
  
  public final void onLocationChanged(Location paramLocation)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramLocation);
    c(1, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */