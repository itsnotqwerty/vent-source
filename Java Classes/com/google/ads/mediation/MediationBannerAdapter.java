package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;

@Deprecated
public abstract interface MediationBannerAdapter<ADDITIONAL_PARAMETERS extends f, SERVER_PARAMETERS extends e>
  extends b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS>
{
  public abstract View getBannerView();
  
  public abstract void requestBannerAd(c paramc, Activity paramActivity, SERVER_PARAMETERS paramSERVER_PARAMETERS, com.google.ads.b paramb, a parama, ADDITIONAL_PARAMETERS paramADDITIONAL_PARAMETERS);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/ads/mediation/MediationBannerAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */