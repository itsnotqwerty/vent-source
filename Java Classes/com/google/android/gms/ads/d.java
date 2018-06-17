package com.google.android.gms.ads;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.internal.nu;
import com.google.android.gms.internal.of;
import com.google.android.gms.internal.w;

public final class d
{
  public static final d azb = new d(320, 50, "320x50_mb");
  public static final d azc = new d(468, 60, "468x60_as");
  public static final d azd = new d(320, 100, "320x100_as");
  public static final d aze = new d(728, 90, "728x90_as");
  public static final d azf = new d(300, 250, "300x250_as");
  public static final d azg = new d(160, 600, "160x600_as");
  public static final d azh = new d(-1, -2, "smart_banner");
  public static final d azi = new d(-3, -4, "fluid");
  public static final d azj = new d(50, 50, "50x50_mb");
  public static final d azk = new d(-3, 0, "search_v2");
  public final int azl;
  public final int azm;
  private final String azn;
  
  public d(int paramInt1, int paramInt2) {}
  
  d(int paramInt1, int paramInt2, String paramString)
  {
    if ((paramInt1 < 0) && (paramInt1 != -1) && (paramInt1 != -3)) {
      throw new IllegalArgumentException(37 + "Invalid width for AdSize: " + paramInt1);
    }
    if ((paramInt2 < 0) && (paramInt2 != -2) && (paramInt2 != -4)) {
      throw new IllegalArgumentException(38 + "Invalid height for AdSize: " + paramInt2);
    }
    this.azl = paramInt1;
    this.azm = paramInt2;
    this.azn = paramString;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof d)) {
        return false;
      }
      paramObject = (d)paramObject;
    } while ((this.azl == ((d)paramObject).azl) && (this.azm == ((d)paramObject).azm) && (this.azn.equals(((d)paramObject).azn)));
    return false;
  }
  
  public final int hashCode()
  {
    return this.azn.hashCode();
  }
  
  public final int p(Context paramContext)
  {
    switch (this.azm)
    {
    default: 
      of.tj();
      return w.u(paramContext, this.azm);
    case -2: 
      return nu.b(paramContext.getResources().getDisplayMetrics());
    }
    return -1;
  }
  
  public final int q(Context paramContext)
  {
    switch (this.azl)
    {
    case -2: 
    default: 
      of.tj();
      return w.u(paramContext, this.azl);
    case -1: 
      return nu.a(paramContext.getResources().getDisplayMetrics());
    }
    return -1;
  }
  
  public final String toString()
  {
    return this.azn;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */