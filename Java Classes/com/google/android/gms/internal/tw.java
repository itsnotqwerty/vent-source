package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.a.a;
import java.util.ArrayList;
import java.util.List;

public final class tw
  extends mr
  implements tu
{
  tw(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
  }
  
  public final void b(a parama1, a parama2, a parama3)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama1);
    mt.a(localParcel, parama2);
    mt.a(localParcel, parama3);
    b(22, localParcel);
  }
  
  public final String getBody()
    throws RemoteException
  {
    Parcel localParcel = a(4, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final Bundle getExtras()
    throws RemoteException
  {
    Parcel localParcel = a(13, sH());
    Bundle localBundle = (Bundle)mt.a(localParcel, Bundle.CREATOR);
    localParcel.recycle();
    return localBundle;
  }
  
  public final pp getVideoController()
    throws RemoteException
  {
    Parcel localParcel = a(16, sH());
    pp localpp = pq.r(localParcel.readStrongBinder());
    localParcel.recycle();
    return localpp;
  }
  
  public final List lD()
    throws RemoteException
  {
    Parcel localParcel = a(3, sH());
    ArrayList localArrayList = mt.c(localParcel);
    localParcel.recycle();
    return localArrayList;
  }
  
  public final String lN()
    throws RemoteException
  {
    Parcel localParcel = a(2, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final String lO()
    throws RemoteException
  {
    Parcel localParcel = a(6, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final String lP()
    throws RemoteException
  {
    Parcel localParcel = a(7, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final boolean mt()
    throws RemoteException
  {
    Parcel localParcel = a(11, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final boolean mu()
    throws RemoteException
  {
    Parcel localParcel = a(12, sH());
    boolean bool = mt.b(localParcel);
    localParcel.recycle();
    return bool;
  }
  
  public final void t(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(9, localParcel);
  }
  
  public final rf tM()
    throws RemoteException
  {
    Parcel localParcel = a(19, sH());
    rf localrf = rg.s(localParcel.readStrongBinder());
    localParcel.recycle();
    return localrf;
  }
  
  public final rj tN()
    throws RemoteException
  {
    Parcel localParcel = a(5, sH());
    rj localrj = rk.t(localParcel.readStrongBinder());
    localParcel.recycle();
    return localrj;
  }
  
  public final void tP()
    throws RemoteException
  {
    b(8, sH());
  }
  
  public final a tR()
    throws RemoteException
  {
    Parcel localParcel = a(21, sH());
    a locala = a.a.j(localParcel.readStrongBinder());
    localParcel.recycle();
    return locala;
  }
  
  public final a tZ()
    throws RemoteException
  {
    Parcel localParcel = a(15, sH());
    a locala = a.a.j(localParcel.readStrongBinder());
    localParcel.recycle();
    return locala;
  }
  
  public final void u(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(10, localParcel);
  }
  
  public final a ua()
    throws RemoteException
  {
    Parcel localParcel = a(20, sH());
    a locala = a.a.j(localParcel.readStrongBinder());
    localParcel.recycle();
    return locala;
  }
  
  public final void v(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(14, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/tw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */