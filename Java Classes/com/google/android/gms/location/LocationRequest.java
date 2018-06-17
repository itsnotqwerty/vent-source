package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;
import java.util.Arrays;

public final class LocationRequest
  extends dr
  implements ReflectedParcelable
{
  public static final Parcelable.Creator<LocationRequest> CREATOR = new g();
  public long bdr;
  public long bds;
  public boolean bdt;
  private long bdu;
  private int bdv;
  private float bdw;
  private long bdx;
  public int zD;
  
  public LocationRequest()
  {
    this.zD = 102;
    this.bdr = 3600000L;
    this.bds = 600000L;
    this.bdt = false;
    this.bdu = Long.MAX_VALUE;
    this.bdv = Integer.MAX_VALUE;
    this.bdw = 0.0F;
    this.bdx = 0L;
  }
  
  LocationRequest(int paramInt1, long paramLong1, long paramLong2, boolean paramBoolean, long paramLong3, int paramInt2, float paramFloat, long paramLong4)
  {
    this.zD = paramInt1;
    this.bdr = paramLong1;
    this.bds = paramLong2;
    this.bdt = paramBoolean;
    this.bdu = paramLong3;
    this.bdv = paramInt2;
    this.bdw = paramFloat;
    this.bdx = paramLong4;
  }
  
  public static LocationRequest uc()
  {
    return new LocationRequest();
  }
  
  private long ud()
  {
    long l2 = this.bdx;
    long l1 = l2;
    if (l2 < this.bdr) {
      l1 = this.bdr;
    }
    return l1;
  }
  
  public static void ue()
  {
    if (1000L < 0L) {
      throw new IllegalArgumentException(38 + "invalid interval: 1000");
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof LocationRequest)) {
        return false;
      }
      paramObject = (LocationRequest)paramObject;
    } while ((this.zD == ((LocationRequest)paramObject).zD) && (this.bdr == ((LocationRequest)paramObject).bdr) && (this.bds == ((LocationRequest)paramObject).bds) && (this.bdt == ((LocationRequest)paramObject).bdt) && (this.bdu == ((LocationRequest)paramObject).bdu) && (this.bdv == ((LocationRequest)paramObject).bdv) && (this.bdw == ((LocationRequest)paramObject).bdw) && (ud() == ((LocationRequest)paramObject).ud()));
    return false;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(this.zD), Long.valueOf(this.bdr), Float.valueOf(this.bdw), Long.valueOf(this.bdx) });
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = localStringBuilder1.append("Request[");
    String str;
    switch (this.zD)
    {
    case 101: 
    case 103: 
    default: 
      str = "???";
    }
    for (;;)
    {
      localStringBuilder2.append(str);
      if (this.zD != 105)
      {
        localStringBuilder1.append(" requested=");
        localStringBuilder1.append(this.bdr).append("ms");
      }
      localStringBuilder1.append(" fastest=");
      localStringBuilder1.append(this.bds).append("ms");
      if (this.bdx > this.bdr)
      {
        localStringBuilder1.append(" maxWait=");
        localStringBuilder1.append(this.bdx).append("ms");
      }
      if (this.bdw > 0.0F)
      {
        localStringBuilder1.append(" smallestDisplacement=");
        localStringBuilder1.append(this.bdw).append("m");
      }
      if (this.bdu != Long.MAX_VALUE)
      {
        long l1 = this.bdu;
        long l2 = SystemClock.elapsedRealtime();
        localStringBuilder1.append(" expireIn=");
        localStringBuilder1.append(l1 - l2).append("ms");
      }
      if (this.bdv != Integer.MAX_VALUE) {
        localStringBuilder1.append(" num=").append(this.bdv);
      }
      localStringBuilder1.append(']');
      return localStringBuilder1.toString();
      str = "PRIORITY_HIGH_ACCURACY";
      continue;
      str = "PRIORITY_BALANCED_POWER_ACCURACY";
      continue;
      str = "PRIORITY_LOW_POWER";
      continue;
      str = "PRIORITY_NO_POWER";
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.zD);
    du.a(paramParcel, 2, this.bdr);
    du.a(paramParcel, 3, this.bds);
    du.a(paramParcel, 4, this.bdt);
    du.a(paramParcel, 5, this.bdu);
    du.d(paramParcel, 6, this.bdv);
    du.a(paramParcel, 7, this.bdw);
    du.a(paramParcel, 8, this.bdx);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/LocationRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */