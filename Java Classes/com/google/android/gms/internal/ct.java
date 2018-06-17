package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;

public final class ct
  extends mr
  implements cs
{
  ct(IBinder paramIBinder)
  {
    super(paramIBinder, "com.google.android.gms.analytics.internal.IAnalyticsService");
  }
  
  public final void a(Map paramMap, long paramLong, String paramString, List<by> paramList)
    throws RemoteException
  {
    Parcel localParcel = sH();
    localParcel.writeMap(paramMap);
    localParcel.writeLong(paramLong);
    localParcel.writeString(paramString);
    localParcel.writeTypedList(paramList);
    b(1, localParcel);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */