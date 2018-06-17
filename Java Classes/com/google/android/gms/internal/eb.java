package com.google.android.gms.internal;

import android.os.Process;

final class eb
  implements Runnable
{
  private final Runnable aNG;
  private final int zD;
  
  public eb(Runnable paramRunnable)
  {
    this.aNG = paramRunnable;
    this.zD = 0;
  }
  
  public final void run()
  {
    Process.setThreadPriority(this.zD);
    this.aNG.run();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/eb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */