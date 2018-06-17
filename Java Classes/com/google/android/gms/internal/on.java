package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class on
  extends mr
  implements ol
{
  on(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IAdListener");
  }
  
  public final void cv(int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeInt(paramInt);
    b(2, localParcel);
  }
  
  public final void lj()
    throws RemoteException
  {
    b(4, sH());
  }
  
  public final void lk()
    throws RemoteException
  {
    b(5, sH());
  }
  
  public final void ll()
    throws RemoteException
  {
    b(1, sH());
  }
  
  public final void lm()
    throws RemoteException
  {
    b(3, sH());
  }
  
  public final void ln()
    throws RemoteException
  {
    b(6, sH());
  }
  
  public final void lo()
    throws RemoteException
  {
    b(7, sH());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/on.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */