package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.a.a;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.d;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.af;

@KeepName
public final class CustomEventAdapter
  implements MediationBannerAdapter<com.google.android.gms.ads.mediation.customevent.c, c>, MediationInterstitialAdapter<com.google.android.gms.ads.mediation.customevent.c, c>
{
  private View ayM;
  private a ayN;
  private b ayO;
  
  private static <T> T aR(String paramString)
  {
    try
    {
      Object localObject = Class.forName(paramString).newInstance();
      return (T)localObject;
    }
    catch (Throwable localThrowable)
    {
      String str = localThrowable.getMessage();
      af.bt(String.valueOf(paramString).length() + 46 + String.valueOf(str).length() + "Could not instantiate custom event adapter: " + paramString + ". " + str);
    }
    return null;
  }
  
  public final void destroy() {}
  
  public final Class<com.google.android.gms.ads.mediation.customevent.c> getAdditionalParametersType()
  {
    return com.google.android.gms.ads.mediation.customevent.c.class;
  }
  
  public final View getBannerView()
  {
    return this.ayM;
  }
  
  public final Class<c> getServerParametersType()
  {
    return c.class;
  }
  
  public final void requestBannerAd(com.google.ads.mediation.c paramc, Activity paramActivity, c paramc1, com.google.ads.b paramb, com.google.ads.mediation.a parama, com.google.android.gms.ads.mediation.customevent.c paramc2)
  {
    this.ayN = ((a)aR(paramc1.className));
    if (this.ayN == null)
    {
      paramc.a(a.a.ayn);
      return;
    }
    if (paramc2 != null) {
      paramc2.aV(paramc1.label);
    }
    new a(this, paramc);
  }
  
  public final void requestInterstitialAd(d paramd, Activity paramActivity, c paramc, com.google.ads.mediation.a parama, com.google.android.gms.ads.mediation.customevent.c paramc1)
  {
    this.ayO = ((b)aR(paramc.className));
    if (this.ayO == null)
    {
      paramd.b(a.a.ayn);
      return;
    }
    if (paramc1 != null) {
      paramc1.aV(paramc.label);
    }
    new b(this, paramd);
  }
  
  public final void showInterstitial() {}
  
  static final class a
  {
    private final CustomEventAdapter ayP;
    private final com.google.ads.mediation.c ayQ;
    
    public a(CustomEventAdapter paramCustomEventAdapter, com.google.ads.mediation.c paramc)
    {
      this.ayP = paramCustomEventAdapter;
      this.ayQ = paramc;
    }
  }
  
  final class b
  {
    private final CustomEventAdapter ayP;
    private final d ayR;
    
    public b(CustomEventAdapter paramCustomEventAdapter, d paramd)
    {
      this.ayP = paramCustomEventAdapter;
      this.ayR = paramd;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/ads/mediation/customevent/CustomEventAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */