package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class pv
  extends dr
{
  public static final Parcelable.Creator<pv> CREATOR = new pw();
  public final int bbt;
  
  public pv(int paramInt)
  {
    this.bbt = paramInt;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.d(paramParcel, 2, this.bbt);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/pv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */