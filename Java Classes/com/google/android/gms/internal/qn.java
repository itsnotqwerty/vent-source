package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.d.a;

public final class qn
  extends dr
{
  public static final Parcelable.Creator<qn> CREATOR = new qo();
  public final String bci;
  
  public qn(a parama)
  {
    this.bci = parama.aAG;
  }
  
  qn(String paramString)
  {
    this.bci = paramString;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.a(paramParcel, 15, this.bci);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/qn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */