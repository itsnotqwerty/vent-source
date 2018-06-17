package com.google.android.gms.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.PersistableBundle;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;

public final class cj
  extends bb
{
  boolean aNJ;
  boolean aNK;
  private final AlarmManager aNL = (AlarmManager)this.aMq.mContext.getSystemService("alarm");
  private Integer aNM;
  
  protected cj(bd parambd)
  {
    super(parambd);
  }
  
  private final int getJobId()
  {
    if (this.aNM == null)
    {
      str = String.valueOf(this.aMq.mContext.getPackageName());
      if (str.length() == 0) {
        break label54;
      }
    }
    label54:
    for (String str = "analytics".concat(str);; str = new String("analytics"))
    {
      this.aNM = Integer.valueOf(str.hashCode());
      return this.aNM.intValue();
    }
  }
  
  private final PendingIntent qa()
  {
    Intent localIntent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
    localIntent.setComponent(new ComponentName(this.aMq.mContext, "com.google.android.gms.analytics.AnalyticsReceiver"));
    return PendingIntent.getBroadcast(this.aMq.mContext, 0, localIntent, 0);
  }
  
  public final void cancel()
  {
    this.aNK = false;
    this.aNL.cancel(qa());
    if (Build.VERSION.SDK_INT >= 24)
    {
      JobScheduler localJobScheduler = (JobScheduler)this.aMq.mContext.getSystemService("jobscheduler");
      d("Cancelling job. JobID", Integer.valueOf(getJobId()));
      localJobScheduler.cancel(getJobId());
    }
  }
  
  protected final void mG()
  {
    try
    {
      cancel();
      if (ce.pO() > 0L)
      {
        ActivityInfo localActivityInfo = this.aMq.mContext.getPackageManager().getReceiverInfo(new ComponentName(this.aMq.mContext, "com.google.android.gms.analytics.AnalyticsReceiver"), 2);
        if ((localActivityInfo != null) && (localActivityInfo.enabled))
        {
          bw("Receiver registered for local dispatch.");
          this.aNJ = true;
        }
      }
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
  }
  
  public final void pZ()
  {
    pf();
    ae.a(this.aNJ, "Receiver not registered");
    long l1 = ce.pO();
    long l2;
    if (l1 > 0L)
    {
      cancel();
      l2 = this.aMq.aBm.elapsedRealtime();
      this.aNK = true;
      if (Build.VERSION.SDK_INT >= 24)
      {
        bw("Scheduling upload with JobScheduler");
        Object localObject = new ComponentName(this.aMq.mContext, "com.google.android.gms.analytics.AnalyticsJobService");
        JobScheduler localJobScheduler = (JobScheduler)this.aMq.mContext.getSystemService("jobscheduler");
        localObject = new JobInfo.Builder(getJobId(), (ComponentName)localObject);
        ((JobInfo.Builder)localObject).setMinimumLatency(l1);
        ((JobInfo.Builder)localObject).setOverrideDeadline(l1 << 1);
        PersistableBundle localPersistableBundle = new PersistableBundle();
        localPersistableBundle.putString("action", "com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        ((JobInfo.Builder)localObject).setExtras(localPersistableBundle);
        localObject = ((JobInfo.Builder)localObject).build();
        d("Scheduling job. JobID", Integer.valueOf(getJobId()));
        localJobScheduler.schedule((JobInfo)localObject);
      }
    }
    else
    {
      return;
    }
    bw("Scheduling upload with AlarmManager");
    this.aNL.setInexactRepeating(2, l2 + l1, l1, qa());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */