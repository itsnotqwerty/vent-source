package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;

public abstract interface oo
  extends IInterface
{
  public abstract void a(nr paramnr)
    throws RemoteException;
  
  public abstract void a(nr paramnr, int paramInt)
    throws RemoteException;
  
  public abstract String getMediationAdapterClassName()
    throws RemoteException;
  
  public abstract boolean isLoading()
    throws RemoteException;
  
  public abstract String tl()
    throws RemoteException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/oo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */