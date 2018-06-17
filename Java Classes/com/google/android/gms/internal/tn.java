package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.a.a;

public abstract class tn
  extends ms
  implements tm
{
  public tn()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    Object localObject1 = null;
    Object localObject2 = null;
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    Object localObject3;
    Object localObject4;
    switch (paramInt1)
    {
    default: 
      return false;
    case 1: 
      localObject1 = a.a.j(paramParcel1.readStrongBinder());
      localObject2 = (nu)mt.a(paramParcel1, nu.CREATOR);
      localObject3 = (nr)mt.a(paramParcel1, nr.CREATOR);
      localObject4 = paramParcel1.readString();
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
      {
        paramParcel1 = null;
        a((a)localObject1, (nu)localObject2, (nr)localObject3, (String)localObject4, paramParcel1);
        paramParcel2.writeNoException();
      }
      break;
    }
    for (;;)
    {
      return true;
      Object localObject5 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
      if ((localObject5 instanceof tp))
      {
        paramParcel1 = (tp)localObject5;
        break;
      }
      paramParcel1 = new tq(paramParcel1);
      break;
      paramParcel1 = tS();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      localObject1 = a.a.j(paramParcel1.readStrongBinder());
      localObject3 = (nr)mt.a(paramParcel1, nr.CREATOR);
      localObject4 = paramParcel1.readString();
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = (Parcel)localObject2;
      }
      for (;;)
      {
        a((a)localObject1, (nr)localObject3, (String)localObject4, paramParcel1);
        paramParcel2.writeNoException();
        break;
        localObject2 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        if ((localObject2 instanceof tp)) {
          paramParcel1 = (tp)localObject2;
        } else {
          paramParcel1 = new tq(paramParcel1);
        }
      }
      showInterstitial();
      paramParcel2.writeNoException();
      continue;
      destroy();
      paramParcel2.writeNoException();
      continue;
      localObject2 = a.a.j(paramParcel1.readStrongBinder());
      localObject3 = (nu)mt.a(paramParcel1, nu.CREATOR);
      localObject4 = (nr)mt.a(paramParcel1, nr.CREATOR);
      localObject5 = paramParcel1.readString();
      Object localObject6 = paramParcel1.readString();
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = (Parcel)localObject1;
      }
      for (;;)
      {
        a((a)localObject2, (nu)localObject3, (nr)localObject4, (String)localObject5, (String)localObject6, paramParcel1);
        paramParcel2.writeNoException();
        break;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        if ((localObject1 instanceof tp)) {
          paramParcel1 = (tp)localObject1;
        } else {
          paramParcel1 = new tq(paramParcel1);
        }
      }
      localObject1 = a.a.j(paramParcel1.readStrongBinder());
      localObject2 = (nr)mt.a(paramParcel1, nr.CREATOR);
      localObject3 = paramParcel1.readString();
      localObject4 = paramParcel1.readString();
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = null;
      }
      for (;;)
      {
        a((a)localObject1, (nr)localObject2, (String)localObject3, (String)localObject4, paramParcel1);
        paramParcel2.writeNoException();
        break;
        localObject5 = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        if ((localObject5 instanceof tp)) {
          paramParcel1 = (tp)localObject5;
        } else {
          paramParcel1 = new tq(paramParcel1);
        }
      }
      pause();
      paramParcel2.writeNoException();
      continue;
      resume();
      paramParcel2.writeNoException();
      continue;
      a(a.a.j(paramParcel1.readStrongBinder()), (nr)mt.a(paramParcel1, nr.CREATOR), paramParcel1.readString(), r.n(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      a((nr)mt.a(paramParcel1, nr.CREATOR), paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      showVideo();
      paramParcel2.writeNoException();
      continue;
      boolean bool = isInitialized();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      continue;
      localObject2 = a.a.j(paramParcel1.readStrongBinder());
      localObject3 = (nr)mt.a(paramParcel1, nr.CREATOR);
      localObject4 = paramParcel1.readString();
      localObject5 = paramParcel1.readString();
      localObject1 = paramParcel1.readStrongBinder();
      if (localObject1 == null) {
        localObject1 = null;
      }
      for (;;)
      {
        a((a)localObject2, (nr)localObject3, (String)localObject4, (String)localObject5, (tp)localObject1, (rd)mt.a(paramParcel1, rd.CREATOR), paramParcel1.createStringArrayList());
        paramParcel2.writeNoException();
        break;
        localObject6 = ((IBinder)localObject1).queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        if ((localObject6 instanceof tp)) {
          localObject1 = (tp)localObject6;
        } else {
          localObject1 = new tq((IBinder)localObject1);
        }
      }
      paramParcel1 = tT();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = tU();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = zzmr();
      paramParcel2.writeNoException();
      mt.b(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = getInterstitialAdapterInfo();
      paramParcel2.writeNoException();
      mt.b(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = tV();
      paramParcel2.writeNoException();
      mt.b(paramParcel2, paramParcel1);
      continue;
      a((nr)mt.a(paramParcel1, nr.CREATOR), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      s(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      continue;
      bool = tW();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      continue;
      a(a.a.j(paramParcel1.readStrongBinder()), r.n(paramParcel1.readStrongBinder()), paramParcel1.createStringArrayList());
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = tX();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      aq(mt.b(paramParcel1));
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = getVideoController();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = tY();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/tn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */