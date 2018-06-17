package com.google.android.gms.internal;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class fd
  extends mr
  implements fc
{
  fd(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
  }
  
  public final void a(ep paramep)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramep);
    b(75, localParcel);
  }
  
  public final void a(fo paramfo)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramfo);
    b(59, localParcel);
  }
  
  public final Location bO(String paramString)
    throws RemoteException
  {
    Object localObject = sH();
    ((Parcel)localObject).writeString(paramString);
    paramString = a(21, (Parcel)localObject);
    localObject = (Location)mt.a(paramString, Location.CREATOR);
    paramString.recycle();
    return (Location)localObject;
  }
  
  public final void qx()
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, false);
    b(12, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */