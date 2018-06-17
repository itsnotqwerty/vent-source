package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.i;

public final class md
  extends dr
  implements i
{
  public static final Parcelable.Creator<md> CREATOR = new me();
  private int aCi;
  private int aZk;
  private Intent aZl;
  
  public md()
  {
    this((byte)0);
  }
  
  private md(byte paramByte)
  {
    this(2, 0, null);
  }
  
  md(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.aCi = paramInt1;
    this.aZk = paramInt2;
    this.aZl = paramIntent;
  }
  
  public final Status nf()
  {
    if (this.aZk == 0) {
      return Status.aDa;
    }
    return Status.aDe;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.aCi);
    du.d(paramParcel, 2, this.aZk);
    du.a(paramParcel, 3, this.aZl, paramInt);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/md.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */