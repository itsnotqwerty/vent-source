package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class so
  extends ms
  implements sn
{
  public so()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    if (paramInt1 == 1)
    {
      Object localObject = paramParcel1.readStrongBinder();
      if (localObject == null) {
        localObject = null;
      }
      for (;;)
      {
        a((sd)localObject, paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
        IInterface localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        if ((localIInterface instanceof sd)) {
          localObject = (sd)localIInterface;
        } else {
          localObject = new sf((IBinder)localObject);
        }
      }
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/so.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */