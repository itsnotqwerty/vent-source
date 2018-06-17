package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.b.d;

public final class rd
  extends dr
{
  public static final Parcelable.Creator<rd> CREATOR = new re();
  public final boolean bct;
  public final int bcu;
  public final boolean bcv;
  public final int bcw;
  public final qq bcx;
  public final int versionCode;
  
  public rd(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, int paramInt3, qq paramqq)
  {
    this.versionCode = paramInt1;
    this.bct = paramBoolean1;
    this.bcu = paramInt2;
    this.bcv = paramBoolean2;
    this.bcw = paramInt3;
    this.bcx = paramqq;
  }
  
  public rd(d paramd) {}
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.versionCode);
    du.a(paramParcel, 2, this.bct);
    du.d(paramParcel, 3, this.bcu);
    du.a(paramParcel, 4, this.bcv);
    du.d(paramParcel, 5, this.bcw);
    du.a(paramParcel, 6, this.bcx, paramInt);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/rd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */