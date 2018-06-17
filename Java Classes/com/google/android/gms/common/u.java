package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.a.c;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;
import com.google.android.gms.internal.ms;

public final class u
  extends dr
{
  public static final Parcelable.Creator<u> CREATOR = new v();
  private final String aJU;
  private final o aJV;
  private final boolean aJW;
  
  u(String paramString, IBinder paramIBinder, boolean paramBoolean)
  {
    this.aJU = paramString;
    this.aJV = i(paramIBinder);
    this.aJW = paramBoolean;
  }
  
  u(String paramString, o paramo, boolean paramBoolean)
  {
    this.aJU = paramString;
    this.aJV = paramo;
    this.aJW = paramBoolean;
  }
  
  private static o i(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    for (;;)
    {
      try
      {
        paramIBinder = s.f(paramIBinder).oe();
        if (paramIBinder == null)
        {
          paramIBinder = null;
          if (paramIBinder == null) {
            break label60;
          }
          paramIBinder = new p(paramIBinder);
          return paramIBinder;
        }
      }
      catch (RemoteException paramIBinder)
      {
        Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", paramIBinder);
        return null;
      }
      paramIBinder = (byte[])c.a(paramIBinder);
      continue;
      label60:
      Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
      paramIBinder = null;
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.a(paramParcel, 1, this.aJU);
    if (this.aJV == null) {
      Log.w("GoogleCertificatesQuery", "certificate binder is null");
    }
    for (IBinder localIBinder = null;; localIBinder = this.aJV.asBinder())
    {
      du.a(paramParcel, 2, localIBinder);
      du.a(paramParcel, 3, this.aJW);
      du.m(paramParcel, paramInt);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */