package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.b;
import com.google.android.gms.ads.b.g.a;
import com.google.android.gms.ads.b.h.a;
import com.google.android.gms.ads.b.i.a;
import com.google.android.gms.ads.b.i.b;
import com.google.android.gms.ads.b.k.a;
import com.google.android.gms.ads.c.a;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.j;
import com.google.android.gms.ads.mediation.l;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.nm;
import com.google.android.gms.internal.nn;
import com.google.android.gms.internal.no;
import com.google.android.gms.internal.nt;
import com.google.android.gms.internal.of;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.ow;
import com.google.android.gms.internal.pp;
import com.google.android.gms.internal.py;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.w;
import com.google.android.gms.internal.zzaqk;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public abstract class AbstractAdViewAdapter
  implements MediationBannerAdapter, MediationNativeAdapter, j, l, MediationRewardedVideoAdAdapter, zzaqk
{
  public static final String AD_UNIT_ID_PARAMETER = "pubid";
  private com.google.android.gms.ads.e zzgs;
  private com.google.android.gms.ads.h zzgt;
  private b zzgu;
  private Context zzgv;
  private com.google.android.gms.ads.h zzgw;
  private com.google.android.gms.ads.reward.mediation.a zzgx;
  private com.google.android.gms.ads.reward.c zzgy = new g(this);
  
  private final com.google.android.gms.ads.c zza(Context paramContext, com.google.android.gms.ads.mediation.a parama, Bundle paramBundle1, Bundle paramBundle2)
  {
    int j = 1;
    c.a locala = new c.a();
    Object localObject = parama.lW();
    if (localObject != null) {
      locala.aza.ayH = ((Date)localObject);
    }
    int i = parama.lX();
    if (i != 0) {
      locala.aza.bbv = i;
    }
    localObject = parama.getKeywords();
    if (localObject != null)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        locala.aza.bbG.add(str);
      }
    }
    localObject = parama.lY();
    if (localObject != null) {
      locala.a((Location)localObject);
    }
    if (parama.ma())
    {
      of.tj();
      paramContext = w.U(paramContext);
      locala.aza.cN(paramContext);
    }
    if (parama.lZ() != -1)
    {
      if (parama.lZ() != 1) {
        break label250;
      }
      i = 1;
      paramContext = locala.aza;
      if (i == 0) {
        break label256;
      }
    }
    label250:
    label256:
    for (i = j;; i = 0)
    {
      paramContext.bbB = i;
      boolean bool = parama.mb();
      locala.aza.bbF = bool;
      locala.a(AdMobAdapter.class, zza(paramBundle1, paramBundle2));
      return locala.ly();
      i = 0;
      break;
    }
  }
  
  public String getAdUnitId(Bundle paramBundle)
  {
    return paramBundle.getString("pubid");
  }
  
  public View getBannerView()
  {
    return this.zzgs;
  }
  
  public Bundle getInterstitialAdapterInfo()
  {
    com.google.android.gms.ads.mediation.b.a locala = new com.google.android.gms.ads.mediation.b.a();
    locala.azX = 1;
    Bundle localBundle = new Bundle();
    localBundle.putInt("capabilities", locala.azX);
    return localBundle;
  }
  
  public pp getVideoController()
  {
    if (this.zzgs != null)
    {
      com.google.android.gms.ads.i locali = this.zzgs.getVideoController();
      if (locali != null) {
        return locali.lz();
      }
    }
    return null;
  }
  
  public void initialize(Context paramContext, com.google.android.gms.ads.mediation.a parama, String paramString, com.google.android.gms.ads.reward.mediation.a parama1, Bundle paramBundle1, Bundle paramBundle2)
  {
    this.zzgv = paramContext.getApplicationContext();
    this.zzgx = parama1;
    this.zzgx.a(this);
  }
  
  public boolean isInitialized()
  {
    return this.zzgx != null;
  }
  
  public void loadAd(com.google.android.gms.ads.mediation.a parama, Bundle paramBundle1, Bundle paramBundle2)
  {
    if ((this.zzgv == null) || (this.zzgx == null))
    {
      af.e("AdMobAdapter.loadAd called before initialize.");
      return;
    }
    this.zzgw = new com.google.android.gms.ads.h(this.zzgv);
    this.zzgw.azq.bbW = true;
    this.zzgw.setAdUnitId(getAdUnitId(paramBundle1));
    Object localObject2 = this.zzgw;
    Object localObject1 = this.zzgy;
    localObject2 = ((com.google.android.gms.ads.h)localObject2).azq;
    for (;;)
    {
      try
      {
        ((qb)localObject2).zzgy = ((com.google.android.gms.ads.reward.c)localObject1);
        if (((qb)localObject2).bbP != null)
        {
          localObject2 = ((qb)localObject2).bbP;
          if (localObject1 == null) {
            continue;
          }
          localObject1 = new com.google.android.gms.internal.m((com.google.android.gms.ads.reward.c)localObject1);
          ((ow)localObject2).a((com.google.android.gms.internal.h)localObject1);
        }
      }
      catch (RemoteException localRemoteException)
      {
        af.d("Failed to set the AdListener.", localRemoteException);
        continue;
      }
      this.zzgw.a(zza(this.zzgv, parama, paramBundle2, paramBundle1));
      return;
      localObject1 = null;
    }
  }
  
  public void onDestroy()
  {
    if (this.zzgs != null)
    {
      this.zzgs.destroy();
      this.zzgs = null;
    }
    if (this.zzgt != null) {
      this.zzgt = null;
    }
    if (this.zzgu != null) {
      this.zzgu = null;
    }
    if (this.zzgw != null) {
      this.zzgw = null;
    }
  }
  
  public void onImmersiveModeUpdated(boolean paramBoolean)
  {
    if (this.zzgt != null) {
      this.zzgt.aq(paramBoolean);
    }
    if (this.zzgw != null) {
      this.zzgw.aq(paramBoolean);
    }
  }
  
  public void onPause()
  {
    if (this.zzgs != null) {
      this.zzgs.pause();
    }
  }
  
  public void onResume()
  {
    if (this.zzgs != null) {
      this.zzgs.resume();
    }
  }
  
  public void requestBannerAd(Context paramContext, com.google.android.gms.ads.mediation.c paramc, Bundle paramBundle1, com.google.android.gms.ads.d paramd, com.google.android.gms.ads.mediation.a parama, Bundle paramBundle2)
  {
    this.zzgs = new com.google.android.gms.ads.e(paramContext);
    this.zzgs.setAdSize(new com.google.android.gms.ads.d(paramd.azl, paramd.azm));
    this.zzgs.setAdUnitId(getAdUnitId(paramBundle1));
    this.zzgs.setAdListener(new d(this, paramc));
    this.zzgs.a(zza(paramContext, parama, paramBundle2, paramBundle1));
  }
  
  public void requestInterstitialAd(Context paramContext, com.google.android.gms.ads.mediation.d paramd, Bundle paramBundle1, com.google.android.gms.ads.mediation.a parama, Bundle paramBundle2)
  {
    this.zzgt = new com.google.android.gms.ads.h(paramContext);
    this.zzgt.setAdUnitId(getAdUnitId(paramBundle1));
    Object localObject = this.zzgt;
    paramd = new e(this, paramd);
    qb localqb = ((com.google.android.gms.ads.h)localObject).azq;
    try
    {
      localqb.baA = paramd;
      if (localqb.bbP != null) {
        localqb.bbP.b(new no(paramd));
      }
      localObject = ((com.google.android.gms.ads.h)localObject).azq;
      paramd = (nm)paramd;
    }
    catch (RemoteException localRemoteException)
    {
      try
      {
        ((qb)localObject).baz = paramd;
        if (((qb)localObject).bbP != null) {
          ((qb)localObject).bbP.a(new nn(paramd));
        }
        this.zzgt.a(zza(paramContext, parama, paramBundle2, paramBundle1));
        return;
        localRemoteException = localRemoteException;
        af.d("Failed to set the AdListener.", localRemoteException);
      }
      catch (RemoteException paramd)
      {
        for (;;)
        {
          af.d("Failed to set the AdClickListener.", paramd);
        }
      }
    }
  }
  
  public void requestNativeAd(Context paramContext, com.google.android.gms.ads.mediation.e parame, Bundle paramBundle1, com.google.android.gms.ads.mediation.i parami, Bundle paramBundle2)
  {
    f localf = new f(this, parame);
    com.google.android.gms.ads.b.a locala = new com.google.android.gms.ads.b.a(paramContext, paramBundle1.getString("pubid")).a(localf);
    parame = parami.mw();
    if (parame != null) {
      locala.a(parame);
    }
    if (parami.my()) {
      locala.a(localf);
    }
    if (parami.mx()) {
      locala.a(localf);
    }
    if (parami.mz()) {
      locala.a(localf);
    }
    if (parami.mA())
    {
      Iterator localIterator = parami.mB().keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (((Boolean)parami.mB().get(str)).booleanValue()) {}
        for (parame = localf;; parame = null)
        {
          locala.a(str, localf, parame);
          break;
        }
      }
    }
    this.zzgu = locala.lx();
    parame = this.zzgu;
    paramContext = zza(paramContext, parami, paramBundle2, paramBundle1).ayZ;
    try
    {
      parame.ayX.a(nt.a(parame.mContext, paramContext));
      return;
    }
    catch (RemoteException paramContext)
    {
      af.c("Failed to load ad.", paramContext);
    }
  }
  
  public void showInterstitial()
  {
    this.zzgt.show();
  }
  
  public void showVideo()
  {
    this.zzgw.show();
  }
  
  protected abstract Bundle zza(Bundle paramBundle1, Bundle paramBundle2);
  
  static final class a
    extends com.google.android.gms.ads.mediation.g
  {
    private final com.google.android.gms.ads.b.g ayA;
    
    public a(com.google.android.gms.ads.b.g paramg)
    {
      this.ayA = paramg;
      this.aAe = paramg.lC().toString();
      this.aAf = paramg.lD();
      this.aAg = paramg.lE().toString();
      this.aAh = paramg.lF();
      this.aAi = paramg.lG().toString();
      if (paramg.lH() != null) {
        this.aAj = paramg.lH().doubleValue();
      }
      if (paramg.lI() != null) {
        this.aAk = paramg.lI().toString();
      }
      if (paramg.lJ() != null) {
        this.aAl = paramg.lJ().toString();
      }
      mr();
      ms();
      this.aAc = paramg.getVideoController();
    }
    
    public final void bn(View paramView)
    {
      if ((paramView instanceof com.google.android.gms.ads.b.e)) {
        ((com.google.android.gms.ads.b.e)paramView).setNativeAd(this.ayA);
      }
      paramView = (com.google.android.gms.ads.b.f)com.google.android.gms.ads.b.f.azE.get(paramView);
      if (paramView != null) {
        paramView.setNativeAd(this.ayA);
      }
    }
  }
  
  static final class b
    extends com.google.android.gms.ads.mediation.h
  {
    private final com.google.android.gms.ads.b.h ayB;
    
    public b(com.google.android.gms.ads.b.h paramh)
    {
      this.ayB = paramh;
      this.aAe = paramh.lC().toString();
      this.aAf = paramh.lD();
      this.aAg = paramh.lE().toString();
      if (paramh.lK() != null) {
        this.aAm = paramh.lK();
      }
      this.aAi = paramh.lG().toString();
      this.aAn = paramh.lL().toString();
      mr();
      ms();
      this.aAc = paramh.getVideoController();
    }
    
    public final void bn(View paramView)
    {
      if ((paramView instanceof com.google.android.gms.ads.b.e)) {
        ((com.google.android.gms.ads.b.e)paramView).setNativeAd(this.ayB);
      }
      paramView = (com.google.android.gms.ads.b.f)com.google.android.gms.ads.b.f.azE.get(paramView);
      if (paramView != null) {
        paramView.setNativeAd(this.ayB);
      }
    }
  }
  
  static final class c
    extends com.google.android.gms.ads.mediation.k
  {
    private final com.google.android.gms.ads.b.k ayC;
    
    public c(com.google.android.gms.ads.b.k paramk)
    {
      this.ayC = paramk;
      this.aAu = paramk.lN();
      this.aAv = paramk.lD();
      this.body = paramk.getBody();
      this.aAw = paramk.lF();
      this.aAx = paramk.lO();
      this.aAy = paramk.lP();
      this.aAz = paramk.lH();
      this.aAA = paramk.lQ();
      this.aAB = paramk.lR();
      this.aAD = paramk.lS();
      this.aAE = true;
      this.aAF = true;
      this.aAC = paramk.getVideoController();
    }
    
    public final void bo(View paramView)
    {
      if ((paramView instanceof com.google.android.gms.ads.b.m)) {
        com.google.android.gms.ads.b.m.lT();
      }
    }
  }
  
  static final class d
    extends com.google.android.gms.ads.a
    implements com.google.android.gms.ads.a.a, nm
  {
    private AbstractAdViewAdapter ayD;
    private com.google.android.gms.ads.mediation.c ayE;
    
    public d(AbstractAdViewAdapter paramAbstractAdViewAdapter, com.google.android.gms.ads.mediation.c paramc)
    {
      this.ayD = paramAbstractAdViewAdapter;
      this.ayE = paramc;
    }
    
    public final void cv(int paramInt)
    {
      this.ayE.cx(paramInt);
    }
    
    public final void lj()
    {
      this.ayE.mc();
    }
    
    public final void lk()
    {
      this.ayE.md();
    }
    
    public final void ll()
    {
      this.ayE.me();
    }
    
    public final void lm()
    {
      this.ayE.mf();
    }
    
    public final void ln()
    {
      this.ayE.mg();
    }
    
    public final void m(String paramString1, String paramString2)
    {
      this.ayE.n(paramString1, paramString2);
    }
  }
  
  static final class e
    extends com.google.android.gms.ads.a
    implements nm
  {
    private AbstractAdViewAdapter ayD;
    private com.google.android.gms.ads.mediation.d ayF;
    
    public e(AbstractAdViewAdapter paramAbstractAdViewAdapter, com.google.android.gms.ads.mediation.d paramd)
    {
      this.ayD = paramAbstractAdViewAdapter;
      this.ayF = paramd;
    }
    
    public final void cv(int paramInt)
    {
      this.ayF.cy(paramInt);
    }
    
    public final void lj()
    {
      this.ayF.mh();
    }
    
    public final void lk()
    {
      this.ayF.mi();
    }
    
    public final void ll()
    {
      this.ayF.mj();
    }
    
    public final void lm()
    {
      this.ayF.mk();
    }
    
    public final void ln()
    {
      this.ayF.ml();
    }
  }
  
  static final class f
    extends com.google.android.gms.ads.a
    implements g.a, h.a, i.a, i.b, k.a
  {
    private AbstractAdViewAdapter ayD;
    private com.google.android.gms.ads.mediation.e ayG;
    
    public f(AbstractAdViewAdapter paramAbstractAdViewAdapter, com.google.android.gms.ads.mediation.e parame)
    {
      this.ayD = paramAbstractAdViewAdapter;
      this.ayG = parame;
    }
    
    public final void a(com.google.android.gms.ads.b.g paramg)
    {
      this.ayG.a(this.ayD, new AbstractAdViewAdapter.a(paramg));
    }
    
    public final void a(com.google.android.gms.ads.b.h paramh)
    {
      this.ayG.a(this.ayD, new AbstractAdViewAdapter.b(paramh));
    }
    
    public final void a(com.google.android.gms.ads.b.i parami)
    {
      this.ayG.b(parami);
    }
    
    public final void a(com.google.android.gms.ads.b.i parami, String paramString)
    {
      this.ayG.b(parami, paramString);
    }
    
    public final void a(com.google.android.gms.ads.b.k paramk)
    {
      this.ayG.a(this.ayD, new AbstractAdViewAdapter.c(paramk));
    }
    
    public final void cv(int paramInt)
    {
      this.ayG.cz(paramInt);
    }
    
    public final void lj() {}
    
    public final void lk()
    {
      this.ayG.mm();
    }
    
    public final void ll()
    {
      this.ayG.mn();
    }
    
    public final void lm()
    {
      this.ayG.mo();
    }
    
    public final void ln()
    {
      this.ayG.mp();
    }
    
    public final void lo()
    {
      this.ayG.mq();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/ads/mediation/AbstractAdViewAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */