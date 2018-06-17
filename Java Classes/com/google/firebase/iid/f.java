package com.google.firebase.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.support.v4.content.e;
import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class f
  extends Service
{
  final ExecutorService bfb = Executors.newSingleThreadExecutor();
  private final Object mLock = new Object();
  private Binder zzimd;
  private int zzime;
  private int zzimf = 0;
  
  private final void zzh(Intent arg1)
  {
    if (??? != null) {
      e.b(???);
    }
    synchronized (this.mLock)
    {
      this.zzimf -= 1;
      if (this.zzimf == 0) {
        stopSelfResult(this.zzime);
      }
      return;
    }
  }
  
  public abstract void handleIntent(Intent paramIntent);
  
  public final IBinder onBind(Intent paramIntent)
  {
    try
    {
      if (Log.isLoggable("EnhancedIntentService", 3)) {
        Log.d("EnhancedIntentService", "Service received bind request");
      }
      if (this.zzimd == null) {
        this.zzimd = new j(this);
      }
      paramIntent = this.zzimd;
      return paramIntent;
    }
    finally {}
  }
  
  public final int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    synchronized (this.mLock)
    {
      this.zzime = paramInt2;
      this.zzimf += 1;
      ??? = zzp(paramIntent);
      if (??? == null)
      {
        zzh(paramIntent);
        return 2;
      }
    }
    if (zzq((Intent)???))
    {
      zzh(paramIntent);
      return 2;
    }
    this.bfb.execute(new g(this, (Intent)???, paramIntent));
    return 3;
  }
  
  public Intent zzp(Intent paramIntent)
  {
    return paramIntent;
  }
  
  public boolean zzq(Intent paramIntent)
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */