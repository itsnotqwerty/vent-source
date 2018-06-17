package com.google.android.gms.internal;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.a.a;

public final class rl
  extends mr
  implements rj
{
  rl(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
  }
  
  public final Uri getUri()
    throws RemoteException
  {
    Parcel localParcel = a(2, sH());
    Uri localUri = (Uri)mt.a(localParcel, Uri.CREATOR);
    localParcel.recycle();
    return localUri;
  }
  
  public final double lB()
    throws RemoteException
  {
    Parcel localParcel = a(3, sH());
    double d = localParcel.readDouble();
    localParcel.recycle();
    return d;
  }
  
  public final a tG()
    throws RemoteException
  {
    Parcel localParcel = a(1, sH());
    a locala = a.a.j(localParcel.readStrongBinder());
    localParcel.recycle();
    return locala;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/rl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */