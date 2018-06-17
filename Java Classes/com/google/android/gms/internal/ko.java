package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import com.google.android.gms.common.internal.ae;

public final class ko<T extends Context,  extends ks>
{
  public final T aWS;
  
  public ko(T paramT)
  {
    ae.E(paramT);
    this.aWS = paramT;
  }
  
  public static boolean aj(Context paramContext)
  {
    ae.E(paramContext);
    if (Build.VERSION.SDK_INT >= 24) {
      return le.n(paramContext, "com.google.android.gms.measurement.AppMeasurementJobService");
    }
    return le.n(paramContext, "com.google.android.gms.measurement.AppMeasurementService");
  }
  
  public final void l(Runnable paramRunnable)
  {
    hz localhz = hz.ai(this.aWS);
    localhz.qP();
    localhz.qO().i(new kr(localhz, paramRunnable));
  }
  
  public final void onCreate()
  {
    hz.ai(this.aWS).qP().aTi.bq("Local AppMeasurementService is starting up");
  }
  
  public final void onDestroy()
  {
    hz.ai(this.aWS).qP().aTi.bq("Local AppMeasurementService is shutting down");
  }
  
  public final void onRebind(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      qP().aTa.bq("onRebind called with null intent");
      return;
    }
    paramIntent = paramIntent.getAction();
    qP().aTi.j("onRebind called. action", paramIntent);
  }
  
  public final boolean onUnbind(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      qP().aTa.bq("onUnbind called with null intent");
      return true;
    }
    paramIntent = paramIntent.getAction();
    qP().aTi.j("onUnbind called for intent. action", paramIntent);
    return true;
  }
  
  public final hb qP()
  {
    return hz.ai(this.aWS).qP();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */