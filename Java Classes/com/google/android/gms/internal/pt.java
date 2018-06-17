package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class pt
  extends ms
  implements ps
{
  public pt()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
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
      tB();
    }
    for (;;)
    {
      paramParcel2.writeNoException();
      return true;
      tC();
      continue;
      tD();
      continue;
      tE();
      continue;
      aD(mt.b(paramParcel1));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */