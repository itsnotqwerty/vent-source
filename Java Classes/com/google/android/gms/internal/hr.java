package com.google.android.gms.internal;

import android.content.BroadcastReceiver.PendingResult;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;

final class hr
  implements Runnable
{
  hr(hz paramhz, long paramLong, Bundle paramBundle, Context paramContext, hb paramhb, BroadcastReceiver.PendingResult paramPendingResult) {}
  
  public final void run()
  {
    long l3 = this.aRB.qQ().aTM.get();
    long l2 = this.aUk;
    long l1 = l2;
    if (l3 > 0L) {
      if (l2 < l3)
      {
        l1 = l2;
        if (l2 > 0L) {}
      }
      else
      {
        l1 = l3 - 1L;
      }
    }
    if (l1 > 0L) {
      this.aUl.putLong("click_timestamp", l1);
    }
    AppMeasurement.getInstance(this.val$context).logEventInternal("auto", "_cmp", this.aUl);
    this.aUm.aTi.bq("Install campaign recorded");
    if (this.aBi != null) {
      this.aBi.finish();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */