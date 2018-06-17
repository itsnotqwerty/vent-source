package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.n;

public final class mj
  extends mr
  implements mi
{
  mj(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.signin.internal.ISignInService");
  }
  
  public final void a(n paramn, int paramInt, boolean paramBoolean)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramn);
    localParcel.writeInt(paramInt);
    mt.a(localParcel, paramBoolean);
    b(9, localParcel);
  }
  
  public final void a(ml paramml, mg parammg)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramml);
    mt.a(localParcel, parammg);
    b(12, localParcel);
  }
  
  public final void cS(int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeInt(paramInt);
    b(7, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/mj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */