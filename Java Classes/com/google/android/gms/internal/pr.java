package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class pr
  extends mr
  implements pp
{
  pr(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.client.IVideoController");
  }
  
  public final void a(ps paramps)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramps);
    b(8, localParcel);
  }
  
  public final void aC(boolean paramBoolean)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramBoolean);
    b(3, localParcel);
  }
  
  public final boolean isMuted()
    throws RemoteException
  {
    Parcel localParcel = a(4, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final void pause()
    throws RemoteException
  {
    b(2, sH());
  }
  
  public final void play()
    throws RemoteException
  {
    b(1, sH());
  }
  
  public final boolean tA()
    throws RemoteException
  {
    Parcel localParcel = a(12, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final int tu()
    throws RemoteException
  {
    Parcel localParcel = a(5, sH());
    int i = localParcel.readInt();
    localParcel.recycle();
    return i;
  }
  
  public final float tv()
    throws RemoteException
  {
    Parcel localParcel = a(6, sH());
    float f = localParcel.readFloat();
    localParcel.recycle();
    return f;
  }
  
  public final float tw()
    throws RemoteException
  {
    Parcel localParcel = a(7, sH());
    float f = localParcel.readFloat();
    localParcel.recycle();
    return f;
  }
  
  public final float tx()
    throws RemoteException
  {
    Parcel localParcel = a(9, sH());
    float f = localParcel.readFloat();
    localParcel.recycle();
    return f;
  }
  
  public final boolean ty()
    throws RemoteException
  {
    Parcel localParcel = a(10, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final ps tz()
    throws RemoteException
  {
    Parcel localParcel = a(11, sH());
    Object localObject = localParcel.readStrongBinder();
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return (ps)localObject;
      IInterface localIInterface = ((IBinder)localObject).queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
      if ((localIInterface instanceof ps)) {
        localObject = (ps)localIInterface;
      } else {
        localObject = new pu((IBinder)localObject);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */