package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ac;

public final class el
  extends dr
{
  public static final Parcelable.Creator<el> CREATOR = new em();
  private String packageName;
  private int uid;
  
  public el(int paramInt, String paramString)
  {
    this.uid = paramInt;
    this.packageName = paramString;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if ((paramObject == null) || (!(paramObject instanceof el))) {
        return false;
      }
      paramObject = (el)paramObject;
    } while ((((el)paramObject).uid == this.uid) && (ac.equal(((el)paramObject).packageName, this.packageName)));
    return false;
  }
  
  public final int hashCode()
  {
    return this.uid;
  }
  
  public final String toString()
  {
    return String.format("%d:%s", new Object[] { Integer.valueOf(this.uid), this.packageName });
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.uid);
    du.a(paramParcel, 2, this.packageName);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/el.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */