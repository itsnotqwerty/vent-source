package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class g
  extends mr
  implements f
{
  g(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
  }
  
  public final IBinder a(a parama, tj paramtj)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramtj);
    localParcel.writeInt(12211000);
    parama = a(1, localParcel);
    paramtj = parama.readStrongBinder();
    parama.recycle();
    return paramtj;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */