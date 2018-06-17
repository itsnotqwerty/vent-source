package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class s
  extends mr
  implements q
{
  s(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
  }
  
  public final void a(a parama, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    localParcel.writeInt(paramInt);
    b(2, localParcel);
  }
  
  public final void a(a parama, u paramu)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramu);
    b(7, localParcel);
  }
  
  public final void b(a parama, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    localParcel.writeInt(paramInt);
    b(9, localParcel);
  }
  
  public final void e(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(1, localParcel);
  }
  
  public final void f(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(3, localParcel);
  }
  
  public final void g(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(4, localParcel);
  }
  
  public final void h(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(5, localParcel);
  }
  
  public final void i(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(6, localParcel);
  }
  
  public final void j(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(8, localParcel);
  }
  
  public final void k(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(10, localParcel);
  }
  
  public final void l(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(11, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */