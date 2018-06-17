package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public final class gv
  extends mr
  implements gt
{
  gv(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
  }
  
  public final List<lb> a(fx paramfx, boolean paramBoolean)
    throws RemoteException
  {
    Object localObject = sH();
    mt.a((Parcel)localObject, paramfx);
    mt.a((Parcel)localObject, paramBoolean);
    paramfx = a(7, (Parcel)localObject);
    localObject = paramfx.createTypedArrayList(lb.CREATOR);
    paramfx.recycle();
    return (List<lb>)localObject;
  }
  
  public final List<ga> a(String paramString1, String paramString2, fx paramfx)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    mt.a(localParcel, paramfx);
    paramString1 = a(16, localParcel);
    paramString2 = paramString1.createTypedArrayList(ga.CREATOR);
    paramString1.recycle();
    return paramString2;
  }
  
  public final List<lb> a(String paramString1, String paramString2, boolean paramBoolean, fx paramfx)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    mt.a(localParcel, paramBoolean);
    mt.a(localParcel, paramfx);
    paramString1 = a(14, localParcel);
    paramString2 = paramString1.createTypedArrayList(lb.CREATOR);
    paramString1.recycle();
    return paramString2;
  }
  
  public final void a(long paramLong, String paramString1, String paramString2, String paramString3)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeLong(paramLong);
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    localParcel.writeString(paramString3);
    b(10, localParcel);
  }
  
  public final void a(fx paramfx)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramfx);
    b(4, localParcel);
  }
  
  public final void a(ga paramga, fx paramfx)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramga);
    mt.a(localParcel, paramfx);
    b(12, localParcel);
  }
  
  public final void a(gp paramgp, fx paramfx)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramgp);
    mt.a(localParcel, paramfx);
    b(1, localParcel);
  }
  
  public final void a(gp paramgp, String paramString1, String paramString2)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramgp);
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    b(5, localParcel);
  }
  
  public final void a(lb paramlb, fx paramfx)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramlb);
    mt.a(localParcel, paramfx);
    b(2, localParcel);
  }
  
  public final byte[] a(gp paramgp, String paramString)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramgp);
    localParcel.writeString(paramString);
    paramgp = a(9, localParcel);
    paramString = paramgp.createByteArray();
    paramgp.recycle();
    return paramString;
  }
  
  public final List<lb> b(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    localParcel.writeString(paramString3);
    mt.a(localParcel, paramBoolean);
    paramString1 = a(15, localParcel);
    paramString2 = paramString1.createTypedArrayList(lb.CREATOR);
    paramString1.recycle();
    return paramString2;
  }
  
  public final void b(fx paramfx)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramfx);
    b(6, localParcel);
  }
  
  public final void b(ga paramga)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramga);
    b(13, localParcel);
  }
  
  public final String c(fx paramfx)
    throws RemoteException
  {
    Object localObject = sH();
    mt.a((Parcel)localObject, paramfx);
    paramfx = a(11, (Parcel)localObject);
    localObject = paramfx.readString();
    paramfx.recycle();
    return (String)localObject;
  }
  
  public final void d(fx paramfx)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, paramfx);
    b(18, localParcel);
  }
  
  public final List<ga> e(String paramString1, String paramString2, String paramString3)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    localParcel.writeString(paramString3);
    paramString1 = a(17, localParcel);
    paramString2 = paramString1.createTypedArrayList(ga.CREATOR);
    paramString1.recycle();
    return paramString2;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */