package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.n;
import com.google.android.gms.location.o;

public final class ep
  extends dr
{
  public static final Parcelable.Creator<ep> CREATOR = new eq();
  private int aPR;
  private en aPS;
  private n aPT;
  private ez aPU;
  
  ep(int paramInt, en paramen, IBinder paramIBinder1, IBinder paramIBinder2)
  {
    this.aPR = paramInt;
    this.aPS = paramen;
    if (paramIBinder1 == null)
    {
      paramen = null;
      this.aPT = paramen;
      if (paramIBinder2 != null) {
        break label50;
      }
      paramen = (en)localObject;
    }
    for (;;)
    {
      this.aPU = paramen;
      return;
      paramen = o.A(paramIBinder1);
      break;
      label50:
      paramen = (en)localObject;
      if (paramIBinder2 != null)
      {
        paramen = paramIBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
        if ((paramen instanceof ez)) {
          paramen = (ez)paramen;
        } else {
          paramen = new fb(paramIBinder2);
        }
      }
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Object localObject2 = null;
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.aPR);
    du.a(paramParcel, 2, this.aPS, paramInt);
    if (this.aPT == null)
    {
      localObject1 = null;
      du.a(paramParcel, 3, (IBinder)localObject1);
      if (this.aPU != null) {
        break label85;
      }
    }
    label85:
    for (Object localObject1 = localObject2;; localObject1 = this.aPU.asBinder())
    {
      du.a(paramParcel, 4, (IBinder)localObject1);
      du.m(paramParcel, i);
      return;
      localObject1 = this.aPT.asBinder();
      break;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */