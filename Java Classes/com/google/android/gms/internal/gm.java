package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Iterator;

public final class gm
  extends dr
  implements Iterable<String>
{
  public static final Parcelable.Creator<gm> CREATOR = new go();
  final Bundle aRP;
  
  gm(Bundle paramBundle)
  {
    this.aRP = paramBundle;
  }
  
  final Object get(String paramString)
  {
    return this.aRP.get(paramString);
  }
  
  final Long getLong(String paramString)
  {
    return Long.valueOf(this.aRP.getLong(paramString));
  }
  
  public final Iterator<String> iterator()
  {
    return new gn(this);
  }
  
  public final Bundle rB()
  {
    return new Bundle(this.aRP);
  }
  
  public final String toString()
  {
    return this.aRP.toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.a(paramParcel, 2, rB());
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */