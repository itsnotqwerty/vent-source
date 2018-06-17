package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;
import java.util.Arrays;

public final class l
  extends dr
{
  public static final Parcelable.Creator<l> CREATOR = new m();
  private boolean bdH;
  private long bdI;
  private float bdJ;
  private long bdK;
  private int bdv;
  
  public l()
  {
    this(true, 50L, 0.0F, Long.MAX_VALUE, Integer.MAX_VALUE);
  }
  
  l(boolean paramBoolean, long paramLong1, float paramFloat, long paramLong2, int paramInt)
  {
    this.bdH = paramBoolean;
    this.bdI = paramLong1;
    this.bdJ = paramFloat;
    this.bdK = paramLong2;
    this.bdv = paramInt;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof l)) {
        return false;
      }
      paramObject = (l)paramObject;
    } while ((this.bdH == ((l)paramObject).bdH) && (this.bdI == ((l)paramObject).bdI) && (Float.compare(this.bdJ, ((l)paramObject).bdJ) == 0) && (this.bdK == ((l)paramObject).bdK) && (this.bdv == ((l)paramObject).bdv));
    return false;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Boolean.valueOf(this.bdH), Long.valueOf(this.bdI), Float.valueOf(this.bdJ), Long.valueOf(this.bdK), Integer.valueOf(this.bdv) });
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DeviceOrientationRequest[mShouldUseMag=").append(this.bdH);
    localStringBuilder.append(" mMinimumSamplingPeriodMs=").append(this.bdI);
    localStringBuilder.append(" mSmallestAngleChangeRadians=").append(this.bdJ);
    if (this.bdK != Long.MAX_VALUE)
    {
      long l1 = this.bdK;
      long l2 = SystemClock.elapsedRealtime();
      localStringBuilder.append(" expireIn=");
      localStringBuilder.append(l1 - l2).append("ms");
    }
    if (this.bdv != Integer.MAX_VALUE) {
      localStringBuilder.append(" num=").append(this.bdv);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.a(paramParcel, 1, this.bdH);
    du.a(paramParcel, 2, this.bdI);
    du.a(paramParcel, 3, this.bdJ);
    du.a(paramParcel, 4, this.bdK);
    du.d(paramParcel, 5, this.bdv);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */