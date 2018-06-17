package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class gu
  extends ms
  implements gt
{
  public gu()
  {
    attachInterface(this, "com.google.android.gms.measurement.internal.IMeasurementService");
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    switch (paramInt1)
    {
    case 3: 
    case 8: 
    default: 
      return false;
    case 1: 
      a((gp)mt.a(paramParcel1, gp.CREATOR), (fx)mt.a(paramParcel1, fx.CREATOR));
      paramParcel2.writeNoException();
    }
    for (;;)
    {
      return true;
      a((lb)mt.a(paramParcel1, lb.CREATOR), (fx)mt.a(paramParcel1, fx.CREATOR));
      paramParcel2.writeNoException();
      continue;
      a((fx)mt.a(paramParcel1, fx.CREATOR));
      paramParcel2.writeNoException();
      continue;
      a((gp)mt.a(paramParcel1, gp.CREATOR), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      b((fx)mt.a(paramParcel1, fx.CREATOR));
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = a((fx)mt.a(paramParcel1, fx.CREATOR), mt.b(paramParcel1));
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(paramParcel1);
      continue;
      paramParcel1 = a((gp)mt.a(paramParcel1, gp.CREATOR), paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeByteArray(paramParcel1);
      continue;
      a(paramParcel1.readLong(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = c((fx)mt.a(paramParcel1, fx.CREATOR));
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      continue;
      a((ga)mt.a(paramParcel1, ga.CREATOR), (fx)mt.a(paramParcel1, fx.CREATOR));
      paramParcel2.writeNoException();
      continue;
      b((ga)mt.a(paramParcel1, ga.CREATOR));
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = a(paramParcel1.readString(), paramParcel1.readString(), mt.b(paramParcel1), (fx)mt.a(paramParcel1, fx.CREATOR));
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(paramParcel1);
      continue;
      paramParcel1 = b(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), mt.b(paramParcel1));
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(paramParcel1);
      continue;
      paramParcel1 = a(paramParcel1.readString(), paramParcel1.readString(), (fx)mt.a(paramParcel1, fx.CREATOR));
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(paramParcel1);
      continue;
      paramParcel1 = e(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(paramParcel1);
      continue;
      d((fx)mt.a(paramParcel1, fx.CREATOR));
      paramParcel2.writeNoException();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */