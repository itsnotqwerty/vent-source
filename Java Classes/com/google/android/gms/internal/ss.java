package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class ss
  extends mr
  implements sq
{
  ss(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
  }
  
  public final void b(sd paramsd)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramsd);
    b(1, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ss.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */