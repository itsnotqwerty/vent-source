package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.b.j;

public final class ot
  extends mr
  implements or
{
  ot(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
  }
  
  public final void a(j paramj)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramj);
    b(9, localParcel);
  }
  
  public final void a(ol paramol)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramol);
    b(2, localParcel);
  }
  
  public final void a(ph paramph)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramph);
    b(7, localParcel);
  }
  
  public final void a(rd paramrd)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramrd);
    b(6, localParcel);
  }
  
  public final void a(sh paramsh)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramsh);
    b(3, localParcel);
  }
  
  public final void a(sk paramsk)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramsk);
    b(4, localParcel);
  }
  
  public final void a(st paramst, nu paramnu)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramst);
    mt.a(localParcel, paramnu);
    b(8, localParcel);
  }
  
  public final void a(sv paramsv)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramsv);
    b(10, localParcel);
  }
  
  public final void a(String paramString, sq paramsq, sn paramsn)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    mt.a(localParcel, paramsq);
    mt.a(localParcel, paramsn);
    b(5, localParcel);
  }
  
  public final oo tm()
    throws RemoteException
  {
    Parcel localParcel = a(1, sH());
    Object localObject = localParcel.readStrongBinder();
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return (oo)localObject;
      IInterface localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
      if ((localIInterface instanceof oo)) {
        localObject = (oo)localIInterface;
      } else {
        localObject = new oq((IBinder)localObject);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ot.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */