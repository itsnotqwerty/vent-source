package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a.a;

public abstract class r
  extends ms
  implements q
{
  public static q n(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    if ((localIInterface instanceof q)) {
      return (q)localIInterface;
    }
    return new s(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    switch (paramInt1)
    {
    default: 
      return false;
    case 1: 
      e(a.a.j(paramParcel1.readStrongBinder()));
    }
    for (;;)
    {
      paramParcel2.writeNoException();
      return true;
      a(a.a.j(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      continue;
      f(a.a.j(paramParcel1.readStrongBinder()));
      continue;
      g(a.a.j(paramParcel1.readStrongBinder()));
      continue;
      h(a.a.j(paramParcel1.readStrongBinder()));
      continue;
      i(a.a.j(paramParcel1.readStrongBinder()));
      continue;
      a(a.a.j(paramParcel1.readStrongBinder()), (u)mt.a(paramParcel1, u.CREATOR));
      continue;
      j(a.a.j(paramParcel1.readStrongBinder()));
      continue;
      b(a.a.j(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      continue;
      k(a.a.j(paramParcel1.readStrongBinder()));
      continue;
      l(a.a.j(paramParcel1.readStrongBinder()));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */