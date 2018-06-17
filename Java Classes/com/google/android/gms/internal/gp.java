package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ae;

public final class gp
  extends dr
{
  public static final Parcelable.Creator<gp> CREATOR = new gq();
  public final gm aRH;
  public final long aRS;
  public final String aRb;
  public final String name;
  
  gp(gp paramgp, long paramLong)
  {
    ae.E(paramgp);
    this.name = paramgp.name;
    this.aRH = paramgp.aRH;
    this.aRb = paramgp.aRb;
    this.aRS = paramLong;
  }
  
  public gp(String paramString1, gm paramgm, String paramString2, long paramLong)
  {
    this.name = paramString1;
    this.aRH = paramgm;
    this.aRb = paramString2;
    this.aRS = paramLong;
  }
  
  public final String toString()
  {
    String str1 = this.aRb;
    String str2 = this.name;
    String str3 = String.valueOf(this.aRH);
    return String.valueOf(str1).length() + 21 + String.valueOf(str2).length() + String.valueOf(str3).length() + "origin=" + str1 + ",name=" + str2 + ",params=" + str3;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.a(paramParcel, 2, this.name);
    du.a(paramParcel, 3, this.aRH, paramInt);
    du.a(paramParcel, 4, this.aRb);
    du.a(paramParcel, 5, this.aRS);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */