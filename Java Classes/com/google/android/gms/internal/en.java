package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ac;
import com.google.android.gms.location.l;
import java.util.Collections;
import java.util.List;

public final class en
  extends dr
{
  public static final Parcelable.Creator<en> CREATOR = new eo();
  static final List<el> aPN = ;
  static final l aPO = new l();
  private l aPP;
  private List<el> aPQ;
  private String mTag;
  
  en(l paraml, List<el> paramList, String paramString)
  {
    this.aPP = paraml;
    this.aPQ = paramList;
    this.mTag = paramString;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof en)) {}
    do
    {
      return false;
      paramObject = (en)paramObject;
    } while ((!ac.equal(this.aPP, ((en)paramObject).aPP)) || (!ac.equal(this.aPQ, ((en)paramObject).aPQ)) || (!ac.equal(this.mTag, ((en)paramObject).mTag)));
    return true;
  }
  
  public final int hashCode()
  {
    return this.aPP.hashCode();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.a(paramParcel, 1, this.aPP, paramInt);
    du.b(paramParcel, 2, this.aPQ);
    du.a(paramParcel, 3, this.mTag);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/en.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */