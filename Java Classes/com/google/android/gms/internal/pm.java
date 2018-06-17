package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class pm
  extends mr
  implements pk
{
  pm(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
  }
  
  public final void A(float paramFloat)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeFloat(paramFloat);
    b(2, localParcel);
  }
  
  public final void a(a parama, String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    localParcel.writeString(paramString);
    b(5, localParcel);
  }
  
  public final void a(String paramString, a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    mt.a(localParcel, parama);
    b(6, localParcel);
  }
  
  public final void aB(boolean paramBoolean)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramBoolean);
    b(4, localParcel);
  }
  
  public final void cM(String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    b(3, localParcel);
  }
  
  public final void initialize()
    throws RemoteException
  {
    b(1, sH());
  }
  
  public final float ts()
    throws RemoteException
  {
    Parcel localParcel = a(7, sH());
    float f = localParcel.readFloat();
    localParcel.recycle();
    return f;
  }
  
  public final boolean tt()
    throws RemoteException
  {
    Parcel localParcel = a(8, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */