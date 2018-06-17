package com.google.android.gms.c;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public final class g
{
  public static final Executor bdV = new a();
  static final Executor bdW = new q();
  
  static final class a
    implements Executor
  {
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    
    public final void execute(Runnable paramRunnable)
    {
      this.mHandler.post(paramRunnable);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/c/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */