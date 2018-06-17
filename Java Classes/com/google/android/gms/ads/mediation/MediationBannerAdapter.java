package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.d;

public abstract interface MediationBannerAdapter
  extends b
{
  public abstract View getBannerView();
  
  public abstract void requestBannerAd(Context paramContext, c paramc, Bundle paramBundle1, d paramd, a parama, Bundle paramBundle2);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/mediation/MediationBannerAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */