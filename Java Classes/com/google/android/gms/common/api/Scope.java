package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;

public final class Scope
  extends dr
  implements ReflectedParcelable
{
  public static final Parcelable.Creator<Scope> CREATOR = new n();
  private final String aCZ;
  private int aCi;
  
  Scope(int paramInt, String paramString)
  {
    ae.c(paramString, "scopeUri must not be null or empty");
    this.aCi = paramInt;
    this.aCZ = paramString;
  }
  
  public Scope(String paramString)
  {
    this(1, paramString);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof Scope)) {
      return false;
    }
    return this.aCZ.equals(((Scope)paramObject).aCZ);
  }
  
  public final int hashCode()
  {
    return this.aCZ.hashCode();
  }
  
  public final String toString()
  {
    return this.aCZ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.aCi);
    du.a(paramParcel, 2, this.aCZ);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/Scope.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */