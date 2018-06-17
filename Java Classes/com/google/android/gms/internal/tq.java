package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class tq
  extends mr
  implements tp
{
  tq(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
  }
  
  public final void a(sd paramsd, String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramsd);
    localParcel.writeString(paramString);
    b(10, localParcel);
  }
  
  public final void cv(int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeInt(paramInt);
    b(3, localParcel);
  }
  
  public final void lj()
    throws RemoteException
  {
    b(6, sH());
  }
  
  public final void lk()
    throws RemoteException
  {
    b(5, sH());
  }
  
  public final void ll()
    throws RemoteException
  {
    b(2, sH());
  }
  
  public final void lm()
    throws RemoteException
  {
    b(4, sH());
  }
  
  public final void ln()
    throws RemoteException
  {
    b(1, sH());
  }
  
  public final void lo()
    throws RemoteException
  {
    b(8, sH());
  }
  
  public final void m(String paramString1, String paramString2)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    b(9, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/tq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */