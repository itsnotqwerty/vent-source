package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.am;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.bc;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.bo;
import com.google.android.gms.internal.bv;
import com.google.android.gms.internal.ci;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.di;
import java.util.HashMap;
import java.util.Map;

final class r
  implements Runnable
{
  r(d paramd, Map paramMap, boolean paramBoolean1, String paramString1, long paramLong, boolean paramBoolean2, boolean paramBoolean3, String paramString2) {}
  
  public final void run()
  {
    boolean bool = true;
    if (this.aBb.aAY.mH()) {
      this.aBJ.put("sc", "start");
    }
    Object localObject1 = this.aBJ;
    Object localObject2 = this.aBb.aMq.pj();
    ae.bh("getClientId can not be called from the main thread");
    di.d((Map)localObject1, "cid", ((e)localObject2).aBd.pm().pG());
    localObject1 = (String)this.aBJ.get("sf");
    if (localObject1 != null)
    {
      double d = di.bJ((String)localObject1);
      if (di.a(d, (String)this.aBJ.get("cid")))
      {
        this.aBb.e("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(d));
        return;
      }
    }
    localObject1 = this.aBb.aMq.pl();
    if (this.aBK)
    {
      di.b(this.aBJ, "ate", ((au)localObject1).oU());
      di.c(this.aBJ, "adid", ((au)localObject1).oV());
      localObject1 = this.aBb.aMq.pn().pw();
      di.c(this.aBJ, "an", ((ah)localObject1).aLn);
      di.c(this.aBJ, "av", ((ah)localObject1).aLo);
      di.c(this.aBJ, "aid", ((ah)localObject1).mAppId);
      di.c(this.aBJ, "aiid", ((ah)localObject1).aLp);
      this.aBJ.put("v", "1");
      this.aBJ.put("_v", bc.aMr);
      di.c(this.aBJ, "ul", this.aBb.aMq.aMF.pX().aLA);
      di.c(this.aBJ, "sr", this.aBb.aMq.aMF.pY());
      if ((!this.aBL.equals("transaction")) && (!this.aBL.equals("item"))) {
        break label417;
      }
    }
    label417:
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (this.aBb.aAX.qb())) {
        break label422;
      }
      this.aBb.aMq.pg().a(this.aBJ, "Too many hits sent too quickly, rate limiting invoked");
      return;
      this.aBJ.remove("ate");
      this.aBJ.remove("adid");
      break;
    }
    label422:
    long l2 = di.bK((String)this.aBJ.get("ht"));
    long l1 = l2;
    if (l2 == 0L) {
      l1 = this.aBM;
    }
    if (this.aBN)
    {
      localObject1 = new cr(this.aBb, this.aBJ, l1, this.aBO);
      this.aBb.aMq.pg().f("Dry run enabled. Would have sent hit", localObject1);
      return;
    }
    localObject1 = (String)this.aBJ.get("cid");
    localObject2 = new HashMap();
    di.a((Map)localObject2, "uid", this.aBJ);
    di.a((Map)localObject2, "an", this.aBJ);
    di.a((Map)localObject2, "aid", this.aBJ);
    di.a((Map)localObject2, "av", this.aBJ);
    di.a((Map)localObject2, "aiid", this.aBJ);
    String str = this.aBP;
    if (!TextUtils.isEmpty((CharSequence)this.aBJ.get("adid"))) {}
    for (;;)
    {
      localObject1 = new bg((String)localObject1, str, bool, 0L, (Map)localObject2);
      l2 = this.aBb.aMq.pi().a((bg)localObject1);
      this.aBJ.put("_s", String.valueOf(l2));
      localObject1 = new cr(this.aBb, this.aBJ, l1, this.aBO);
      this.aBb.aMq.pi().a((cr)localObject1);
      return;
      bool = false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */