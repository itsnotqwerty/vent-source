package com.google.android.gms.internal;

import android.os.Bundle;

final class jr
  implements Runnable
{
  jr(jq paramjq, boolean paramBoolean, jp paramjp, jt paramjt) {}
  
  public final void run()
  {
    if ((this.aWt) && (this.aWw.aWk != null)) {
      jq.a(this.aWw, this.aWw.aWk);
    }
    if ((this.aWu == null) || (this.aWu.aWj != this.aWv.aWj) || (!le.H(this.aWu.aWi, this.aWv.aWi)) || (!le.H(this.aWu.aWh, this.aWv.aWh))) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        Bundle localBundle = new Bundle();
        jq.a(this.aWv, localBundle, true);
        if (this.aWu != null)
        {
          if (this.aWu.aWh != null) {
            localBundle.putString("_pn", this.aWu.aWh);
          }
          localBundle.putString("_pc", this.aWu.aWi);
          localBundle.putLong("_pi", this.aWu.aWj);
        }
        this.aWw.qC().a("auto", "_vs", localBundle);
      }
      this.aWw.aWk = this.aWv;
      this.aWw.qF().a(this.aWv);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/jr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */