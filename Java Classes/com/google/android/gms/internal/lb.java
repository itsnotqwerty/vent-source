package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ae;

public final class lb
  extends dr
{
  public static final Parcelable.Creator<lb> CREATOR = new lc();
  public final String aRb;
  private String aTr;
  public final long aXh;
  private Long aXi;
  private Float aXj;
  private Double aXk;
  public final String name;
  private int versionCode;
  
  lb(int paramInt, String paramString1, long paramLong, Long paramLong1, Float paramFloat, String paramString2, String paramString3, Double paramDouble)
  {
    this.versionCode = paramInt;
    this.name = paramString1;
    this.aXh = paramLong;
    this.aXi = paramLong1;
    this.aXj = null;
    if (paramInt == 1)
    {
      paramString1 = (String)localObject;
      if (paramFloat != null) {
        paramString1 = Double.valueOf(paramFloat.doubleValue());
      }
    }
    for (this.aXk = paramString1;; this.aXk = paramDouble)
    {
      this.aTr = paramString2;
      this.aRb = paramString3;
      return;
    }
  }
  
  lb(ld paramld)
  {
    this(paramld.name, paramld.aXh, paramld.value, paramld.aRb);
  }
  
  lb(String paramString1, long paramLong, Object paramObject, String paramString2)
  {
    ae.bf(paramString1);
    this.versionCode = 2;
    this.name = paramString1;
    this.aXh = paramLong;
    this.aRb = paramString2;
    if (paramObject == null)
    {
      this.aXi = null;
      this.aXj = null;
      this.aXk = null;
      this.aTr = null;
      return;
    }
    if ((paramObject instanceof Long))
    {
      this.aXi = ((Long)paramObject);
      this.aXj = null;
      this.aXk = null;
      this.aTr = null;
      return;
    }
    if ((paramObject instanceof String))
    {
      this.aXi = null;
      this.aXj = null;
      this.aXk = null;
      this.aTr = ((String)paramObject);
      return;
    }
    if ((paramObject instanceof Double))
    {
      this.aXi = null;
      this.aXj = null;
      this.aXk = ((Double)paramObject);
      this.aTr = null;
      return;
    }
    throw new IllegalArgumentException("User attribute given of un-supported type");
  }
  
  public final Object getValue()
  {
    if (this.aXi != null) {
      return this.aXi;
    }
    if (this.aXk != null) {
      return this.aXk;
    }
    if (this.aTr != null) {
      return this.aTr;
    }
    return null;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.versionCode);
    du.a(paramParcel, 2, this.name);
    du.a(paramParcel, 3, this.aXh);
    Object localObject = this.aXi;
    if (localObject != null)
    {
      du.c(paramParcel, 4, 8);
      paramParcel.writeLong(((Long)localObject).longValue());
    }
    du.a(paramParcel, 6, this.aTr);
    du.a(paramParcel, 7, this.aRb);
    localObject = this.aXk;
    if (localObject != null)
    {
      du.c(paramParcel, 8, 8);
      paramParcel.writeDouble(((Double)localObject).doubleValue());
    }
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */