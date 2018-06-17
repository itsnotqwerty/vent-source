package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;
import java.util.Arrays;

public final class j
  extends dr
{
  public static final Parcelable.Creator<j> CREATOR = new k();
  private int bdD;
  private int bdE;
  private long bdF;
  private long bdG;
  
  j(int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    this.bdD = paramInt1;
    this.bdE = paramInt2;
    this.bdF = paramLong1;
    this.bdG = paramLong2;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (j)paramObject;
    } while ((this.bdD == ((j)paramObject).bdD) && (this.bdE == ((j)paramObject).bdE) && (this.bdF == ((j)paramObject).bdF) && (this.bdG == ((j)paramObject).bdG));
    return false;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(this.bdE), Integer.valueOf(this.bdD), Long.valueOf(this.bdG), Long.valueOf(this.bdF) });
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("NetworkLocationStatus:");
    localStringBuilder.append(" Wifi status: ").append(this.bdD).append(" Cell status: ").append(this.bdE).append(" elapsed time NS: ").append(this.bdG).append(" system time ms: ").append(this.bdF);
    return localStringBuilder.toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.bdD);
    du.d(paramParcel, 2, this.bdE);
    du.a(paramParcel, 3, this.bdF);
    du.a(paramParcel, 4, this.bdG);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */