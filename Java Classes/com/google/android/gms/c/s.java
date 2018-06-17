package com.google.android.gms.c;

import java.util.concurrent.Callable;

public final class s
  implements Runnable
{
  public s(r paramr, Callable paramCallable) {}
  
  public final void run()
  {
    try
    {
      this.bem.N(this.DM.call());
      return;
    }
    catch (Exception localException)
    {
      this.bem.e(localException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/c/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */