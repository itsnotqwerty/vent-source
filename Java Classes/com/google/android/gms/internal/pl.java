package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a.a;

public abstract class pl
  extends ms
  implements pk
{
  public pl()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
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
      initialize();
      paramParcel2.writeNoException();
      return true;
    case 2: 
      A(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 3: 
      cM(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 4: 
      aB(mt.b(paramParcel1));
      paramParcel2.writeNoException();
      return true;
    case 5: 
      a(a.a.j(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 6: 
      a(paramParcel1.readString(), a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 7: 
      float f = ts();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      return true;
    }
    boolean bool = tt();
    paramParcel2.writeNoException();
    mt.a(paramParcel2, bool);
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */