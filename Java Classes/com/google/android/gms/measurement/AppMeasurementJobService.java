package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.PersistableBundle;
import com.google.android.gms.internal.hb;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hz;
import com.google.android.gms.internal.ko;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.ks;

@TargetApi(24)
public final class AppMeasurementJobService
  extends JobService
  implements ks
{
  private ko<AppMeasurementJobService> bdS;
  
  private final ko<AppMeasurementJobService> ug()
  {
    if (this.bdS == null) {
      this.bdS = new ko(this);
    }
    return this.bdS;
  }
  
  @TargetApi(24)
  public final void a(JobParameters paramJobParameters)
  {
    jobFinished(paramJobParameters, false);
  }
  
  public final void c(Intent paramIntent) {}
  
  public final boolean cA(int paramInt)
  {
    throw new UnsupportedOperationException();
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
  
  public final boolean onStartJob(JobParameters paramJobParameters)
  {
    ko localko = ug();
    hb localhb = hz.ai(localko.aWS).qP();
    String str = paramJobParameters.getExtras().getString("action");
    localhb.aTi.j("Local AppMeasurementJobService called. action", str);
    if ("com.google.android.gms.measurement.UPLOAD".equals(str)) {
      localko.l(new kq(localko, localhb, paramJobParameters));
    }
    return true;
  }
  
  public final boolean onStopJob(JobParameters paramJobParameters)
  {
    return false;
  }
  
  public final boolean onUnbind(Intent paramIntent)
  {
    return ug().onUnbind(paramIntent);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/measurement/AppMeasurementJobService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */