package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class tl
  extends mr
  implements tj
{
  tl(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
  }
  
  public final tm cT(String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    localParcel = a(1, localParcel);
    paramString = localParcel.readStrongBinder();
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return paramString;
      IInterface localIInterface = paramString.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
      if ((localIInterface instanceof tm)) {
        paramString = (tm)localIInterface;
      } else {
        paramString = new to(paramString);
      }
    }
  }
  
  public final boolean cU(String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    paramString = a(2, localParcel);
    boolean bool = mt.b(paramString);
    paramString.recycle();
    return bool;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/tl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */