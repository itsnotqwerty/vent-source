package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a.a;

public abstract class tv
  extends ms
  implements tu
{
  public tv()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    boolean bool;
    switch (paramInt1)
    {
    case 17: 
    case 18: 
    default: 
      return false;
    case 2: 
      paramParcel1 = lN();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    case 3: 
      paramParcel1 = lD();
      paramParcel2.writeNoException();
      paramParcel2.writeList(paramParcel1);
      return true;
    case 4: 
      paramParcel1 = getBody();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    case 5: 
      paramParcel1 = tN();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    case 6: 
      paramParcel1 = lO();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    case 7: 
      paramParcel1 = lP();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    case 8: 
      tP();
      paramParcel2.writeNoException();
      return true;
    case 9: 
      t(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 10: 
      u(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 11: 
      bool = mt();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      return true;
    case 12: 
      bool = mu();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      return true;
    case 13: 
      paramParcel1 = getExtras();
      paramParcel2.writeNoException();
      mt.b(paramParcel2, paramParcel1);
      return true;
    case 14: 
      v(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 15: 
      paramParcel1 = tZ();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    case 16: 
      paramParcel1 = getVideoController();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    case 19: 
      paramParcel1 = tM();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    case 20: 
      paramParcel1 = ua();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    case 21: 
      paramParcel1 = tR();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, paramParcel1);
      return true;
    }
    b(a.a.j(paramParcel1.readStrongBinder()), a.a.j(paramParcel1.readStrongBinder()), a.a.j(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/tv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */