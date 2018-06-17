package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.PersistableBundle;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.dd;
import com.google.android.gms.internal.dg;

@TargetApi(24)
public final class AnalyticsJobService
  extends JobService
  implements dg
{
  private dd<AnalyticsJobService> aAH;
  
  private final dd<AnalyticsJobService> mD()
  {
    if (this.aAH == null) {
      this.aAH = new dd(this);
    }
    return this.aAH;
  }
  
  @TargetApi(24)
  public final void a(JobParameters paramJobParameters)
  {
    jobFinished(paramJobParameters, false);
  }
  
  public final boolean cA(int paramInt)
  {
    return stopSelfResult(paramInt);
  }
  
  public final void onCreate()
  {
    super.onCreate();
    mD().onCreate();
  }
  
  public final void onDestroy()
  {
    mD().onDestroy();
    super.onDestroy();
  }
  
  public final int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    return mD().a(paramIntent, paramInt2);
  }
  
  public final boolean onStartJob(JobParameters paramJobParameters)
  {
    dd localdd = mD();
    cw localcw = bd.ab(localdd.aPl).pg();
    String str = paramJobParameters.getExtras().getString("action");
    localcw.d("Local AnalyticsJobService called. action", str);
    if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(str)) {
      localdd.a(null, paramJobParameters);
    }
    return true;
  }
  
  public final boolean onStopJob(JobParameters paramJobParameters)
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/AnalyticsJobService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */