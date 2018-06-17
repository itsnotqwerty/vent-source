package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;

public final class k
  extends dr
{
  public static final Parcelable.Creator<k> CREATOR = new l();
  private String name;
  private int version;
  
  public k(String paramString, int paramInt)
  {
    this.name = paramString;
    this.version = paramInt;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.a(paramParcel, 1, this.name);
    du.d(paramParcel, 2, this.version);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */