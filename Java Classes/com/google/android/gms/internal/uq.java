package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a.a;

public abstract class uq
  extends ms
  implements up
{
  public static up y(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    if ((localIInterface instanceof up)) {
      return (up)localIInterface;
    }
    return new ur(paramIBinder);
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
      onCreate((Bundle)mt.a(paramParcel1, Bundle.CREATOR));
      paramParcel2.writeNoException();
    }
    for (;;)
    {
      return true;
      onRestart();
      paramParcel2.writeNoException();
      continue;
      onStart();
      paramParcel2.writeNoException();
      continue;
      onResume();
      paramParcel2.writeNoException();
      continue;
      onPause();
      paramParcel2.writeNoException();
      continue;
      paramParcel1 = (Bundle)mt.a(paramParcel1, Bundle.CREATOR);
      onSaveInstanceState(paramParcel1);
      paramParcel2.writeNoException();
      mt.b(paramParcel2, paramParcel1);
      continue;
      onStop();
      paramParcel2.writeNoException();
      continue;
      onDestroy();
      paramParcel2.writeNoException();
      continue;
      lw();
      paramParcel2.writeNoException();
      continue;
      onBackPressed();
      paramParcel2.writeNoException();
      continue;
      boolean bool = ub();
      paramParcel2.writeNoException();
      mt.a(paramParcel2, bool);
      continue;
      onActivityResult(paramParcel1.readInt(), paramParcel1.readInt(), (Intent)mt.a(paramParcel1, Intent.CREATOR));
      paramParcel2.writeNoException();
      continue;
      w(a.a.j(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/uq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */