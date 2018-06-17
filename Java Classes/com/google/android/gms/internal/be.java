package com.google.android.gms.internal;

final class be
  implements Thread.UncaughtExceptionHandler
{
  be(bd parambd) {}
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    paramThread = this.aMG.aMv;
    if (paramThread != null) {
      paramThread.h("Job execution failed", paramThrowable);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/be.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */