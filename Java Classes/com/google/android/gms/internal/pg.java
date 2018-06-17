package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class pg
  extends mr
  implements pe
{
  pg(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IClientApi");
  }
  
  public final c a(a parama, tj paramtj, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramtj);
    localParcel.writeInt(paramInt);
    parama = a(6, localParcel);
    paramtj = d.m(parama.readStrongBinder());
    parama.recycle();
    return paramtj;
  }
  
  public final or a(a parama, String paramString, tj paramtj, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    localParcel.writeString(paramString);
    mt.a(localParcel, paramtj);
    localParcel.writeInt(paramInt);
    paramString = a(3, localParcel);
    parama = paramString.readStrongBinder();
    if (parama == null) {
      parama = null;
    }
    for (;;)
    {
      paramString.recycle();
      return parama;
      paramtj = parama.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
      if ((paramtj instanceof or)) {
        parama = (or)paramtj;
      } else {
        parama = new ot(parama);
      }
    }
  }
  
  public final ow a(a parama, nu paramnu, String paramString, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramnu);
    localParcel.writeString(paramString);
    localParcel.writeInt(paramInt);
    paramnu = a(10, localParcel);
    parama = paramnu.readStrongBinder();
    if (parama == null) {
      parama = null;
    }
    for (;;)
    {
      paramnu.recycle();
      return parama;
      paramString = parama.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
      if ((paramString instanceof ow)) {
        parama = (ow)paramString;
      } else {
        parama = new oy(parama);
      }
    }
  }
  
  public final rn a(a parama1, a parama2)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama1);
    mt.a(localParcel, parama2);
    parama1 = a(5, localParcel);
    parama2 = ro.u(parama1.readStrongBinder());
    parama1.recycle();
    return parama2;
  }
  
  public final rs a(a parama1, a parama2, a parama3)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama1);
    mt.a(localParcel, parama2);
    mt.a(localParcel, parama3);
    parama1 = a(11, localParcel);
    parama2 = rt.v(parama1.readStrongBinder());
    parama1.recycle();
    return parama2;
  }
  
  public final ow b(a parama, nu paramnu, String paramString, tj paramtj, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramnu);
    localParcel.writeString(paramString);
    mt.a(localParcel, paramtj);
    localParcel.writeInt(paramInt);
    paramnu = a(1, localParcel);
    parama = paramnu.readStrongBinder();
    if (parama == null) {
      parama = null;
    }
    for (;;)
    {
      paramnu.recycle();
      return parama;
      paramString = parama.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
      if ((paramString instanceof ow)) {
        parama = (ow)paramString;
      } else {
        parama = new oy(parama);
      }
    }
  }
  
  public final ow c(a parama, nu paramnu, String paramString, tj paramtj, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramnu);
    localParcel.writeString(paramString);
    mt.a(localParcel, paramtj);
    localParcel.writeInt(paramInt);
    paramnu = a(2, localParcel);
    parama = paramnu.readStrongBinder();
    if (parama == null) {
      parama = null;
    }
    for (;;)
    {
      paramnu.recycle();
      return parama;
      paramString = parama.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
      if ((paramString instanceof ow)) {
        parama = (ow)paramString;
      } else {
        parama = new oy(parama);
      }
    }
  }
  
  public final pk c(a parama, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    localParcel.writeInt(paramInt);
    localParcel = a(9, localParcel);
    parama = localParcel.readStrongBinder();
    if (parama == null) {
      parama = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return parama;
      IInterface localIInterface = parama.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
      if ((localIInterface instanceof pk)) {
        parama = (pk)localIInterface;
      } else {
        parama = new pm(parama);
      }
    }
  }
  
  public final pk m(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    localParcel = a(4, localParcel);
    parama = localParcel.readStrongBinder();
    if (parama == null) {
      parama = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return parama;
      IInterface localIInterface = parama.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
      if ((localIInterface instanceof pk)) {
        parama = (pk)localIInterface;
      } else {
        parama = new pm(parama);
      }
    }
  }
  
  public final uw n(a parama)
    throws RemoteException
  {
    Object localObject = sH();
    mt.a((Parcel)localObject, parama);
    parama = a(7, (Parcel)localObject);
    localObject = ux.z(parama.readStrongBinder());
    parama.recycle();
    return (uw)localObject;
  }
  
  public final up o(a parama)
    throws RemoteException
  {
    Object localObject = sH();
    mt.a((Parcel)localObject, parama);
    parama = a(8, (Parcel)localObject);
    localObject = uq.y(parama.readStrongBinder());
    parama.recycle();
    return (up)localObject;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */