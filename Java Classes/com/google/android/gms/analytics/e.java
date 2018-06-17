package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.aq;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bo;
import com.google.android.gms.internal.bv;
import com.google.android.gms.internal.ci;
import java.util.List;
import java.util.ListIterator;

public class e
  extends m<e>
{
  public final bd aBd;
  public boolean aBe;
  
  public e(bd parambd)
  {
    super(parambd.ph(), parambd.aBm);
    this.aBd = parambd;
  }
  
  protected final void a(k paramk)
  {
    paramk = (aq)paramk.i(aq.class);
    if (TextUtils.isEmpty(paramk.aLL)) {
      paramk.aLL = this.aBd.pm().pG();
    }
    if ((this.aBe) && (TextUtils.isEmpty(paramk.aLN)))
    {
      au localau = this.aBd.pl();
      paramk.aLN = localau.oV();
      paramk.aLO = localau.oU();
    }
  }
  
  public final void aY(String paramString)
  {
    ae.bf(paramString);
    Uri localUri = f.aZ(paramString);
    ListIterator localListIterator = this.aBx.aBv.listIterator();
    while (localListIterator.hasNext()) {
      if (localUri.equals(((q)localListIterator.next()).mJ())) {
        localListIterator.remove();
      }
    }
    this.aBx.aBv.add(new f(this.aBd, paramString));
  }
  
  public final k mI()
  {
    k localk = this.aBx.mK();
    localk.a(this.aBd.pn().pw());
    localk.a(this.aBd.aMF.pX());
    mL();
    return localk;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */