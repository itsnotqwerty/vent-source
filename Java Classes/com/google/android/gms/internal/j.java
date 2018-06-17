package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class j
  extends mr
  implements h
{
  j(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
  }
  
  public final void a(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(5, localParcel);
  }
  
  public final void cw(int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeInt(paramInt);
    b(7, localParcel);
  }
  
  public final void lq()
    throws RemoteException
  {
    b(1, sH());
  }
  
  public final void lr()
    throws RemoteException
  {
    b(2, sH());
  }
  
  public final void ls()
    throws RemoteException
  {
    b(3, sH());
  }
  
  public final void lt()
    throws RemoteException
  {
    b(4, sH());
  }
  
  public final void lu()
    throws RemoteException
  {
    b(6, sH());
  }
  
  public final void lv()
    throws RemoteException
  {
    b(8, sH());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */