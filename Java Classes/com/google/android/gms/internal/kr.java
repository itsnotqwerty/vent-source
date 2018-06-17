package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

final class kr
  implements Runnable
{
  kr(hz paramhz, Runnable paramRunnable) {}
  
  public final void run()
  {
    this.aRB.sf();
    hz localhz = this.aRB;
    Runnable localRunnable = this.aWZ;
    localhz.qO().mN();
    if (localhz.aVp == null) {
      localhz.aVp = new ArrayList();
    }
    localhz.aVp.add(localRunnable);
    this.aRB.sb();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/kr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */