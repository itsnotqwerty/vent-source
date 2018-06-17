package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.internal.hb;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hz;
import com.google.android.gms.internal.ie;
import com.google.android.gms.internal.ko;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.ks;

public final class AppMeasurementService
  extends Service
  implements ks
{
  private ko<AppMeasurementService> bdT;
  
  private final ko<AppMeasurementService> ug()
  {
    if (this.bdT == null) {
      this.bdT = new ko(this);
    }
    return this.bdT;
  }
  
  public final void a(JobParameters paramJobParameters)
  {
    throw new UnsupportedOperationException();
  }
  
  public final void c(Intent paramIntent)
  {
    AppMeasurementReceiver.b(paramIntent);
  }
  
  public final boolean cA(int paramInt)
  {
    return stopSelfResult(paramInt);
  }
  
  public final IBinder onBind(Intent paramIntent)
  {
    ko localko = ug();
    if (paramIntent == null)
    {
      localko.qP().aTa.bq("onBind called with null intent");
      return null;
    }
    paramIntent = paramIntent.getAction();
    if ("com.google.android.gms.measurement.START".equals(paramIntent)) {
      return new ie(hz.ai(localko.aWS));
    }
    localko.qP().aTd.j("onBind received unknown action", paramIntent);
    return null;
  }
  
  public final void onCreate()
  {
    super.onCreate();
    ug().onCreate();
  }
  
  public final void onDestroy()
  {
    ug().onDestroy();
    super.onDestroy();
  }
  
  public final void onRebind(Intent paramIntent)
  {
    ug().onRebind(paramIntent);
  }
  
  public final int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    ko localko = ug();
    hb localhb = hz.ai(localko.aWS).qP();
    if (paramIntent == null) {
      localhb.aTd.bq("AppMeasurementService started with null intent");
    }
    for (;;)
    {
      return 2;
      String str = paramIntent.getAction();
      localhb.aTi.e("Local AppMeasurementService called. startId, action", Integer.valueOf(paramInt2), str);
      if ("com.google.android.gms.measurement.UPLOAD".equals(str)) {
        localko.l(new kp(localko, paramInt2, localhb, paramIntent));
      }
    }
  }
  
  public final boolean onUnbind(Intent paramIntent)
  {
    return ug().onUnbind(paramIntent);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/measurement/AppMeasurementService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */