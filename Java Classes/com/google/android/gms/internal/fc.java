package com.google.android.gms.internal;

import android.location.Location;
import android.os.IInterface;
import android.os.RemoteException;

public abstract interface fc
  extends IInterface
{
  public abstract void a(ep paramep)
    throws RemoteException;
  
  public abstract void a(fo paramfo)
    throws RemoteException;
  
  public abstract Location bO(String paramString)
    throws RemoteException;
  
  public abstract void qx()
    throws RemoteException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */