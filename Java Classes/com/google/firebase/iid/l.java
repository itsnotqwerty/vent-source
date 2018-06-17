package com.google.firebase.iid;

import android.content.BroadcastReceiver.PendingResult;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.common.stats.a;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;

public final class l
  implements ServiceConnection
{
  private final Context aUM;
  private final ScheduledExecutorService aZz;
  private final Intent bfl;
  private final Queue<h> bfm = new ArrayDeque();
  private j bfn;
  private boolean bfo = false;
  
  public l(Context paramContext, String paramString)
  {
    this(paramContext, paramString, new ScheduledThreadPoolExecutor(0));
  }
  
  private l(Context paramContext, String paramString, ScheduledExecutorService paramScheduledExecutorService)
  {
    this.aUM = paramContext.getApplicationContext();
    this.bfl = new Intent(paramString).setPackage(this.aUM.getPackageName());
    this.aZz = paramScheduledExecutorService;
  }
  
  private final void uK()
  {
    for (;;)
    {
      j localj;
      try
      {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
          Log.d("EnhancedIntentService", "flush queue called");
        }
        if (this.bfm.isEmpty()) {
          break label283;
        }
        if (Log.isLoggable("EnhancedIntentService", 3)) {
          Log.d("EnhancedIntentService", "found intent to be delivered");
        }
        if ((this.bfn == null) || (!this.bfn.isBinderAlive())) {
          break;
        }
        if (Log.isLoggable("EnhancedIntentService", 3)) {
          Log.d("EnhancedIntentService", "binder is alive, sending the intent.");
        }
        h localh1 = (h)this.bfm.poll();
        localj = this.bfn;
        if (Binder.getCallingUid() != Process.myUid()) {
          throw new SecurityException("Binding only allowed within app");
        }
      }
      finally {}
      if (Log.isLoggable("EnhancedIntentService", 3)) {
        Log.d("EnhancedIntentService", "service received new intent via bind strategy");
      }
      if (localj.bfi.zzq(localh2.intent))
      {
        localh2.finish();
      }
      else
      {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
          Log.d("EnhancedIntentService", "intent being queued for bg execution");
        }
        localj.bfi.bfb.execute(new k(localj, localh2));
      }
    }
    boolean bool;
    if (Log.isLoggable("EnhancedIntentService", 3))
    {
      if (!this.bfo)
      {
        bool = true;
        Log.d("EnhancedIntentService", 39 + "binder is dead. start connection? " + bool);
      }
    }
    else if (!this.bfo) {
      this.bfo = true;
    }
    for (;;)
    {
      try
      {
        a.oz();
        bool = a.b(this.aUM, this.bfl, this, 65);
        if (bool)
        {
          label283:
          return;
          bool = false;
          break;
        }
        Log.e("EnhancedIntentService", "binding to the service failed");
      }
      catch (SecurityException localSecurityException)
      {
        Log.e("EnhancedIntentService", "Exception while binding the service", localSecurityException);
        continue;
      }
      if (!this.bfm.isEmpty()) {
        ((h)this.bfm.poll()).finish();
      }
    }
  }
  
  public final void a(Intent paramIntent, BroadcastReceiver.PendingResult paramPendingResult)
  {
    try
    {
      if (Log.isLoggable("EnhancedIntentService", 3)) {
        Log.d("EnhancedIntentService", "new intent queued in the bind-strategy delivery");
      }
      this.bfm.add(new h(paramIntent, paramPendingResult, this.aZz));
      uK();
      return;
    }
    finally {}
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      this.bfo = false;
      this.bfn = ((j)paramIBinder);
      if (Log.isLoggable("EnhancedIntentService", 3))
      {
        paramComponentName = String.valueOf(paramComponentName);
        Log.d("EnhancedIntentService", String.valueOf(paramComponentName).length() + 20 + "onServiceConnected: " + paramComponentName);
      }
      uK();
      return;
    }
    finally {}
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (Log.isLoggable("EnhancedIntentService", 3))
    {
      paramComponentName = String.valueOf(paramComponentName);
      Log.d("EnhancedIntentService", String.valueOf(paramComponentName).length() + 23 + "onServiceDisconnected: " + paramComponentName);
    }
    uK();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */