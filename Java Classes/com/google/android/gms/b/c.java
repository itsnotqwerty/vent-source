package com.google.android.gms.b;

import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.mr;
import com.google.android.gms.internal.mt;

public final class c
  extends mr
  implements a
{
  c(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.iid.IMessengerCompat");
  }
  
  public final void send(Message paramMessage)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramMessage);
    c(1, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */