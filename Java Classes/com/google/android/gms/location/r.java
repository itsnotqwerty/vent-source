package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ms;
import com.google.android.gms.internal.mt;

public abstract class r
  extends ms
  implements q
{
  public static q B(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
    if ((localIInterface instanceof q)) {
      return (q)localIInterface;
    }
    return new s(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    switch (paramInt1)
    {
    default: 
      return false;
    case 1: 
      a((LocationResult)mt.a(paramParcel1, LocationResult.CREATOR));
    }
    for (;;)
    {
      return true;
      a((LocationAvailability)mt.a(paramParcel1, LocationAvailability.CREATOR));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */