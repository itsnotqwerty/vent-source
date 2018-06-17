package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class pa
  extends mr
  implements oz
{
  pa(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
  }
  
  public final IBinder a(a parama, nu paramnu, String paramString, tj paramtj, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    mt.a(localParcel, paramnu);
    localParcel.writeString(paramString);
    mt.a(localParcel, paramtj);
    localParcel.writeInt(12211000);
    localParcel.writeInt(paramInt);
    parama = a(2, localParcel);
    paramnu = parama.readStrongBinder();
    parama.recycle();
    return paramnu;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */