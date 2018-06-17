package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class i
  extends ms
  implements h
{
  public i()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
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
      lq();
    }
    for (;;)
    {
      paramParcel2.writeNoException();
      return true;
      lr();
      continue;
      ls();
      continue;
      lt();
      continue;
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = null;
      }
      for (;;)
      {
        a(paramParcel1);
        break;
        IInterface localIInterface = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardItem");
        if ((localIInterface instanceof a)) {
          paramParcel1 = (a)localIInterface;
        } else {
          paramParcel1 = new b(paramParcel1);
        }
      }
      lu();
      continue;
      cw(paramParcel1.readInt());
      continue;
      lv();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */