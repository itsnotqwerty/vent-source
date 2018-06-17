package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.analytics.n;
import java.util.Locale;

public final class ci
  extends bb
{
  ci(bd parambd)
  {
    super(parambd);
  }
  
  protected final void mG() {}
  
  public final am pX()
  {
    pf();
    DisplayMetrics localDisplayMetrics = this.aMq.ph().mContext.getResources().getDisplayMetrics();
    am localam = new am();
    localam.aLA = di.c(Locale.getDefault());
    localam.aLC = localDisplayMetrics.widthPixels;
    localam.aLD = localDisplayMetrics.heightPixels;
    return localam;
  }
  
  public final String pY()
  {
    pf();
    am localam = pX();
    int i = localam.aLC;
    int j = localam.aLD;
    return 23 + i + "x" + j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ci.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */