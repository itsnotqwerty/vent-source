package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.a.a;

public final class rp
  extends mr
  implements rn
{
  rp(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
  }
  
  public final void b(String paramString, a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    mt.a(localParcel, parama);
    b(1, localParcel);
  }
  
  public final a cP(String paramString)
    throws RemoteException
  {
    Object localObject = sH();
    ((Parcel)localObject).writeString(paramString);
    paramString = a(2, (Parcel)localObject);
    localObject = a.a.j(paramString.readStrongBinder());
    paramString.recycle();
    return (a)localObject;
  }
  
  public final void d(a parama, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    localParcel.writeInt(paramInt);
    b(5, localParcel);
  }
  
  public final void destroy()
    throws RemoteException
  {
    b(4, sH());
  }
  
  public final void q(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(3, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/rp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */