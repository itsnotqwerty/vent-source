package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.a.a;

public final class oy
  extends mr
  implements ow
{
  oy(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IAdManager");
  }
  
  public final void a(h paramh)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramh);
    b(24, localParcel);
  }
  
  public final void a(nu paramnu)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramnu);
    b(13, localParcel);
  }
  
  public final void a(oi paramoi)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramoi);
    b(20, localParcel);
  }
  
  public final void a(pb parampb)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parampb);
    b(8, localParcel);
  }
  
  public final void a(pv parampv)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parampv);
    b(30, localParcel);
  }
  
  public final void a(qq paramqq)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramqq);
    b(29, localParcel);
  }
  
  public final void a(qy paramqy)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramqy);
    b(19, localParcel);
  }
  
  public final void a(uu paramuu)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramuu);
    b(14, localParcel);
  }
  
  public final void a(uz paramuz, String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramuz);
    localParcel.writeString(paramString);
    b(15, localParcel);
  }
  
  public final void aq(boolean paramBoolean)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramBoolean);
    b(34, localParcel);
  }
  
  public final void b(ol paramol)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramol);
    b(7, localParcel);
  }
  
  public final void b(ph paramph)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramph);
    b(21, localParcel);
  }
  
  public final boolean b(nr paramnr)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramnr);
    paramnr = a(4, localParcel);
    boolean bool = mt.b(paramnr);
    paramnr.recycle();
    return bool;
  }
  
  public final void destroy()
    throws RemoteException
  {
    b(2, sH());
  }
  
  public final String getAdUnitId()
    throws RemoteException
  {
    Parcel localParcel = a(31, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final String getMediationAdapterClassName()
    throws RemoteException
  {
    Parcel localParcel = a(18, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final pp getVideoController()
    throws RemoteException
  {
    Parcel localParcel = a(26, sH());
    Object localObject = localParcel.readStrongBinder();
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return (pp)localObject;
      IInterface localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
      if ((localIInterface instanceof pp)) {
        localObject = (pp)localIInterface;
      } else {
        localObject = new pr((IBinder)localObject);
      }
    }
  }
  
  public final boolean isLoading()
    throws RemoteException
  {
    Parcel localParcel = a(23, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final boolean kC()
    throws RemoteException
  {
    Parcel localParcel = a(3, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final void pause()
    throws RemoteException
  {
    b(5, sH());
  }
  
  public final void resume()
    throws RemoteException
  {
    b(6, sH());
  }
  
  public final void setManualImpressionsEnabled(boolean paramBoolean)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramBoolean);
    b(22, localParcel);
  }
  
  public final void setUserId(String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    b(25, localParcel);
  }
  
  public final void showInterstitial()
    throws RemoteException
  {
    b(9, sH());
  }
  
  public final void stopLoading()
    throws RemoteException
  {
    b(10, sH());
  }
  
  public final String tl()
    throws RemoteException
  {
    Parcel localParcel = a(35, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final a tn()
    throws RemoteException
  {
    Parcel localParcel = a(1, sH());
    a locala = a.a.j(localParcel.readStrongBinder());
    localParcel.recycle();
    return locala;
  }
  
  public final void to()
    throws RemoteException
  {
    b(11, sH());
  }
  
  public final nu tp()
    throws RemoteException
  {
    Parcel localParcel = a(12, sH());
    nu localnu = (nu)mt.a(localParcel, nu.CREATOR);
    localParcel.recycle();
    return localnu;
  }
  
  public final pb tq()
    throws RemoteException
  {
    Parcel localParcel = a(32, sH());
    Object localObject = localParcel.readStrongBinder();
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return (pb)localObject;
      IInterface localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
      if ((localIInterface instanceof pb)) {
        localObject = (pb)localIInterface;
      } else {
        localObject = new pd((IBinder)localObject);
      }
    }
  }
  
  public final ol tr()
    throws RemoteException
  {
    Parcel localParcel = a(33, sH());
    Object localObject = localParcel.readStrongBinder();
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return (ol)localObject;
      IInterface localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
      if ((localIInterface instanceof ol)) {
        localObject = (ol)localIInterface;
      } else {
        localObject = new on((IBinder)localObject);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/oy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */