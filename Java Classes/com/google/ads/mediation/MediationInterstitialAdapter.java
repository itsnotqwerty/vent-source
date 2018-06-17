package com.google.ads.mediation;

import android.app.Activity;

@Deprecated
public abstract interface MediationInterstitialAdapter<ADDITIONAL_PARAMETERS extends f, SERVER_PARAMETERS extends e>
  extends b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS>
{
  public abstract void requestInterstitialAd(d paramd, Activity paramActivity, SERVER_PARAMETERS paramSERVER_PARAMETERS, a parama, ADDITIONAL_PARAMETERS paramADDITIONAL_PARAMETERS);
  
  public abstract void showInterstitial();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/ads/mediation/MediationInterstitialAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */