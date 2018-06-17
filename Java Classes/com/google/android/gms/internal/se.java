package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a.a;

public abstract class se
  extends ms
  implements sd
{
  public static sd w(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    if ((localIInterface instanceof sd)) {
      return (sd)localIInterface;
    }
    return new sf(paramIBinder);
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
      paramParcel1 = cQ(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    case 2: 
      paramParcel1 = cR(paramParcel1.readString());
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    case 3: 
      paramParcel1 = tO();
      paramParcel2.writeNoException();
      paramParcel2.writeStringList(paramParcel1);
      return true;
    case 4: 
      paramParcel1 = lM();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    case 5: 
      cS(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 6: 
      tP();
      paramParcel2.writeNoException();
      return true;
    case 7: 
      paramParcel1 = getVideoController();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    case 8: 
      destroy();
      paramParcel2.writeNoException();
      return true;
    case 9: 
      paramParcel1 = tQ();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    case 10: 
      boolean bool = r(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      return true;
    }
    paramParcel1 = tJ();
    paramParcel2.writeNoException();
    mt.a(paramParcel2, paramParcel1);
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/se.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */