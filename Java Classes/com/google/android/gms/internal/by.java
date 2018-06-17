package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class by
  implements Parcelable
{
  @Deprecated
  public static final Parcelable.Creator<by> CREATOR = new bz();
  String aBR;
  private String aNw;
  String mValue;
  
  @Deprecated
  public by() {}
  
  @Deprecated
  by(Parcel paramParcel)
  {
    this.aBR = paramParcel.readString();
    this.aNw = paramParcel.readString();
    this.mValue = paramParcel.readString();
  }
  
  @Deprecated
  public final int describeContents()
  {
    return 0;
  }
  
  @Deprecated
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.aBR);
    paramParcel.writeString(this.aNw);
    paramParcel.writeString(this.mValue);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/by.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */