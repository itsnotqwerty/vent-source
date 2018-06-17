package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.PersistableBundle;
import com.google.android.gms.common.util.e;

public final class kz
  extends iy
{
  private Integer aNM;
  private final AlarmManager aXe = (AlarmManager)getContext().getSystemService("alarm");
  private final gh aXf;
  
  protected kz(hz paramhz)
  {
    super(paramhz);
    this.aXf = new la(this, paramhz, paramhz);
  }
  
  private final int getJobId()
  {
    if (this.aNM == null)
    {
      str = String.valueOf(getContext().getPackageName());
      if (str.length() == 0) {
        break label51;
      }
    }
    label51:
    for (String str = "measurement".concat(str);; str = new String("measurement"))
    {
      this.aNM = Integer.valueOf(str.hashCode());
      return this.aNM.intValue();
    }
  }
  
  private final PendingIntent qa()
  {
    Intent localIntent = new Intent().setClassName(getContext(), "com.google.android.gms.measurement.AppMeasurementReceiver");
    localIntent.setAction("com.google.android.gms.measurement.UPLOAD");
    return PendingIntent.getBroadcast(getContext(), 0, localIntent, 0);
  }
  
  @TargetApi(24)
  private final void sp()
  {
    JobScheduler localJobScheduler = (JobScheduler)getContext().getSystemService("jobscheduler");
    qP().aTi.j("Cancelling job. JobID", Integer.valueOf(getJobId()));
    localJobScheduler.cancel(getJobId());
  }
  
  public final void cancel()
  {
    pf();
    this.aXe.cancel(qa());
    this.aXf.cancel();
    if (Build.VERSION.SDK_INT >= 24) {
      sp();
    }
  }
  
  public final void n(long paramLong)
  {
    pf();
    if (!hq.s(getContext())) {
      qP().aTh.bq("Receiver not registered/enabled");
    }
    if (!ko.aj(getContext())) {
      qP().aTh.bq("Service not registered/enabled");
    }
    cancel();
    long l = qH().elapsedRealtime();
    if ((paramLong < Math.max(0L, ((Long)gr.aSB.aSN).longValue())) && (!this.aXf.pW()))
    {
      qP().aTi.bq("Scheduling upload with DelayedRunnable");
      this.aXf.n(paramLong);
    }
    if (Build.VERSION.SDK_INT >= 24)
    {
      qP().aTi.bq("Scheduling upload with JobScheduler");
      Object localObject = new ComponentName(getContext(), "com.google.android.gms.measurement.AppMeasurementJobService");
      JobScheduler localJobScheduler = (JobScheduler)getContext().getSystemService("jobscheduler");
      localObject = new JobInfo.Builder(getJobId(), (ComponentName)localObject);
      ((JobInfo.Builder)localObject).setMinimumLatency(paramLong);
      ((JobInfo.Builder)localObject).setOverrideDeadline(paramLong << 1);
      PersistableBundle localPersistableBundle = new PersistableBundle();
      localPersistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
      ((JobInfo.Builder)localObject).setExtras(localPersistableBundle);
      localObject = ((JobInfo.Builder)localObject).build();
      qP().aTi.j("Scheduling job. JobID", Integer.valueOf(getJobId()));
      localJobScheduler.schedule((JobInfo)localObject);
      return;
    }
    qP().aTi.bq("Scheduling upload with AlarmManager");
    this.aXe.setInexactRepeating(2, l + paramLong, Math.max(((Long)gr.aSw.aSN).longValue(), paramLong), qa());
  }
  
  protected final boolean ri()
  {
    this.aXe.cancel(qa());
    if (Build.VERSION.SDK_INT >= 24) {
      sp();
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/kz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */