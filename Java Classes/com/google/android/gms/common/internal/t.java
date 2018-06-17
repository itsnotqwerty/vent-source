package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.a.a;
import com.google.android.gms.internal.mr;

public final class t
  extends mr
  implements r
{
  t(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.common.internal.ICertData");
  }
  
  public final a oe()
    throws RemoteException
  {
    Parcel localParcel = a(1, sH());
    a locala = a.a.j(localParcel.readStrongBinder());
    localParcel.recycle();
    return locala;
  }
  
  public final int of()
    throws RemoteException
  {
    Parcel localParcel = a(2, sH());
    int i = localParcel.readInt();
    localParcel.recycle();
    return i;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */