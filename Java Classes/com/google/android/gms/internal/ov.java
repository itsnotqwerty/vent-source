package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class ov
  extends mr
  implements ou
{
  ov(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
  }
  
  public final IBinder a(a parama, String paramString, tj paramtj)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    localParcel.writeString(paramString);
    mt.a(localParcel, paramtj);
    localParcel.writeInt(12211000);
    parama = a(1, localParcel);
    paramString = parama.readStrongBinder();
    parama.recycle();
    return paramString;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ov.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */