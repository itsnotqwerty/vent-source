package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ae;

public final class ga
  extends dr
{
  public static final Parcelable.Creator<ga> CREATOR = new gb();
  public String aRb;
  public lb aRc;
  public long aRd;
  public boolean aRe;
  public String aRf;
  public gp aRg;
  public long aRh;
  public gp aRi;
  public long aRj;
  public gp aRk;
  public String packageName;
  private int versionCode;
  
  ga(int paramInt, String paramString1, String paramString2, lb paramlb, long paramLong1, boolean paramBoolean, String paramString3, gp paramgp1, long paramLong2, gp paramgp2, long paramLong3, gp paramgp3)
  {
    this.versionCode = paramInt;
    this.packageName = paramString1;
    this.aRb = paramString2;
    this.aRc = paramlb;
    this.aRd = paramLong1;
    this.aRe = paramBoolean;
    this.aRf = paramString3;
    this.aRg = paramgp1;
    this.aRh = paramLong2;
    this.aRi = paramgp2;
    this.aRj = paramLong3;
    this.aRk = paramgp3;
  }
  
  ga(ga paramga)
  {
    this.versionCode = 1;
    ae.E(paramga);
    this.packageName = paramga.packageName;
    this.aRb = paramga.aRb;
    this.aRc = paramga.aRc;
    this.aRd = paramga.aRd;
    this.aRe = paramga.aRe;
    this.aRf = paramga.aRf;
    this.aRg = paramga.aRg;
    this.aRh = paramga.aRh;
    this.aRi = paramga.aRi;
    this.aRj = paramga.aRj;
    this.aRk = paramga.aRk;
  }
  
  ga(String paramString1, String paramString2, lb paramlb, long paramLong1, boolean paramBoolean, String paramString3, gp paramgp1, long paramLong2, gp paramgp2, long paramLong3, gp paramgp3)
  {
    this.versionCode = 1;
    this.packageName = paramString1;
    this.aRb = paramString2;
    this.aRc = paramlb;
    this.aRd = paramLong1;
    this.aRe = paramBoolean;
    this.aRf = paramString3;
    this.aRg = paramgp1;
    this.aRh = paramLong2;
    this.aRi = paramgp2;
    this.aRj = paramLong3;
    this.aRk = paramgp3;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.versionCode);
    du.a(paramParcel, 2, this.packageName);
    du.a(paramParcel, 3, this.aRb);
    du.a(paramParcel, 4, this.aRc, paramInt);
    du.a(paramParcel, 5, this.aRd);
    du.a(paramParcel, 6, this.aRe);
    du.a(paramParcel, 7, this.aRf);
    du.a(paramParcel, 8, this.aRg, paramInt);
    du.a(paramParcel, 9, this.aRh);
    du.a(paramParcel, 10, this.aRi, paramInt);
    du.a(paramParcel, 11, this.aRj);
    du.a(paramParcel, 12, this.aRk, paramInt);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ga.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */