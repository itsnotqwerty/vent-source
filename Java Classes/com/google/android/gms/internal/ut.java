package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class ut
  extends mr
  implements us
{
  ut(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
  }
  
  public final IBinder x(a parama)
    throws RemoteException
  {
    Object localObject = sH();
    mt.a((Parcel)localObject, parama);
    parama = a(1, (Parcel)localObject);
    localObject = parama.readStrongBinder();
    parama.recycle();
    return (IBinder)localObject;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ut.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */