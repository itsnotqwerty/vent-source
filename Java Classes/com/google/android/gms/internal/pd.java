package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class pd
  extends mr
  implements pb
{
  pd(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IAppEventListener");
  }
  
  public final void m(String paramString1, String paramString2)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    b(1, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */