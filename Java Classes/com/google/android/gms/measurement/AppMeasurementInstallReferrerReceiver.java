package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.BroadcastReceiver.PendingResult;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.hq;
import com.google.android.gms.internal.hs;

public final class AppMeasurementInstallReferrerReceiver
  extends BroadcastReceiver
  implements hs
{
  private hq bdR;
  
  public final void b(Context paramContext, Intent paramIntent) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (this.bdR == null) {
      this.bdR = new hq(this);
    }
    this.bdR.onReceive(paramContext, paramIntent);
  }
  
  public final BroadcastReceiver.PendingResult rQ()
  {
    return goAsync();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */