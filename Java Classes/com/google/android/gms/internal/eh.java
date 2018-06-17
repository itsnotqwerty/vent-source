package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;

public final class eh
  extends mr
  implements ef
{
  eh(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.flags.IFlagProvider");
  }
  
  public final boolean getBooleanFlagValue(String paramString, boolean paramBoolean, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    mt.a(localParcel, paramBoolean);
    localParcel.writeInt(paramInt);
    paramString = a(2, localParcel);
    paramBoolean = mt.b(paramString);
    paramString.recycle();
    return paramBoolean;
  }
  
  public final int getIntFlagValue(String paramString, int paramInt1, int paramInt2)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    localParcel.writeInt(paramInt1);
    localParcel.writeInt(paramInt2);
    paramString = a(3, localParcel);
    paramInt1 = paramString.readInt();
    paramString.recycle();
    return paramInt1;
  }
  
  public final long getLongFlagValue(String paramString, long paramLong, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString);
    localParcel.writeLong(paramLong);
    localParcel.writeInt(paramInt);
    paramString = a(4, localParcel);
    paramLong = paramString.readLong();
    paramString.recycle();
    return paramLong;
  }
  
  public final String getStringFlagValue(String paramString1, String paramString2, int paramInt)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeString(paramString1);
    localParcel.writeString(paramString2);
    localParcel.writeInt(paramInt);
    paramString1 = a(5, localParcel);
    paramString2 = paramString1.readString();
    paramString1.recycle();
    return paramString2;
  }
  
  public final void init(a parama)
    throws RemoteException
  {
    Parcel localParcel = sH();
    mt.a(localParcel, parama);
    b(1, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/eh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */