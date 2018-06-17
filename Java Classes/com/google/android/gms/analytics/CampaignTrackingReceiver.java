package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.di;

public class CampaignTrackingReceiver
  extends BroadcastReceiver
{
  private static Boolean aAJ;
  
  public static boolean s(Context paramContext)
  {
    ae.E(paramContext);
    if (aAJ != null) {
      return aAJ.booleanValue();
    }
    boolean bool = di.d(paramContext, "com.google.android.gms.analytics.CampaignTrackingReceiver", true);
    aAJ = Boolean.valueOf(bool);
    return bool;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject = bd.ab(paramContext);
    cw localcw = ((bd)localObject).pg();
    if (paramIntent == null)
    {
      localcw.bz("CampaignTrackingReceiver received null intent");
      return;
    }
    paramContext = paramIntent.getStringExtra("referrer");
    paramIntent = paramIntent.getAction();
    localcw.d("CampaignTrackingReceiver received", paramIntent);
    if ((!"com.android.vending.INSTALL_REFERRER".equals(paramIntent)) || (TextUtils.isEmpty(paramContext)))
    {
      localcw.bz("CampaignTrackingReceiver received unexpected intent without referrer extra");
      return;
    }
    int i = ce.pM();
    if (paramContext.length() <= i) {}
    for (;;)
    {
      paramIntent = goAsync();
      localObject = ((bd)localObject).pi();
      paramIntent = new g(paramIntent);
      ae.c(paramContext, "campaign param can't be empty");
      ((ba)localObject).aMq.ph().h(new ax((av)localObject, paramContext, paramIntent));
      return;
      localcw.c("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(paramContext.length()), Integer.valueOf(i));
      paramContext = paramContext.substring(0, i);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/CampaignTrackingReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */