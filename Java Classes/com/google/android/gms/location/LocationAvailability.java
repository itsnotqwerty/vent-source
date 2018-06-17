package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;
import java.util.Arrays;

public final class LocationAvailability
  extends dr
  implements ReflectedParcelable
{
  public static final Parcelable.Creator<LocationAvailability> CREATOR = new f();
  @Deprecated
  private int bdm;
  @Deprecated
  private int bdn;
  private long bdo;
  private int bdp;
  private j[] bdq;
  
  LocationAvailability(int paramInt1, int paramInt2, int paramInt3, long paramLong, j[] paramArrayOfj)
  {
    this.bdp = paramInt1;
    this.bdm = paramInt2;
    this.bdn = paramInt3;
    this.bdo = paramLong;
    this.bdq = paramArrayOfj;
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
      paramObject = (LocationAvailability)paramObject;
    } while ((this.bdm == ((LocationAvailability)paramObject).bdm) && (this.bdn == ((LocationAvailability)paramObject).bdn) && (this.bdo == ((LocationAvailability)paramObject).bdo) && (this.bdp == ((LocationAvailability)paramObject).bdp) && (Arrays.equals(this.bdq, ((LocationAvailability)paramObject).bdq)));
    return false;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(this.bdp), Integer.valueOf(this.bdm), Integer.valueOf(this.bdn), Long.valueOf(this.bdo), this.bdq });
  }
  
  public final String toString()
  {
    if (this.bdp < 1000) {}
    for (boolean bool = true;; bool = false) {
      return 48 + "LocationAvailability[isLocationAvailable: " + bool + "]";
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.bdm);
    du.d(paramParcel, 2, this.bdn);
    du.a(paramParcel, 3, this.bdo);
    du.d(paramParcel, 4, this.bdp);
    du.a(paramParcel, 5, this.bdq, paramInt);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/LocationAvailability.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */