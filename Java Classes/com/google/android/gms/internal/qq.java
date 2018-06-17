package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.j;

public final class qq
  extends dr
{
  public static final Parcelable.Creator<qq> CREATOR = new qr();
  public final boolean bcj;
  public final boolean bck;
  public final boolean bcl;
  
  public qq(j paramj)
  {
    this(paramj.azt, paramj.azu, paramj.azv);
  }
  
  public qq(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.bcj = paramBoolean1;
    this.bck = paramBoolean2;
    this.bcl = paramBoolean3;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.a(paramParcel, 2, this.bcj);
    du.a(paramParcel, 3, this.bck);
    du.a(paramParcel, 4, this.bcl);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/qq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */