package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class e
  extends mr
  implements c
{
  e(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
  }
  
  public final void a(h paramh)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramh);
    b(3, localParcel);
  }
  
  public final void a(n paramn)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramn);
    b(1, localParcel);
  }
  
  public final void aq(boolean paramBoolean)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramBoolean);
    b(34, localParcel);
  }
  
  public final void b(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(9, localParcel);
  }
  
  public final void c(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(10, localParcel);
  }
  
  public final void d(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(11, localParcel);
  }
  
  public final void destroy()
    throws RemoteException
  {
    b(8, sH());
  }
  
  public final String getMediationAdapterClassName()
    throws RemoteException
  {
    Parcel localParcel = a(12, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final boolean isLoaded()
    throws RemoteException
  {
    Parcel localParcel = a(5, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final void pause()
    throws RemoteException
  {
    b(6, sH());
  }
  
  public final void resume()
    throws RemoteException
  {
    b(7, sH());
  }
  
  public final void setUserId(String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    b(13, localParcel);
  }
  
  public final void show()
    throws RemoteException
  {
    b(2, sH());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */