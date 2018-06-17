package com.google.android.gms.ads.reward.mediation;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.b;

public abstract interface MediationRewardedVideoAdAdapter
  extends b
{
  public static final String CUSTOM_EVENT_SERVER_PARAMETER_FIELD = "parameter";
  
  public abstract void initialize(Context paramContext, com.google.android.gms.ads.mediation.a parama, String paramString, a parama1, Bundle paramBundle1, Bundle paramBundle2);
  
  public abstract boolean isInitialized();
  
  public abstract void loadAd(com.google.android.gms.ads.mediation.a parama, Bundle paramBundle1, Bundle paramBundle2);
  
  public abstract void showVideo();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */