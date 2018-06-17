package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.i;

public final class ew
  extends dr
  implements i
{
  public static final Parcelable.Creator<ew> CREATOR = new ex();
  private static ew aPY = new ew(Status.aDa);
  final Status aCx;
  
  public ew(Status paramStatus)
  {
    this.aCx = paramStatus;
  }
  
  public final Status nf()
  {
    return this.aCx;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.a(paramParcel, 1, this.aCx, paramInt);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ew.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */