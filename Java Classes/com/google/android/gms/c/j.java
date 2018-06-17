package com.google.android.gms.c;

final class j
  implements Runnable
{
  j(i parami, e parame) {}
  
  public final void run()
  {
    synchronized (this.bea.mLock)
    {
      if (this.bea.bdY != null) {
        this.bea.bdY.a(this.bdZ);
      }
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/c/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */