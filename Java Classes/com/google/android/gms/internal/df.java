package com.google.android.gms.internal;

import android.os.Build.VERSION;

final class df
  implements Runnable
{
  df(de paramde) {}
  
  public final void run()
  {
    if (this.aPs.aPn != null) {
      if (((dg)this.aPs.aPr.aPl).cA(this.aPs.aPn.intValue())) {
        this.aPs.aPp.bw("Local AnalyticsService processed last dispatch request");
      }
    }
    while (Build.VERSION.SDK_INT < 24) {
      return;
    }
    this.aPs.aPp.bw("AnalyticsJobService processed last dispatch request");
    ((dg)this.aPs.aPr.aPl).a(this.aPs.aPq);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/df.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */