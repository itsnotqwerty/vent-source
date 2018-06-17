package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.af;

public final class ml
  extends dr
{
  public static final Parcelable.Creator<ml> CREATOR = new mm();
  private int aCi;
  private af aZo;
  
  ml(int paramInt, af paramaf)
  {
    this.aCi = paramInt;
    this.aZo = paramaf;
  }
  
  public ml(af paramaf)
  {
    this(1, paramaf);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.aCi);
    du.a(paramParcel, 2, this.aZo, paramInt);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ml.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */