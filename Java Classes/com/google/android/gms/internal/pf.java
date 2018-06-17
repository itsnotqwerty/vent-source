package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a.a;

public abstract class pf
  extends ms
  implements pe
{
  public static pe q(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
    if ((localIInterface instanceof pe)) {
      return (pe)localIInterface;
    }
    return new pg(paramIBinder);
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
      paramParcel1 = b(a.a.j(paramParcel1.readStrongBinder()), (nu)mt.a(paramParcel1, nu.CREATOR), paramParcel1.readString(), tk.x(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
    }
    for (;;)
    {
      return true;
      paramParcel1 = c(a.a.j(paramParcel1.readStrongBinder()), (nu)mt.a(paramParcel1, nu.CREATOR), paramParcel1.readString(), tk.x(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = a(a.a.j(paramParcel1.readStrongBinder()), paramParcel1.readString(), tk.x(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = m(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = a(a.a.j(paramParcel1.readStrongBinder()), a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = a(a.a.j(paramParcel1.readStrongBinder()), tk.x(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = n(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = o(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = c(a.a.j(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = a(a.a.j(paramParcel1.readStrongBinder()), (nu)mt.a(paramParcel1, nu.CREATOR), paramParcel1.readString(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      continue;
      paramParcel1 = a(a.a.j(paramParcel1.readStrongBinder()), a.a.j(paramParcel1.readStrongBinder()), a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */