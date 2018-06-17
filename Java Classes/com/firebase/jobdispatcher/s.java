package com.firebase.jobdispatcher;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.support.v4.g.m;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Locale;

public abstract class s
  extends Service
{
  public static final int RESULT_FAIL_NORETRY = 2;
  public static final int RESULT_FAIL_RETRY = 1;
  public static final int RESULT_SUCCESS = 0;
  static final Handler mainHandler = new Handler(Looper.getMainLooper());
  private final m.a binder = new m.a()
  {
    public final void a(Bundle paramAnonymousBundle, l paramAnonymousl)
    {
      ??? = GooglePlayReceiver.kK().g(paramAnonymousBundle);
      if (??? == null)
      {
        Log.wtf("FJD.JobService", "start: unknown invocation provided");
        return;
      }
      paramAnonymousBundle = s.this;
      q localq = ((q.a)???).kT();
      synchronized (paramAnonymousBundle.runningJobs)
      {
        if (paramAnonymousBundle.runningJobs.containsKey(localq.getTag()))
        {
          Log.w("FJD.JobService", String.format(Locale.US, "Job with tag = %s was already running.", new Object[] { localq.getTag() }));
          return;
        }
      }
      paramAnonymousBundle.runningJobs.put(localq.getTag(), new s.a(localq, paramAnonymousl, (byte)0));
      s.mainHandler.post(new s.2(paramAnonymousBundle, localq));
    }
    
    public final void a(Bundle paramAnonymousBundle, boolean paramAnonymousBoolean)
    {
      ??? = GooglePlayReceiver.kK().g(paramAnonymousBundle);
      if (??? == null)
      {
        Log.wtf("FJD.JobService", "stop: unknown invocation provided");
        return;
      }
      paramAnonymousBundle = s.this;
      q localq = ((q.a)???).kT();
      s.a locala;
      synchronized (paramAnonymousBundle.runningJobs)
      {
        locala = (s.a)paramAnonymousBundle.runningJobs.remove(localq.getTag());
        if (locala == null)
        {
          if (Log.isLoggable("FJD.JobService", 3)) {
            Log.d("FJD.JobService", "Provided job has already been executed.");
          }
          return;
        }
      }
      s.mainHandler.post(new s.3(paramAnonymousBundle, localq, paramAnonymousBoolean, locala));
    }
  };
  final m<String, a> runningJobs = new m(1);
  
  protected final void dump(FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public final void jobFinished(r paramr, boolean paramBoolean)
  {
    if (paramr == null)
    {
      Log.e("FJD.JobService", "jobFinished called with a null JobParameters");
      return;
    }
    for (;;)
    {
      synchronized (this.runningJobs)
      {
        paramr = (a)this.runningJobs.remove(paramr.getTag());
        if (paramr != null)
        {
          if (paramBoolean)
          {
            i = 1;
            paramr.cu(i);
          }
        }
        else {
          return;
        }
      }
      int i = 0;
    }
  }
  
  public final IBinder onBind(Intent paramIntent)
  {
    return this.binder;
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public final void onRebind(Intent paramIntent)
  {
    super.onRebind(paramIntent);
  }
  
  public final void onStart(Intent paramIntent, int paramInt) {}
  
  public final int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    stopSelf(paramInt2);
    return 2;
  }
  
  public abstract boolean onStartJob(r paramr);
  
  public abstract boolean onStopJob(r paramr);
  
  public final void onTaskRemoved(Intent paramIntent)
  {
    super.onTaskRemoved(paramIntent);
  }
  
  public final boolean onUnbind(Intent paramIntent)
  {
    for (;;)
    {
      int i;
      synchronized (this.runningJobs)
      {
        i = this.runningJobs.size() - 1;
        if (i >= 0)
        {
          a locala = (a)this.runningJobs.remove(this.runningJobs.keyAt(i));
          if (locala != null)
          {
            if (!onStopJob(locala.axS)) {
              break label93;
            }
            j = 1;
            locala.cu(j);
          }
        }
        else
        {
          return super.onUnbind(paramIntent);
        }
      }
      i -= 1;
      continue;
      label93:
      int j = 2;
    }
  }
  
  private static final class a
  {
    final r axS;
    final l axT;
    
    private a(r paramr, l paraml)
    {
      this.axS = paramr;
      this.axT = paraml;
    }
    
    final void cu(int paramInt)
    {
      try
      {
        this.axT.a(GooglePlayReceiver.kK().a(this.axS, new Bundle()), paramInt);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("FJD.JobService", "Failed to send result to driver", localRemoteException);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */