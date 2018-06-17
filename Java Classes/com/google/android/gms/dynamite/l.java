package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.a.a;
import com.google.android.gms.internal.mr;
import com.google.android.gms.internal.mt;

public final class l
  extends mr
  implements k
{
  l(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
  }
  
  public final int a(a parama, String paramString, boolean paramBoolean)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    localParcel.writeString(paramString);
    mt.a(localParcel, paramBoolean);
    parama = a(3, localParcel);
    int i = parama.readInt();
    parama.recycle();
    return i;
  }
  
  public final a a(a parama, String paramString, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    localParcel.writeString(paramString);
    localParcel.writeInt(paramInt);
    parama = a(2, localParcel);
    paramString = a.a.j(parama.readStrongBinder());
    parama.recycle();
    return paramString;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/dynamite/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */