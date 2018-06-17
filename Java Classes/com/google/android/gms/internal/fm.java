package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ac;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

public final class fm
  extends dr
{
  public static final Parcelable.Creator<fm> CREATOR = new fn();
  static final List<el> aPN = ;
  private List<el> aPQ;
  private LocationRequest aQi;
  private boolean aQj;
  private boolean aQk;
  private boolean aQl;
  private String aQm;
  private boolean aQn = true;
  private String mTag;
  
  fm(LocationRequest paramLocationRequest, List<el> paramList, String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString2)
  {
    this.aQi = paramLocationRequest;
    this.aPQ = paramList;
    this.mTag = paramString1;
    this.aQj = paramBoolean1;
    this.aQk = paramBoolean2;
    this.aQl = paramBoolean3;
    this.aQm = paramString2;
  }
  
  @Deprecated
  public static fm a(LocationRequest paramLocationRequest)
  {
    return new fm(paramLocationRequest, aPN, null, false, false, false, null);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof fm)) {}
    do
    {
      return false;
      paramObject = (fm)paramObject;
    } while ((!ac.equal(this.aQi, ((fm)paramObject).aQi)) || (!ac.equal(this.aPQ, ((fm)paramObject).aPQ)) || (!ac.equal(this.mTag, ((fm)paramObject).mTag)) || (this.aQj != ((fm)paramObject).aQj) || (this.aQk != ((fm)paramObject).aQk) || (this.aQl != ((fm)paramObject).aQl) || (!ac.equal(this.aQm, ((fm)paramObject).aQm)));
    return true;
  }
  
  public final int hashCode()
  {
    return this.aQi.hashCode();
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.aQi.toString());
    if (this.mTag != null) {
      localStringBuilder.append(" tag=").append(this.mTag);
    }
    if (this.aQm != null) {
      localStringBuilder.append(" moduleId=").append(this.aQm);
    }
    localStringBuilder.append(" hideAppOps=").append(this.aQj);
    localStringBuilder.append(" clients=").append(this.aPQ);
    localStringBuilder.append(" forceCoarseLocation=").append(this.aQk);
    if (this.aQl) {
      localStringBuilder.append(" exemptFromBackgroundThrottle");
    }
    return localStringBuilder.toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.a(paramParcel, 1, this.aQi, paramInt);
    du.b(paramParcel, 5, this.aPQ);
    du.a(paramParcel, 6, this.mTag);
    du.a(paramParcel, 7, this.aQj);
    du.a(paramParcel, 8, this.aQk);
    du.a(paramParcel, 9, this.aQl);
    du.a(paramParcel, 10, this.aQm);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */