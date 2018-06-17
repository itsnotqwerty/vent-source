package com.google.android.gms.analytics;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.analytics.a.b;
import com.google.android.gms.analytics.a.c;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ai;
import com.google.android.gms.internal.aj;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.al;
import com.google.android.gms.internal.am;
import com.google.android.gms.internal.an;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.ap;
import com.google.android.gms.internal.aq;
import com.google.android.gms.internal.ar;
import com.google.android.gms.internal.as;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.bc;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.di;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class f
  extends ba
  implements q
{
  private static DecimalFormat aBf;
  private final bd aBd;
  private final String aBg;
  private final Uri aBh;
  
  public f(bd parambd, String paramString)
  {
    this(parambd, paramString, (byte)0);
  }
  
  private f(bd parambd, String paramString, byte paramByte)
  {
    super(parambd);
    ae.bf(paramString);
    this.aBd = parambd;
    this.aBg = paramString;
    this.aBh = aZ(this.aBg);
  }
  
  private static String a(double paramDouble)
  {
    if (aBf == null) {
      aBf = new DecimalFormat("0.######");
    }
    return aBf.format(paramDouble);
  }
  
  private static void a(Map<String, String> paramMap, String paramString, double paramDouble)
  {
    if (paramDouble != 0.0D) {
      paramMap.put(paramString, a(paramDouble));
    }
  }
  
  private static void a(Map<String, String> paramMap, String paramString, int paramInt1, int paramInt2)
  {
    if ((paramInt1 > 0) && (paramInt2 > 0)) {
      paramMap.put(paramString, 23 + paramInt1 + "x" + paramInt2);
    }
  }
  
  private static void a(Map<String, String> paramMap, String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramMap.put(paramString, "1");
    }
  }
  
  static Uri aZ(String paramString)
  {
    ae.bf(paramString);
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("uri");
    localBuilder.authority("google-analytics.com");
    localBuilder.path(paramString);
    return localBuilder.build();
  }
  
  private static void b(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      paramMap.put(paramString1, paramString2);
    }
  }
  
  private static Map<String, String> c(k paramk)
  {
    HashMap localHashMap = new HashMap();
    Object localObject1 = (al)paramk.h(al.class);
    Object localObject3;
    Object localObject4;
    Object localObject2;
    if (localObject1 != null)
    {
      localObject3 = Collections.unmodifiableMap(((al)localObject1).aAV).entrySet().iterator();
      label201:
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (Map.Entry)((Iterator)localObject3).next();
        localObject1 = ((Map.Entry)localObject4).getValue();
        if (localObject1 == null) {
          localObject1 = null;
        }
        for (;;)
        {
          if (localObject1 == null) {
            break label201;
          }
          localHashMap.put((String)((Map.Entry)localObject4).getKey(), localObject1);
          break;
          if ((localObject1 instanceof String))
          {
            localObject2 = (String)localObject1;
            localObject1 = localObject2;
            if (TextUtils.isEmpty((CharSequence)localObject2)) {
              localObject1 = null;
            }
          }
          else if ((localObject1 instanceof Double))
          {
            localObject1 = (Double)localObject1;
            if (((Double)localObject1).doubleValue() != 0.0D) {
              localObject1 = a(((Double)localObject1).doubleValue());
            } else {
              localObject1 = null;
            }
          }
          else if ((localObject1 instanceof Boolean))
          {
            if (localObject1 != Boolean.FALSE) {
              localObject1 = "1";
            } else {
              localObject1 = null;
            }
          }
          else
          {
            localObject1 = String.valueOf(localObject1);
          }
        }
      }
    }
    localObject1 = (aq)paramk.h(aq.class);
    if (localObject1 != null)
    {
      b(localHashMap, "t", ((aq)localObject1).aLK);
      b(localHashMap, "cid", ((aq)localObject1).aLL);
      b(localHashMap, "uid", ((aq)localObject1).aLM);
      b(localHashMap, "sc", ((aq)localObject1).aLP);
      a(localHashMap, "sf", ((aq)localObject1).aLR);
      a(localHashMap, "ni", ((aq)localObject1).aLQ);
      b(localHashMap, "adid", ((aq)localObject1).aLN);
      a(localHashMap, "ate", ((aq)localObject1).aLO);
    }
    localObject1 = (ar)paramk.h(ar.class);
    if (localObject1 != null)
    {
      b(localHashMap, "cd", ((ar)localObject1).aLS);
      a(localHashMap, "a", ((ar)localObject1).aLT);
      b(localHashMap, "dr", ((ar)localObject1).aLW);
    }
    localObject1 = (ao)paramk.h(ao.class);
    if (localObject1 != null)
    {
      b(localHashMap, "ec", ((ao)localObject1).zS);
      b(localHashMap, "ea", ((ao)localObject1).aHq);
      b(localHashMap, "el", ((ao)localObject1).aLG);
      a(localHashMap, "ev", ((ao)localObject1).aLH);
    }
    localObject1 = (ai)paramk.h(ai.class);
    if (localObject1 != null)
    {
      b(localHashMap, "cn", ((ai)localObject1).mName);
      b(localHashMap, "cs", ((ai)localObject1).aLq);
      b(localHashMap, "cm", ((ai)localObject1).aLr);
      b(localHashMap, "ck", ((ai)localObject1).aLs);
      b(localHashMap, "cc", ((ai)localObject1).aLt);
      b(localHashMap, "ci", ((ai)localObject1).aBR);
      b(localHashMap, "anid", ((ai)localObject1).aLu);
      b(localHashMap, "gclid", ((ai)localObject1).aLv);
      b(localHashMap, "dclid", ((ai)localObject1).aLw);
      b(localHashMap, "aclid", ((ai)localObject1).aLx);
    }
    localObject1 = (ap)paramk.h(ap.class);
    if (localObject1 != null)
    {
      b(localHashMap, "exd", ((ap)localObject1).aLI);
      a(localHashMap, "exf", ((ap)localObject1).aLJ);
    }
    localObject1 = (as)paramk.h(as.class);
    if (localObject1 != null)
    {
      b(localHashMap, "sn", ((as)localObject1).aLZ);
      b(localHashMap, "sa", ((as)localObject1).aHq);
      b(localHashMap, "st", ((as)localObject1).aMa);
    }
    localObject1 = (at)paramk.h(at.class);
    if (localObject1 != null)
    {
      b(localHashMap, "utv", ((at)localObject1).aMb);
      a(localHashMap, "utt", ((at)localObject1).aMc);
      b(localHashMap, "utc", ((at)localObject1).zS);
      b(localHashMap, "utl", ((at)localObject1).aLG);
    }
    localObject1 = (aj)paramk.h(aj.class);
    if (localObject1 != null)
    {
      localObject1 = Collections.unmodifiableMap(((aj)localObject1).aLy).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = h.b("cd", ((Integer)((Map.Entry)localObject2).getKey()).intValue());
        if (!TextUtils.isEmpty((CharSequence)localObject3)) {
          localHashMap.put(localObject3, (String)((Map.Entry)localObject2).getValue());
        }
      }
    }
    localObject1 = (ak)paramk.h(ak.class);
    if (localObject1 != null)
    {
      localObject1 = Collections.unmodifiableMap(((ak)localObject1).aLz).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = h.b("cm", ((Integer)((Map.Entry)localObject2).getKey()).intValue());
        if (!TextUtils.isEmpty((CharSequence)localObject3)) {
          localHashMap.put(localObject3, a(((Double)((Map.Entry)localObject2).getValue()).doubleValue()));
        }
      }
    }
    localObject1 = (an)paramk.h(an.class);
    if (localObject1 != null)
    {
      localObject2 = ((an)localObject1).aAQ;
      if (localObject2 != null)
      {
        localObject2 = ((b)localObject2).mF().entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Map.Entry)((Iterator)localObject2).next();
          if (((String)((Map.Entry)localObject3).getKey()).startsWith("&")) {
            localHashMap.put(((String)((Map.Entry)localObject3).getKey()).substring(1), (String)((Map.Entry)localObject3).getValue());
          } else {
            localHashMap.put((String)((Map.Entry)localObject3).getKey(), (String)((Map.Entry)localObject3).getValue());
          }
        }
      }
      localObject2 = Collections.unmodifiableList(((an)localObject1).aAS).iterator();
      int i = 1;
      while (((Iterator)localObject2).hasNext())
      {
        localHashMap.putAll(((c)((Iterator)localObject2).next()).aX(h.b("promo", i)));
        i += 1;
      }
      localObject2 = Collections.unmodifiableList(((an)localObject1).aAT).iterator();
      i = 1;
      while (((Iterator)localObject2).hasNext())
      {
        localHashMap.putAll(((com.google.android.gms.analytics.a.a)((Iterator)localObject2).next()).aX(h.b("pr", i)));
        i += 1;
      }
      localObject2 = ((an)localObject1).aAR.entrySet().iterator();
      i = 1;
      if (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        localObject1 = (List)((Map.Entry)localObject3).getValue();
        localObject4 = h.b("il", i);
        Iterator localIterator = ((List)localObject1).iterator();
        int j = 1;
        if (localIterator.hasNext())
        {
          com.google.android.gms.analytics.a.a locala = (com.google.android.gms.analytics.a.a)localIterator.next();
          localObject1 = String.valueOf(localObject4);
          String str = String.valueOf(h.b("pi", j));
          if (str.length() != 0) {}
          for (localObject1 = ((String)localObject1).concat(str);; localObject1 = new String((String)localObject1))
          {
            localHashMap.putAll(locala.aX((String)localObject1));
            j += 1;
            break;
          }
        }
        if (!TextUtils.isEmpty((CharSequence)((Map.Entry)localObject3).getKey()))
        {
          localObject1 = String.valueOf(localObject4);
          localObject4 = String.valueOf("nm");
          if (((String)localObject4).length() == 0) {
            break label1419;
          }
        }
        label1419:
        for (localObject1 = ((String)localObject1).concat((String)localObject4);; localObject1 = new String((String)localObject1))
        {
          localHashMap.put(localObject1, (String)((Map.Entry)localObject3).getKey());
          i += 1;
          break;
        }
      }
    }
    localObject1 = (am)paramk.h(am.class);
    if (localObject1 != null)
    {
      b(localHashMap, "ul", ((am)localObject1).aLA);
      a(localHashMap, "sd", ((am)localObject1).aLB);
      a(localHashMap, "sr", ((am)localObject1).aLC, ((am)localObject1).aLD);
      a(localHashMap, "vp", ((am)localObject1).aLE, ((am)localObject1).aLF);
    }
    paramk = (ah)paramk.h(ah.class);
    if (paramk != null)
    {
      b(localHashMap, "an", paramk.aLn);
      b(localHashMap, "aid", paramk.mAppId);
      b(localHashMap, "aiid", paramk.aLp);
      b(localHashMap, "av", paramk.aLo);
    }
    return localHashMap;
  }
  
  public final void b(k paramk)
  {
    ae.E(paramk);
    ae.b(paramk.aBn, "Can't deliver not submitted measurement");
    ae.bh("deliver should be called on worker thread");
    Object localObject1 = paramk.mK();
    Object localObject2 = (aq)((k)localObject1).i(aq.class);
    if (TextUtils.isEmpty(((aq)localObject2).aLK)) {
      this.aMq.pg().a(c((k)localObject1), "Ignoring measurement without type");
    }
    do
    {
      return;
      if (TextUtils.isEmpty(((aq)localObject2).aLL))
      {
        this.aMq.pg().a(c((k)localObject1), "Ignoring measurement without client id");
        return;
      }
    } while (this.aBd.pj().aAO);
    double d = ((aq)localObject2).aLR;
    if (di.a(d, ((aq)localObject2).aLL))
    {
      e("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(d));
      return;
    }
    localObject1 = c((k)localObject1);
    ((Map)localObject1).put("v", "1");
    ((Map)localObject1).put("_v", bc.aMr);
    ((Map)localObject1).put("tid", this.aBg);
    if (this.aBd.pj().aAN)
    {
      paramk = new StringBuilder();
      localObject1 = ((Map)localObject1).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        if (paramk.length() != 0) {
          paramk.append(", ");
        }
        paramk.append((String)((Map.Entry)localObject2).getKey());
        paramk.append("=");
        paramk.append((String)((Map.Entry)localObject2).getValue());
      }
      f("Dry run is enabled. GoogleAnalytics would have sent", paramk.toString());
      return;
    }
    HashMap localHashMap = new HashMap();
    di.c(localHashMap, "uid", ((aq)localObject2).aLM);
    Object localObject3 = (ah)paramk.h(ah.class);
    if (localObject3 != null)
    {
      di.c(localHashMap, "an", ((ah)localObject3).aLn);
      di.c(localHashMap, "aid", ((ah)localObject3).mAppId);
      di.c(localHashMap, "av", ((ah)localObject3).aLo);
      di.c(localHashMap, "aiid", ((ah)localObject3).aLp);
    }
    localObject3 = ((aq)localObject2).aLL;
    String str = this.aBg;
    if (!TextUtils.isEmpty(((aq)localObject2).aLN)) {}
    for (boolean bool = true;; bool = false)
    {
      localObject2 = new bg((String)localObject3, str, bool, 0L, localHashMap);
      ((Map)localObject1).put("_s", String.valueOf(this.aMq.pi().a((bg)localObject2)));
      paramk = new cr(this.aMq.pg(), (Map)localObject1, paramk.aBo, true);
      this.aMq.pi().a(paramk);
      return;
    }
  }
  
  public final Uri mJ()
  {
    return this.aBh;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */