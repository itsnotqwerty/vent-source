package com.google.ads.mediation.admob;

import android.os.Bundle;
import android.support.annotation.Keep;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;

@Keep
public final class AdMobAdapter
  extends AbstractAdViewAdapter
{
  public static final String NEW_BUNDLE = "_newBundle";
  
  protected final Bundle zza(Bundle paramBundle1, Bundle paramBundle2)
  {
    if (paramBundle1 != null) {}
    for (;;)
    {
      Bundle localBundle = paramBundle1;
      if (paramBundle1.getBoolean("_newBundle")) {
        localBundle = new Bundle(paramBundle1);
      }
      localBundle.putInt("gw", 1);
      localBundle.putString("mad_hac", paramBundle2.getString("mad_hac"));
      if (!TextUtils.isEmpty(paramBundle2.getString("adJson"))) {
        localBundle.putString("_ad", paramBundle2.getString("adJson"));
      }
      localBundle.putBoolean("_noRefresh", true);
      return localBundle;
      paramBundle1 = new Bundle();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/ads/mediation/admob/AdMobAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */