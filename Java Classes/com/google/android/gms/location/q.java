package com.google.android.gms.location;

import android.os.IInterface;
import android.os.RemoteException;

public abstract interface q
  extends IInterface
{
  public abstract void a(LocationAvailability paramLocationAvailability)
    throws RemoteException;
  
  public abstract void a(LocationResult paramLocationResult)
    throws RemoteException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */