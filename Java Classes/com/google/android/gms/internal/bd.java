package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.a;
import com.google.android.gms.analytics.n;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.f;

public class bd
{
  private static volatile bd aMs;
  public final com.google.android.gms.common.util.e aBm;
  final da aMA;
  private final a aMB;
  private final bv aMC;
  private final au aMD;
  private final bo aME;
  public final ci aMF;
  final Context aMt;
  final ce aMu;
  final cw aMv;
  private final n aMw;
  private final av aMx;
  final cj aMy;
  private final dj aMz;
  final Context mContext;
  
  private bd(bf parambf)
  {
    Object localObject1 = parambf.aCq;
    ae.g(localObject1, "Application context can't be null");
    Object localObject2 = parambf.aMH;
    ae.E(localObject2);
    this.mContext = ((Context)localObject1);
    this.aMt = ((Context)localObject2);
    this.aBm = f.oG();
    this.aMu = new ce(this);
    localObject2 = new cw(this);
    ((bb)localObject2).initialize();
    this.aMv = ((cw)localObject2);
    localObject2 = pg();
    Object localObject3 = bc.VERSION;
    ((ba)localObject2).by(String.valueOf(localObject3).length() + 134 + "Google Analytics " + (String)localObject3 + " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4");
    localObject2 = new da(this);
    ((bb)localObject2).initialize();
    this.aMA = ((da)localObject2);
    localObject2 = new dj(this);
    ((bb)localObject2).initialize();
    this.aMz = ((dj)localObject2);
    parambf = new av(this, parambf);
    localObject2 = new bv(this);
    localObject3 = new au(this);
    bo localbo = new bo(this);
    ci localci = new ci(this);
    localObject1 = n.u((Context)localObject1);
    ((n)localObject1).aBE = new be(this);
    this.aMw = ((n)localObject1);
    localObject1 = new a(this);
    ((bb)localObject2).initialize();
    this.aMC = ((bv)localObject2);
    ((bb)localObject3).initialize();
    this.aMD = ((au)localObject3);
    localbo.initialize();
    this.aME = localbo;
    localci.initialize();
    this.aMF = localci;
    localObject2 = new cj(this);
    ((bb)localObject2).initialize();
    this.aMy = ((cj)localObject2);
    parambf.initialize();
    this.aMx = parambf;
    localObject2 = ((com.google.android.gms.analytics.e)localObject1).aBd.pk();
    ((dj)localObject2).qs();
    if (((dj)localObject2).qt()) {
      ((a)localObject1).aAN = ((dj)localObject2).qu();
    }
    ((dj)localObject2).qs();
    ((a)localObject1).aAL = true;
    this.aMB = ((a)localObject1);
    parambf.aMj.start();
  }
  
  static void a(bb parambb)
  {
    ae.g(parambb, "Analytics service not created/initialized");
    ae.b(parambb.isInitialized(), "Analytics service not initialized");
  }
  
  public static bd ab(Context paramContext)
  {
    ae.E(paramContext);
    if (aMs == null) {}
    try
    {
      if (aMs == null)
      {
        com.google.android.gms.common.util.e locale = f.oG();
        long l1 = locale.elapsedRealtime();
        paramContext = new bd(new bf(paramContext));
        aMs = paramContext;
        a.mE();
        l1 = locale.elapsedRealtime() - l1;
        long l2 = ((Long)cm.aOD.aOE).longValue();
        if (l1 > l2) {
          paramContext.pg().c("Slow initialization (ms)", Long.valueOf(l1), Long.valueOf(l2));
        }
      }
      return aMs;
    }
    finally {}
  }
  
  public final cw pg()
  {
    a(this.aMv);
    return this.aMv;
  }
  
  public final n ph()
  {
    ae.E(this.aMw);
    return this.aMw;
  }
  
  public final av pi()
  {
    a(this.aMx);
    return this.aMx;
  }
  
  public final a pj()
  {
    ae.E(this.aMB);
    if (this.aMB.aAL) {}
    for (boolean bool = true;; bool = false)
    {
      ae.b(bool, "Analytics instance not initialized");
      return this.aMB;
    }
  }
  
  public final dj pk()
  {
    a(this.aMz);
    return this.aMz;
  }
  
  public final au pl()
  {
    a(this.aMD);
    return this.aMD;
  }
  
  public final bv pm()
  {
    a(this.aMC);
    return this.aMC;
  }
  
  public final bo pn()
  {
    a(this.aME);
    return this.aME;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */