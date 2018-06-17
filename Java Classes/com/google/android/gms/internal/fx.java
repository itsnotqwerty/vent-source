package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;

public final class fx
  extends dr
{
  public static final Parcelable.Creator<fx> CREATOR = new fy();
  public final String aQB;
  public final String aQF;
  public final long aQG;
  public final String aQH;
  public final long aQI;
  public final long aQJ;
  public final boolean aQK;
  public final long aQL;
  public final boolean aQM;
  public final String aQX;
  public final boolean aQY;
  public final long aQZ;
  public final String aQz;
  public final int aRa;
  public final String packageName;
  
  fx(String paramString1, String paramString2, String paramString3, long paramLong1, String paramString4, long paramLong2, long paramLong3, String paramString5, boolean paramBoolean1, boolean paramBoolean2, String paramString6, long paramLong4, long paramLong5, int paramInt, boolean paramBoolean3)
  {
    ae.bf(paramString1);
    this.packageName = paramString1;
    paramString1 = paramString2;
    if (TextUtils.isEmpty(paramString2)) {
      paramString1 = null;
    }
    this.aQz = paramString1;
    this.aQF = paramString3;
    this.aQG = paramLong1;
    this.aQH = paramString4;
    this.aQI = paramLong2;
    this.aQJ = paramLong3;
    this.aQX = paramString5;
    this.aQK = paramBoolean1;
    this.aQY = paramBoolean2;
    this.aQB = paramString6;
    this.aQL = paramLong4;
    this.aQZ = paramLong5;
    this.aRa = paramInt;
    this.aQM = paramBoolean3;
  }
  
  fx(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong1, long paramLong2, String paramString5, boolean paramBoolean1, boolean paramBoolean2, long paramLong3, String paramString6, long paramLong4, long paramLong5, int paramInt, boolean paramBoolean3)
  {
    this.packageName = paramString1;
    this.aQz = paramString2;
    this.aQF = paramString3;
    this.aQG = paramLong3;
    this.aQH = paramString4;
    this.aQI = paramLong1;
    this.aQJ = paramLong2;
    this.aQX = paramString5;
    this.aQK = paramBoolean1;
    this.aQY = paramBoolean2;
    this.aQB = paramString6;
    this.aQL = paramLong4;
    this.aQZ = paramLong5;
    this.aRa = paramInt;
    this.aQM = paramBoolean3;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.a(paramParcel, 2, this.packageName);
    du.a(paramParcel, 3, this.aQz);
    du.a(paramParcel, 4, this.aQF);
    du.a(paramParcel, 5, this.aQH);
    du.a(paramParcel, 6, this.aQI);
    du.a(paramParcel, 7, this.aQJ);
    du.a(paramParcel, 8, this.aQX);
    du.a(paramParcel, 9, this.aQK);
    du.a(paramParcel, 10, this.aQY);
    du.a(paramParcel, 11, this.aQG);
    du.a(paramParcel, 12, this.aQB);
    du.a(paramParcel, 13, this.aQL);
    du.a(paramParcel, 14, this.aQZ);
    du.d(paramParcel, 15, this.aRa);
    du.a(paramParcel, 16, this.aQM);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */