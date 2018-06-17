package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class ox
  extends ms
  implements ow
{
  public ox()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.client.IAdManager");
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    IInterface localIInterface = null;
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    Object localObject6 = null;
    Object localObject7 = null;
    Object localObject1 = null;
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    switch (paramInt1)
    {
    case 16: 
    case 17: 
    case 27: 
    case 28: 
    default: 
      return false;
    case 1: 
      paramParcel1 = tn();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
    }
    for (;;)
    {
      return true;
      destroy();
      paramParcel2.writeNoException();
      continue;
      boolean bool = kC();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      continue;
      bool = b((nr)mt.a(paramParcel1, nr.CREATOR));
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      continue;
      pause();
      paramParcel2.writeNoException();
      continue;
      resume();
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = (Parcel)localObject1;
      }
      for (;;)
      {
        b(paramParcel1);
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
        paramParcel1 = localIInterface;
      }
      for (;;)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        break;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
        if ((localObject1 instanceof pb)) {
          paramParcel1 = (pb)localObject1;
        } else {
          paramParcel1 = new pd(paramParcel1);
        }
      }
      showInterstitial();
      paramParcel2.writeNoException();
      continue;
      stopLoading();
      paramParcel2.writeNoException();
      continue;
      to();
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = tp();
      paramParcel2.writeNoException();
      mt.b(paramParcel2, paramParcel1);
      continue;
      a((nu)mt.a(paramParcel1, nu.CREATOR));
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = (Parcel)localObject2;
      }
      for (;;)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        break;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
        if ((localObject1 instanceof uu)) {
          paramParcel1 = (uu)localObject1;
        } else {
          paramParcel1 = new uv(paramParcel1);
        }
      }
      localObject1 = paramParcel1.readStrongBinder();
      if (localObject1 == null) {
        localObject1 = localObject3;
      }
      for (;;)
      {
        a((uz)localObject1, paramParcel1.readString());
        paramParcel2.writeNoException();
        break;
        localIInterface = ((IBinder)localObject1).queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
        if ((localIInterface instanceof uz)) {
          localObject1 = (uz)localIInterface;
        } else {
          localObject1 = new va((IBinder)localObject1);
        }
      }
      paramParcel1 = getMediationAdapterClassName();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      continue;
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = (Parcel)localObject4;
      }
      for (;;)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        break;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
        if ((localObject1 instanceof qy)) {
          paramParcel1 = (qy)localObject1;
        } else {
          paramParcel1 = new ra(paramParcel1);
        }
      }
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = (Parcel)localObject5;
      }
      for (;;)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        break;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
        if ((localObject1 instanceof oi)) {
          paramParcel1 = (oi)localObject1;
        } else {
          paramParcel1 = new ok(paramParcel1);
        }
      }
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = (Parcel)localObject6;
      }
      for (;;)
      {
        b(paramParcel1);
        paramParcel2.writeNoException();
        break;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
        if ((localObject1 instanceof ph)) {
          paramParcel1 = (ph)localObject1;
        } else {
          paramParcel1 = new pj(paramParcel1);
        }
      }
      setManualImpressionsEnabled(mt.b(paramParcel1));
      paramParcel2.writeNoException();
      continue;
      bool = isLoading();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      continue;
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = (Parcel)localObject7;
      }
      for (;;)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        break;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
        if ((localObject1 instanceof h)) {
          paramParcel1 = (h)localObject1;
        } else {
          paramParcel1 = new j(paramParcel1);
        }
      }
      setUserId(paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = getVideoController();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      a((qq)mt.a(paramParcel1, qq.CREATOR));
      paramParcel2.writeNoException();
      continue;
      a((pv)mt.a(paramParcel1, pv.CREATOR));
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = getAdUnitId();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      continue;
      paramParcel1 = tq();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = tr();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      aq(mt.b(paramParcel1));
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = tl();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */