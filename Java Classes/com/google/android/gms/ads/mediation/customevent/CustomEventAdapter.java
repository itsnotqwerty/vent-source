package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.a;
import com.google.android.gms.ads.mediation.c;
import com.google.android.gms.ads.mediation.i;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.af;

@KeepName
public final class CustomEventAdapter
  implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter
{
  private CustomEventBanner aAo;
  private CustomEventInterstitial aAp;
  private CustomEventNative aAq;
  private View ayM;
  
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
  
  public final View getBannerView()
  {
    return this.ayM;
  }
  
  public final void onDestroy() {}
  
  public final void onPause() {}
  
  public final void onResume() {}
  
  public final void requestBannerAd(Context paramContext, c paramc, Bundle paramBundle1, com.google.android.gms.ads.d paramd, a parama, Bundle paramBundle2)
  {
    this.aAo = ((CustomEventBanner)aR(paramBundle1.getString("class_name")));
    if (this.aAo == null)
    {
      paramc.cx(0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      this.aAo.requestBannerAd(paramContext, new a(this, paramc), paramBundle1.getString("parameter"), paramd, parama, paramBundle2);
      return;
    }
  }
  
  public final void requestInterstitialAd(Context paramContext, com.google.android.gms.ads.mediation.d paramd, Bundle paramBundle1, a parama, Bundle paramBundle2)
  {
    this.aAp = ((CustomEventInterstitial)aR(paramBundle1.getString("class_name")));
    if (this.aAp == null)
    {
      paramd.cy(0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      this.aAp.requestInterstitialAd(paramContext, new b(this, paramd), paramBundle1.getString("parameter"), parama, paramBundle2);
      return;
    }
  }
  
  public final void requestNativeAd(Context paramContext, com.google.android.gms.ads.mediation.e parame, Bundle paramBundle1, i parami, Bundle paramBundle2)
  {
    this.aAq = ((CustomEventNative)aR(paramBundle1.getString("class_name")));
    if (this.aAq == null)
    {
      parame.cz(0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      this.aAq.requestNativeAd(paramContext, new c(this, parame), paramBundle1.getString("parameter"), parami, paramBundle2);
      return;
    }
  }
  
  public final void showInterstitial()
  {
    this.aAp.showInterstitial();
  }
  
  static final class a
    implements b
  {
    private final CustomEventAdapter aAr;
    private final c ayE;
    
    public a(CustomEventAdapter paramCustomEventAdapter, c paramc)
    {
      this.aAr = paramCustomEventAdapter;
      this.ayE = paramc;
    }
  }
  
  final class b
    implements d
  {
    private final CustomEventAdapter aAr;
    private final com.google.android.gms.ads.mediation.d ayF;
    
    public b(CustomEventAdapter paramCustomEventAdapter, com.google.android.gms.ads.mediation.d paramd)
    {
      this.aAr = paramCustomEventAdapter;
      this.ayF = paramd;
    }
  }
  
  static final class c
    implements e
  {
    private final CustomEventAdapter aAr;
    private final com.google.android.gms.ads.mediation.e ayG;
    
    public c(CustomEventAdapter paramCustomEventAdapter, com.google.android.gms.ads.mediation.e parame)
    {
      this.aAr = paramCustomEventAdapter;
      this.ayG = parame;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/mediation/customevent/CustomEventAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */