package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class op
  extends ms
  implements oo
{
  public op()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.client.IAdLoader");
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
      a((nr)mt.a(paramParcel1, nr.CREATOR));
      paramParcel2.writeNoException();
    }
    for (;;)
    {
      return true;
      paramParcel1 = getMediationAdapterClassName();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      continue;
      boolean bool = isLoading();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      continue;
      paramParcel1 = tl();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      continue;
      a((nr)mt.a(paramParcel1, nr.CREATOR), paramParcel1.readInt());
      paramParcel2.writeNoException();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/op.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */