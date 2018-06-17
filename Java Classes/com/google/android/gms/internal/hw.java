package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;

final class hw
  implements Thread.UncaughtExceptionHandler
{
  private final String aUF;
  
  public hw(hu paramhu, String paramString)
  {
    ae.E(paramString);
    this.aUF = paramString;
  }
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    try
    {
      this.aUG.qP().aTa.j(this.aUF, paramThrowable);
      return;
    }
    finally
    {
      paramThread = finally;
      throw paramThread;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */