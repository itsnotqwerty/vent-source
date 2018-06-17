package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.a.a;
import java.util.List;

public final class to
  extends mr
  implements tm
{
  to(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
  }
  
  public final void a(a parama, nr paramnr, String paramString1, q paramq, String paramString2)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramnr);
    localParcel.writeString(paramString1);
    mt.a(localParcel, paramq);
    localParcel.writeString(paramString2);
    b(10, localParcel);
  }
  
  public final void a(a parama, nr paramnr, String paramString, tp paramtp)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramnr);
    localParcel.writeString(paramString);
    mt.a(localParcel, paramtp);
    b(3, localParcel);
  }
  
  public final void a(a parama, nr paramnr, String paramString1, String paramString2, tp paramtp)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramnr);
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    mt.a(localParcel, paramtp);
    b(7, localParcel);
  }
  
  public final void a(a parama, nr paramnr, String paramString1, String paramString2, tp paramtp, rd paramrd, List<String> paramList)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramnr);
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    mt.a(localParcel, paramtp);
    mt.a(localParcel, paramrd);
    localParcel.writeStringList(paramList);
    b(14, localParcel);
  }
  
  public final void a(a parama, nu paramnu, nr paramnr, String paramString, tp paramtp)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramnu);
    mt.a(localParcel, paramnr);
    localParcel.writeString(paramString);
    mt.a(localParcel, paramtp);
    b(1, localParcel);
  }
  
  public final void a(a parama, nu paramnu, nr paramnr, String paramString1, String paramString2, tp paramtp)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramnu);
    mt.a(localParcel, paramnr);
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    mt.a(localParcel, paramtp);
    b(6, localParcel);
  }
  
  public final void a(a parama, q paramq, List<String> paramList)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramq);
    localParcel.writeStringList(paramList);
    b(23, localParcel);
  }
  
  public final void a(nr paramnr, String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramnr);
    localParcel.writeString(paramString);
    b(11, localParcel);
  }
  
  public final void a(nr paramnr, String paramString1, String paramString2)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramnr);
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    b(20, localParcel);
  }
  
  public final void aq(boolean paramBoolean)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramBoolean);
    b(25, localParcel);
  }
  
  public final void destroy()
    throws RemoteException
  {
    b(5, sH());
  }
  
  public final Bundle getInterstitialAdapterInfo()
    throws RemoteException
  {
    Parcel localParcel = a(18, sH());
    Bundle localBundle = (Bundle)mt.a(localParcel, Bundle.CREATOR);
    localParcel.recycle();
    return localBundle;
  }
  
  public final pp getVideoController()
    throws RemoteException
  {
    Parcel localParcel = a(26, sH());
    pp localpp = pq.r(localParcel.readStrongBinder());
    localParcel.recycle();
    return localpp;
  }
  
  public final boolean isInitialized()
    throws RemoteException
  {
    Parcel localParcel = a(13, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final void pause()
    throws RemoteException
  {
    b(8, sH());
  }
  
  public final void resume()
    throws RemoteException
  {
    b(9, sH());
  }
  
  public final void s(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(21, localParcel);
  }
  
  public final void showInterstitial()
    throws RemoteException
  {
    b(4, sH());
  }
  
  public final void showVideo()
    throws RemoteException
  {
    b(12, sH());
  }
  
  public final a tS()
    throws RemoteException
  {
    Parcel localParcel = a(2, sH());
    a locala = a.a.j(localParcel.readStrongBinder());
    localParcel.recycle();
    return locala;
  }
  
  public final tr tT()
    throws RemoteException
  {
    Parcel localParcel = a(15, sH());
    Object localObject = localParcel.readStrongBinder();
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return (tr)localObject;
      IInterface localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
      if ((localIInterface instanceof tr)) {
        localObject = (tr)localIInterface;
      } else {
        localObject = new tt((IBinder)localObject);
      }
    }
  }
  
  public final tu tU()
    throws RemoteException
  {
    Parcel localParcel = a(16, sH());
    Object localObject = localParcel.readStrongBinder();
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return (tu)localObject;
      IInterface localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
      if ((localIInterface instanceof tu)) {
        localObject = (tu)localIInterface;
      } else {
        localObject = new tw((IBinder)localObject);
      }
    }
  }
  
  public final Bundle tV()
    throws RemoteException
  {
    Parcel localParcel = a(19, sH());
    Bundle localBundle = (Bundle)mt.a(localParcel, Bundle.CREATOR);
    localParcel.recycle();
    return localBundle;
  }
  
  public final boolean tW()
    throws RemoteException
  {
    Parcel localParcel = a(22, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final sd tX()
    throws RemoteException
  {
    Parcel localParcel = a(24, sH());
    sd localsd = se.w(localParcel.readStrongBinder());
    localParcel.recycle();
    return localsd;
  }
  
  public final tx tY()
    throws RemoteException
  {
    Parcel localParcel = a(27, sH());
    Object localObject = localParcel.readStrongBinder();
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return (tx)localObject;
      IInterface localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
      if ((localIInterface instanceof tx)) {
        localObject = (tx)localIInterface;
      } else {
        localObject = new tz((IBinder)localObject);
      }
    }
  }
  
  public final Bundle zzmr()
    throws RemoteException
  {
    Parcel localParcel = a(17, sH());
    Bundle localBundle = (Bundle)mt.a(localParcel, Bundle.CREATOR);
    localParcel.recycle();
    return localBundle;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/to.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */