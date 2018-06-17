package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class ru
  extends mr
  implements rs
{
  ru(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
  }
  
  public final void q(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(1, localParcel);
  }
  
  public final void tI()
    throws RemoteException
  {
    b(2, sH());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ru.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */