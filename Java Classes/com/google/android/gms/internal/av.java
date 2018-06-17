package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.n;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;

public final class av
  extends bb
{
  final bp aMj;
  
  public av(bd parambd, bf parambf)
  {
    super(parambd);
    ae.E(parambf);
    this.aMj = new bp(parambd, parambf);
  }
  
  public final long a(bg parambg)
  {
    pf();
    ae.E(parambg);
    n.mN();
    long l = this.aMj.c(parambg);
    if (l == 0L) {
      this.aMj.b(parambg);
    }
    return l;
  }
  
  public final void a(ck paramck)
  {
    pf();
    this.aMq.ph().h(new az(this, paramck));
  }
  
  public final void a(cr paramcr)
  {
    ae.E(paramcr);
    pf();
    e("Hit delivery requested", paramcr);
    this.aMq.ph().h(new ay(this, paramcr));
  }
  
  protected final void mG()
  {
    this.aMj.initialize();
  }
  
  public final void oZ()
  {
    pf();
    Context localContext = this.aMq.mContext;
    if ((dc.s(localContext)) && (dd.ad(localContext)))
    {
      Intent localIntent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
      localIntent.setComponent(new ComponentName(localContext, "com.google.android.gms.analytics.AnalyticsService"));
      localContext.startService(localIntent);
      return;
    }
    a(null);
  }
  
  final void onServiceConnected()
  {
    n.mN();
    this.aMj.onServiceConnected();
  }
  
  public final void pa()
  {
    pf();
    n.mN();
    bp localbp = this.aMj;
    n.mN();
    localbp.pf();
    localbp.bw("Service disconnected");
  }
  
  final void pb()
  {
    n.mN();
    bp localbp = this.aMj;
    n.mN();
    localbp.aNk = localbp.aMq.aBm.currentTimeMillis();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */