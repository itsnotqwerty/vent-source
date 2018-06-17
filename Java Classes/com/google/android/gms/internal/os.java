package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.b.j;

public abstract class os
  extends ms
  implements or
{
  public os()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    String str = null;
    IInterface localIInterface1 = null;
    IInterface localIInterface2 = null;
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject1 = null;
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    switch (paramInt1)
    {
    default: 
      return false;
    case 1: 
      paramParcel1 = tm();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 9: 
      for (;;)
      {
        return true;
        paramParcel1 = paramParcel1.readStrongBinder();
        if (paramParcel1 == null) {
          paramParcel1 = null;
        }
        for (;;)
        {
          a(paramParcel1);
          paramParcel2.writeNoException();
          break;
          localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
          if ((localObject1 instanceof ol)) {
            paramParcel1 = (ol)localObject1;
          } else {
            paramParcel1 = new on(paramParcel1);
          }
        }
        paramParcel1 = paramParcel1.readStrongBinder();
        if (paramParcel1 == null) {
          paramParcel1 = (Parcel)localObject1;
        }
        for (;;)
        {
          a(paramParcel1);
          paramParcel2.writeNoException();
          break;
          localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
          if ((localObject1 instanceof sh)) {
            paramParcel1 = (sh)localObject1;
          } else {
            paramParcel1 = new sj(paramParcel1);
          }
        }
        paramParcel1 = paramParcel1.readStrongBinder();
        if (paramParcel1 == null) {
          paramParcel1 = str;
        }
        for (;;)
        {
          a(paramParcel1);
          paramParcel2.writeNoException();
          break;
          localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
          if ((localObject1 instanceof sk)) {
            paramParcel1 = (sk)localObject1;
          } else {
            paramParcel1 = new sm(paramParcel1);
          }
        }
        str = paramParcel1.readString();
        localObject1 = paramParcel1.readStrongBinder();
        if (localObject1 == null)
        {
          localObject1 = null;
          label314:
          paramParcel1 = paramParcel1.readStrongBinder();
          if (paramParcel1 != null) {
            break label385;
          }
          paramParcel1 = localIInterface1;
        }
        for (;;)
        {
          a(str, (sq)localObject1, paramParcel1);
          paramParcel2.writeNoException();
          break;
          localIInterface2 = ((IBinder)localObject1).queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
          if ((localIInterface2 instanceof sq))
          {
            localObject1 = (sq)localIInterface2;
            break label314;
          }
          localObject1 = new ss((IBinder)localObject1);
          break label314;
          label385:
          localIInterface1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
          if ((localIInterface1 instanceof sn)) {
            paramParcel1 = (sn)localIInterface1;
          } else {
            paramParcel1 = new sp(paramParcel1);
          }
        }
        a((rd)mt.a(paramParcel1, rd.CREATOR));
        paramParcel2.writeNoException();
        continue;
        paramParcel1 = paramParcel1.readStrongBinder();
        if (paramParcel1 == null) {
          paramParcel1 = localIInterface2;
        }
        for (;;)
        {
          a(paramParcel1);
          paramParcel2.writeNoException();
          break;
          localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
          if ((localObject1 instanceof ph)) {
            paramParcel1 = (ph)localObject1;
          } else {
            paramParcel1 = new pj(paramParcel1);
          }
        }
        localObject1 = paramParcel1.readStrongBinder();
        if (localObject1 == null) {
          localObject1 = localObject2;
        }
        for (;;)
        {
          a((st)localObject1, (nu)mt.a(paramParcel1, nu.CREATOR));
          paramParcel2.writeNoException();
          break;
          localIInterface1 = ((IBinder)localObject1).queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
          if ((localIInterface1 instanceof st)) {
            localObject1 = (st)localIInterface1;
          } else {
            localObject1 = new su((IBinder)localObject1);
          }
        }
        a((j)mt.a(paramParcel1, j.CREATOR));
        paramParcel2.writeNoException();
      }
    }
    paramParcel1 = paramParcel1.readStrongBinder();
    if (paramParcel1 == null) {
      paramParcel1 = (Parcel)localObject3;
    }
    for (;;)
    {
      a(paramParcel1);
      paramParcel2.writeNoException();
      break;
      localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
      if ((localObject1 instanceof sv)) {
        paramParcel1 = (sv)localObject1;
      } else {
        paramParcel1 = new sx(paramParcel1);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/os.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */