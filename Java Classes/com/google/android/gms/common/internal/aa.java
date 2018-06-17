package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.common.u;
import com.google.android.gms.internal.mr;
import com.google.android.gms.internal.mt;

public final class aa
  extends mr
  implements y
{
  aa(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
  }
  
  public final boolean a(u paramu, a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramu);
    mt.a(localParcel, parama);
    paramu = a(5, localParcel);
    boolean bool = mt.b(paramu);
    paramu.recycle();
    return bool;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */