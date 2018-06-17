package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ms;
import com.google.android.gms.internal.mt;

public abstract class v
  extends ms
  implements u
{
  public v()
  {
    attachInterface(this, "com.google.android.gms.common.internal.IGmsCallbacks");
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
      a(paramParcel1.readInt(), paramParcel1.readStrongBinder(), (Bundle)mt.a(paramParcel1, Bundle.CREATOR));
    }
    for (;;)
    {
      paramParcel2.writeNoException();
      return true;
      paramParcel1.readInt();
      mt.a(paramParcel1, Bundle.CREATOR);
      og();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */