package com.layer.sdk.internal.lsdkk.lsdkb;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public abstract class a
  implements Runnable
{
  private final ScheduledThreadPoolExecutor a;
  private final AtomicReference<ScheduledFuture> b = new AtomicReference(null);
  
  public a(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor)
  {
    this.a = paramScheduledThreadPoolExecutor;
  }
  
  public void a()
  {
    ScheduledFuture localScheduledFuture;
    do
    {
      localScheduledFuture = (ScheduledFuture)this.b.get();
      if (localScheduledFuture == null) {
        return;
      }
    } while (!this.b.compareAndSet(localScheduledFuture, null));
    localScheduledFuture.cancel(true);
  }
  
  public void a(long paramLong)
  {
    Object localObject = null;
    ScheduledFuture localScheduledFuture;
    do
    {
      if (localObject != null) {
        ((ScheduledFuture)localObject).cancel(true);
      }
      a();
      localScheduledFuture = this.a.schedule(this, paramLong, TimeUnit.MILLISECONDS);
      localObject = localScheduledFuture;
    } while (!this.b.compareAndSet(null, localScheduledFuture));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/lsdkb/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */