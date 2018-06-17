package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class po
  extends mr
  implements pn
{
  po(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
  }
  
  public final IBinder p(a parama)
    throws RemoteException
  {
    Object localObject = sH();
    mt.a((Parcel)localObject, parama);
    ((Parcel)localObject).writeInt(12211000);
    parama = a(1, (Parcel)localObject);
    localObject = parama.readStrongBinder();
    parama.recycle();
    return (IBinder)localObject;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/po.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */