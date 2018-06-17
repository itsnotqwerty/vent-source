package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class pq
  extends ms
  implements pp
{
  public pq()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.client.IVideoController");
  }
  
  public static pp r(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
    if ((localIInterface instanceof pp)) {
      return (pp)localIInterface;
    }
    return new pr(paramIBinder);
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
      play();
      paramParcel2.writeNoException();
    }
    for (;;)
    {
      return true;
      pause();
      paramParcel2.writeNoException();
      continue;
      aC(mt.b(paramParcel1));
      paramParcel2.writeNoException();
      continue;
      boolean bool = isMuted();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      continue;
      paramInt1 = tu();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
      continue;
      float f = tv();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      continue;
      f = tw();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      continue;
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = null;
      }
      for (;;)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        break;
        IInterface localIInterface = paramParcel1.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
        if ((localIInterface instanceof ps)) {
          paramParcel1 = (ps)localIInterface;
        } else {
          paramParcel1 = new pu(paramParcel1);
        }
      }
      f = tx();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      continue;
      bool = ty();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      continue;
      paramParcel1 = tz();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      bool = tA();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */