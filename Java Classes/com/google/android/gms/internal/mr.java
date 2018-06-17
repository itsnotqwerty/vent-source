package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public class mr
  implements IInterface
{
  private final IBinder aHI;
  private final String aZB;
  
  protected mr(IBinder paramIBinder, String paramString)
  {
    this.aHI = paramIBinder;
    this.aZB = paramString;
  }
  
  protected final Parcel a(int paramInt, Parcel paramParcel)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      this.aHI.transact(paramInt, paramParcel, localParcel, 0);
      localParcel.readException();
      return localParcel;
    }
    catch (RuntimeException localRuntimeException)
    {
      throw localRuntimeException;
    }
    finally
    {
      paramParcel.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return this.aHI;
  }
  
  protected final void b(int paramInt, Parcel paramParcel)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      this.aHI.transact(paramInt, paramParcel, localParcel, 0);
      localParcel.readException();
      return;
    }
    finally
    {
      paramParcel.recycle();
      localParcel.recycle();
    }
  }
  
  protected final void c(int paramInt, Parcel paramParcel)
    throws RemoteException
  {
    try
    {
      this.aHI.transact(paramInt, paramParcel, null, 1);
      return;
    }
    finally
    {
      paramParcel.recycle();
    }
  }
  
  protected final Parcel sH()
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.writeInterfaceToken(this.aZB);
    return localParcel;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/mr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */