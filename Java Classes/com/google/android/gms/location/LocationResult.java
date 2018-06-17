package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class LocationResult
  extends dr
  implements ReflectedParcelable
{
  public static final Parcelable.Creator<LocationResult> CREATOR = new h();
  static final List<Location> bdy = ;
  private final List<Location> bdz;
  
  LocationResult(List<Location> paramList)
  {
    this.bdz = paramList;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof LocationResult)) {
      return false;
    }
    paramObject = (LocationResult)paramObject;
    if (((LocationResult)paramObject).bdz.size() != this.bdz.size()) {
      return false;
    }
    paramObject = ((LocationResult)paramObject).bdz.iterator();
    Iterator localIterator = this.bdz.iterator();
    while (((Iterator)paramObject).hasNext())
    {
      Location localLocation1 = (Location)localIterator.next();
      Location localLocation2 = (Location)((Iterator)paramObject).next();
      if (localLocation1.getTime() != localLocation2.getTime()) {
        return false;
      }
    }
    return true;
  }
  
  public final int hashCode()
  {
    Iterator localIterator = this.bdz.iterator();
    long l;
    for (int i = 17; localIterator.hasNext(); i = (int)(l ^ l >>> 32) + i * 31) {
      l = ((Location)localIterator.next()).getTime();
    }
    return i;
  }
  
  public final String toString()
  {
    String str = String.valueOf(this.bdz);
    return String.valueOf(str).length() + 27 + "LocationResult[locations: " + str + "]";
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.b(paramParcel, 1, this.bdz);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/location/LocationResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */