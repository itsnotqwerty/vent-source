package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.a.a;
import java.util.ArrayList;
import java.util.List;

public final class sz
  extends mr
  implements sy
{
  sz(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
  }
  
  public final String getBody()
    throws RemoteException
  {
    Parcel localParcel = a(4, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final pp getVideoController()
    throws RemoteException
  {
    Parcel localParcel = a(11, sH());
    pp localpp = pq.r(localParcel.readStrongBinder());
    localParcel.recycle();
    return localpp;
  }
  
  public final List lD()
    throws RemoteException
  {
    Parcel localParcel = a(3, sH());
    ArrayList localArrayList = mt.c(localParcel);
    localParcel.recycle();
    return localArrayList;
  }
  
  public final String lN()
    throws RemoteException
  {
    Parcel localParcel = a(2, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final String lO()
    throws RemoteException
  {
    Parcel localParcel = a(6, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final String lP()
    throws RemoteException
  {
    Parcel localParcel = a(7, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final String lQ()
    throws RemoteException
  {
    Parcel localParcel = a(9, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final String lR()
    throws RemoteException
  {
    Parcel localParcel = a(10, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final rj tK()
    throws RemoteException
  {
    Parcel localParcel = a(5, sH());
    Object localObject = localParcel.readStrongBinder();
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return (rj)localObject;
      IInterface localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
      if ((localIInterface instanceof rj)) {
        localObject = (rj)localIInterface;
      } else {
        localObject = new rl((IBinder)localObject);
      }
    }
  }
  
  public final double tL()
    throws RemoteException
  {
    Parcel localParcel = a(8, sH());
    double d = localParcel.readDouble();
    localParcel.recycle();
    return d;
  }
  
  public final rf tM()
    throws RemoteException
  {
    Parcel localParcel = a(14, sH());
    Object localObject = localParcel.readStrongBinder();
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return (rf)localObject;
      IInterface localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
      if ((localIInterface instanceof rf)) {
        localObject = (rf)localIInterface;
      } else {
        localObject = new rh((IBinder)localObject);
      }
    }
  }
  
  public final a tR()
    throws RemoteException
  {
    Parcel localParcel = a(19, sH());
    a locala = a.a.j(localParcel.readStrongBinder());
    localParcel.recycle();
    return locala;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/sz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */