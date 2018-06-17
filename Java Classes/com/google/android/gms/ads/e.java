package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.pz;

public final class e
  extends f
{
  public e(Context paramContext)
  {
    super(paramContext);
    ae.g(paramContext, "Context cannot be null");
  }
  
  public final i getVideoController()
  {
    if (this.azo != null) {
      return this.azo.aAc;
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */