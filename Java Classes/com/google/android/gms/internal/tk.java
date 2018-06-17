package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class tk
  extends ms
  implements tj
{
  public tk()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
  }
  
  public static tj x(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    if ((localIInterface instanceof tj)) {
      return (tj)localIInterface;
    }
    return new tl(paramIBinder);
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
      paramParcel1 = cT(paramParcel1.readString());
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    }
    boolean bool = cU(paramParcel1.readString());
    paramParcel2.writeNoException();
    mt.a(paramParcel2, bool);
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/tk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */