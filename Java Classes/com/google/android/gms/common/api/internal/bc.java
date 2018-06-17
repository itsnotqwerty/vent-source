package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.ae;

public final class bc<L>
{
  private final bd aFP;
  public volatile L aFQ;
  public final be<L> aFR;
  
  public bc(Looper paramLooper, L paramL, String paramString)
  {
    this.aFP = new bd(this, paramLooper);
    this.aFQ = ae.g(paramL, "Listener must not be null");
    this.aFR = new be(paramL, ae.bf(paramString));
  }
  
  public final void a(bf<? super L> parambf)
  {
    ae.g(parambf, "Notifier must not be null");
    parambf = this.aFP.obtainMessage(1, parambf);
    this.aFP.sendMessage(parambf);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/bc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */