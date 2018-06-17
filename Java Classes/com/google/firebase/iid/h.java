package com.google.firebase.iid;

import android.content.BroadcastReceiver.PendingResult;
import android.content.Intent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class h
{
  private final BroadcastReceiver.PendingResult bfe;
  private boolean bff = false;
  private final ScheduledFuture<?> bfg;
  final Intent intent;
  
  h(Intent paramIntent, BroadcastReceiver.PendingResult paramPendingResult, ScheduledExecutorService paramScheduledExecutorService)
  {
    this.intent = paramIntent;
    this.bfe = paramPendingResult;
    this.bfg = paramScheduledExecutorService.schedule(new i(this, paramIntent), 9500L, TimeUnit.MILLISECONDS);
  }
  
  final void finish()
  {
    try
    {
      if (!this.bff)
      {
        this.bfe.finish();
        this.bfg.cancel(false);
        this.bff = true;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */