package com.google.android.gms.internal;

final class gi
  implements Runnable
{
  gi(gh paramgh, hz paramhz) {}
  
  public final void run()
  {
    this.aRB.qO();
    if (hu.oM()) {
      gh.a(this.aRC).qO().i(this);
    }
    boolean bool;
    do
    {
      return;
      bool = this.aRC.pW();
      gh.b(this.aRC);
    } while ((!bool) || (!gh.c(this.aRC)));
    this.aRC.run();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */