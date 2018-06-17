package com.google.android.gms.internal;

import com.google.android.gms.analytics.n;

final class bk
  implements Runnable
{
  bk(bj parambj, cs paramcs) {}
  
  public final void run()
  {
    if (!this.aMU.aMQ.isConnected())
    {
      this.aMU.aMQ.bx("Connected to service after a timeout");
      bh localbh = this.aMU.aMQ;
      cs localcs = this.aMT;
      n.mN();
      localbh.aMN = localcs;
      localbh.po();
      localbh.aMq.pi().onServiceConnected();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */