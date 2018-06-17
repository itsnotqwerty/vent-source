package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.a.a;
import java.util.ArrayList;
import java.util.List;

public final class sf
  extends mr
  implements sd
{
  sf(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
  }
  
  public final String cQ(String paramString)
    throws RemoteException
  {
    Object localObject = sH();
    ((Parcel)localObject).writeString(paramString);
    paramString = a(1, (Parcel)localObject);
    localObject = paramString.readString();
    paramString.recycle();
    return (String)localObject;
  }
  
  public final rj cR(String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    localParcel = a(2, localParcel);
    paramString = localParcel.readStrongBinder();
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      localParcel.recycle();
      return paramString;
      IInterface localIInterface = paramString.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
      if ((localIInterface instanceof rj)) {
        paramString = (rj)localIInterface;
      } else {
        paramString = new rl(paramString);
      }
    }
  }
  
  public final void cS(String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    b(5, localParcel);
  }
  
  public final void destroy()
    throws RemoteException
  {
    b(8, sH());
  }
  
  public final pp getVideoController()
    throws RemoteException
  {
    Parcel localParcel = a(7, sH());
    pp localpp = pq.r(localParcel.readStrongBinder());
    localParcel.recycle();
    return localpp;
  }
  
  public final String lM()
    throws RemoteException
  {
    Parcel localParcel = a(4, sH());
    String str = localParcel.readString();
    localParcel.recycle();
    return str;
  }
  
  public final boolean r(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    parama = a(10, localParcel);
    boolean bool = mt.b(parama);
    parama.recycle();
    return bool;
  }
  
  public final a tJ()
    throws RemoteException
  {
    Parcel localParcel = a(11, sH());
    a locala = a.a.j(localParcel.readStrongBinder());
    localParcel.recycle();
    return locala;
  }
  
  public final List<String> tO()
    throws RemoteException
  {
    Parcel localParcel = a(3, sH());
    ArrayList localArrayList = localParcel.createStringArrayList();
    localParcel.recycle();
    return localArrayList;
  }
  
  public final void tP()
    throws RemoteException
  {
    b(6, sH());
  }
  
  public final a tQ()
    throws RemoteException
  {
    Parcel localParcel = a(9, sH());
    a locala = a.a.j(localParcel.readStrongBinder());
    localParcel.recycle();
    return locala;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/sf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */