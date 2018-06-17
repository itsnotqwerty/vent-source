package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ms;
import com.google.android.gms.internal.mt;

public abstract class u
  extends ms
  implements t
{
  public u()
  {
    attachInterface(this, "com.google.android.gms.location.ILocationListener");
  }
  
  public static t C(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
    if ((localIInterface instanceof t)) {
      return (t)localIInterface;
    }
    return new v(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    if (paramInt1 == 1)
    {
      onLocationChanged((Location)mt.a(paramParcel1, Location.CREATOR));
      return true;
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */