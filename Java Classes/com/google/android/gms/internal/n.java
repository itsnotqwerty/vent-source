package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class n
  extends dr
{
  public static final Parcelable.Creator<n> CREATOR = new o();
  public final nr aKO;
  public final String aKP;
  
  public n(nr paramnr, String paramString)
  {
    this.aKO = paramnr;
    this.aKP = paramString;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.a(paramParcel, 2, this.aKO, paramInt);
    du.a(paramParcel, 3, this.aKP);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */