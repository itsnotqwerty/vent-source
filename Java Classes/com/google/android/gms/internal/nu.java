package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.d;

public final class nu
  extends dr
{
  public static final Parcelable.Creator<nu> CREATOR = new nv();
  public final String baS;
  public final boolean baT;
  public final nu[] baU;
  public final boolean baV;
  public final boolean baW;
  public boolean baX;
  public final int height;
  public final int heightPixels;
  public final int width;
  public final int widthPixels;
  
  public nu()
  {
    this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false);
  }
  
  private nu(Context paramContext, d paramd)
  {
    this(paramContext, new d[] { paramd });
  }
  
  public nu(Context paramContext, d[] paramArrayOfd)
  {
    d locald = paramArrayOfd[0];
    this.baT = false;
    boolean bool;
    label70:
    int j;
    label81:
    int k;
    label93:
    DisplayMetrics localDisplayMetrics;
    int i;
    label151:
    int m;
    if ((locald.azl == -3) && (locald.azm == -4))
    {
      bool = true;
      this.baW = bool;
      if (!this.baW) {
        break label322;
      }
      this.width = d.azb.azl;
      this.height = d.azb.azm;
      if (this.width != -1) {
        break label343;
      }
      j = 1;
      if (this.height != -2) {
        break label349;
      }
      k = 1;
      localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      if (j == 0) {
        break label367;
      }
      of.tj();
      if (!w.Y(paramContext)) {
        break label355;
      }
      of.tj();
      if (!w.Z(paramContext)) {
        break label355;
      }
      i = localDisplayMetrics.widthPixels;
      of.tj();
      this.widthPixels = (i - w.aa(paramContext));
      double d = this.widthPixels / localDisplayMetrics.density;
      m = (int)d;
      i = m;
      if (d - (int)d >= 0.01D) {
        i = m + 1;
      }
      label190:
      if (k == 0) {
        break label393;
      }
      m = c(localDisplayMetrics);
      label202:
      of.tj();
      this.heightPixels = w.a(localDisplayMetrics, m);
      if ((j == 0) && (k == 0)) {
        break label402;
      }
      this.baS = (26 + i + "x" + m + "_as");
    }
    for (;;)
    {
      if (paramArrayOfd.length <= 1) {
        break label430;
      }
      this.baU = new nu[paramArrayOfd.length];
      i = 0;
      while (i < paramArrayOfd.length)
      {
        this.baU[i] = new nu(paramContext, paramArrayOfd[i]);
        i += 1;
      }
      bool = false;
      break;
      label322:
      this.width = locald.azl;
      this.height = locald.azm;
      break label70;
      label343:
      j = 0;
      break label81;
      label349:
      k = 0;
      break label93;
      label355:
      this.widthPixels = localDisplayMetrics.widthPixels;
      break label151;
      label367:
      i = this.width;
      of.tj();
      this.widthPixels = w.a(localDisplayMetrics, this.width);
      break label190;
      label393:
      m = this.height;
      break label202;
      label402:
      if (this.baW) {
        this.baS = "320x50_mb";
      } else {
        this.baS = locald.toString();
      }
    }
    label430:
    this.baU = null;
    this.baV = false;
    this.baX = false;
  }
  
  nu(String paramString, int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, int paramInt4, nu[] paramArrayOfnu, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    this.baS = paramString;
    this.height = paramInt1;
    this.heightPixels = paramInt2;
    this.baT = paramBoolean1;
    this.width = paramInt3;
    this.widthPixels = paramInt4;
    this.baU = paramArrayOfnu;
    this.baV = paramBoolean2;
    this.baW = paramBoolean3;
    this.baX = paramBoolean4;
  }
  
  public static int a(DisplayMetrics paramDisplayMetrics)
  {
    return paramDisplayMetrics.widthPixels;
  }
  
  public static int b(DisplayMetrics paramDisplayMetrics)
  {
    return (int)(c(paramDisplayMetrics) * paramDisplayMetrics.density);
  }
  
  private static int c(DisplayMetrics paramDisplayMetrics)
  {
    int i = (int)(paramDisplayMetrics.heightPixels / paramDisplayMetrics.density);
    if (i <= 400) {
      return 32;
    }
    if (i <= 720) {
      return 50;
    }
    return 90;
  }
  
  public static nu tc()
  {
    return new nu("reward_mb", 0, 0, true, 0, 0, null, false, false, false);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.a(paramParcel, 2, this.baS);
    du.d(paramParcel, 3, this.height);
    du.d(paramParcel, 4, this.heightPixels);
    du.a(paramParcel, 5, this.baT);
    du.d(paramParcel, 6, this.width);
    du.d(paramParcel, 7, this.widthPixels);
    du.a(paramParcel, 8, this.baU, paramInt);
    du.a(paramParcel, 9, this.baV);
    du.a(paramParcel, 10, this.baW);
    du.a(paramParcel, 11, this.baX);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/nu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */