package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.a;
import com.google.android.gms.common.internal.ah;

public final class mn
  extends dr
{
  public static final Parcelable.Creator<mn> CREATOR = new mo();
  private int aCi;
  public final a aGN;
  public final ah aZp;
  
  public mn()
  {
    this(new a(8, null));
  }
  
  mn(int paramInt, a parama, ah paramah)
  {
    this.aCi = paramInt;
    this.aGN = parama;
    this.aZp = paramah;
  }
  
  private mn(a parama)
  {
    this(1, parama, null);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.aCi);
    du.a(paramParcel, 2, this.aGN, paramInt);
    du.a(paramParcel, 3, this.aZp, paramInt);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/mn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */