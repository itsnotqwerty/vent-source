package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public final class dz
  implements Executor
{
  private final Handler mHandler;
  
  public dz(Looper paramLooper)
  {
    this.mHandler = new Handler(paramLooper);
  }
  
  public final void execute(Runnable paramRunnable)
  {
    this.mHandler.post(paramRunnable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/dz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */