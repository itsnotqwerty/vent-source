package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.a;
import com.google.android.gms.common.api.Status;

public abstract class mh
  extends ms
  implements mg
{
  public mh()
  {
    attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    if (a(paramInt1, paramParcel1, paramParcel2, paramInt2)) {
      return true;
    }
    switch (paramInt1)
    {
    case 5: 
    default: 
      return false;
    case 3: 
      mt.a(paramParcel1, a.CREATOR);
      mt.a(paramParcel1, md.CREATOR);
    }
    for (;;)
    {
      paramParcel2.writeNoException();
      return true;
      mt.a(paramParcel1, Status.CREATOR);
      continue;
      mt.a(paramParcel1, Status.CREATOR);
      continue;
      mt.a(paramParcel1, Status.CREATOR);
      mt.a(paramParcel1, GoogleSignInAccount.CREATOR);
      continue;
      a((mn)mt.a(paramParcel1, mn.CREATOR));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/mh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */