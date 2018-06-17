package com.google.android.gms.analytics;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.internal.dd;
import com.google.android.gms.internal.dg;

public final class AnalyticsService
  extends Service
  implements dg
{
  private dd<AnalyticsService> aAH;
  
  private final dd<AnalyticsService> mD()
  {
    if (this.aAH == null) {
      this.aAH = new dd(this);
    }
    return this.aAH;
  }
  
  public final void a(JobParameters paramJobParameters)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean cA(int paramInt)
  {
    return stopSelfResult(paramInt);
  }
  
  public final IBinder onBind(Intent paramIntent)
  {
    mD();
    return null;
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
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/AnalyticsService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */