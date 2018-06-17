package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.a.a;
import com.google.android.gms.internal.mr;
import com.google.android.gms.internal.mt;

public final class n
  extends mr
  implements m
{
  n(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
  }
  
  public final a a(a parama1, String paramString, int paramInt, a parama2)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama1);
    localParcel.writeString(paramString);
    localParcel.writeInt(paramInt);
    mt.a(localParcel, parama2);
    parama1 = a(2, localParcel);
    paramString = a.a.j(parama1.readStrongBinder());
    parama1.recycle();
    return paramString;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/dynamite/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */