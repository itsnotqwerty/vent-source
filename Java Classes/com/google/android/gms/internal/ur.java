package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class ur
  extends mr
  implements up
{
  ur(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
  }
  
  public final void lw()
    throws RemoteException
  {
    b(9, sH());
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeInt(paramInt1);
    localParcel.writeInt(paramInt2);
    mt.a(localParcel, paramIntent);
    b(12, localParcel);
  }
  
  public final void onBackPressed()
    throws RemoteException
  {
    b(10, sH());
  }
  
  public final void onCreate(Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramBundle);
    b(1, localParcel);
  }
  
  public final void onDestroy()
    throws RemoteException
  {
    b(8, sH());
  }
  
  public final void onPause()
    throws RemoteException
  {
    b(5, sH());
  }
  
  public final void onRestart()
    throws RemoteException
  {
    b(2, sH());
  }
  
  public final void onResume()
    throws RemoteException
  {
    b(4, sH());
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramBundle);
    localParcel = a(6, localParcel);
    if (localParcel.readInt() != 0) {
      paramBundle.readFromParcel(localParcel);
    }
    localParcel.recycle();
  }
  
  public final void onStart()
    throws RemoteException
  {
    b(3, sH());
  }
  
  public final void onStop()
    throws RemoteException
  {
    b(7, sH());
  }
  
  public final boolean ub()
    throws RemoteException
  {
    Parcel localParcel = a(11, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final void w(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(13, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ur.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */