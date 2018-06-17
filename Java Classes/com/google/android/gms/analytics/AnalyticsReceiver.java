package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.dc;

public final class AnalyticsReceiver
  extends BroadcastReceiver
{
  private dc aAI;
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (this.aAI == null) {
      this.aAI = new dc();
    }
    dc.onReceive(paramContext, paramIntent);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/AnalyticsReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */