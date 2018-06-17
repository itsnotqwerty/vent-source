package com.google.android.gms.ads.b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;
import com.google.android.gms.internal.pb;
import com.google.android.gms.internal.pc;

public final class j
  extends dr
{
  public static final Parcelable.Creator<j> CREATOR = new l();
  private final boolean azG;
  private final pb azH;
  
  j(boolean paramBoolean, IBinder paramIBinder)
  {
    this.azG = paramBoolean;
    if (paramIBinder != null) {}
    for (paramIBinder = pc.p(paramIBinder);; paramIBinder = null)
    {
      this.azH = paramIBinder;
      return;
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.a(paramParcel, 1, this.azG);
    if (this.azH == null) {}
    for (IBinder localIBinder = null;; localIBinder = this.azH.asBinder())
    {
      du.a(paramParcel, 2, localIBinder);
      du.m(paramParcel, paramInt);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/b/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */