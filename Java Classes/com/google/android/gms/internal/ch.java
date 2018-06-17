package com.google.android.gms.internal;

import android.os.Looper;
import com.google.android.gms.analytics.n;

final class ch
  implements Runnable
{
  ch(cg paramcg) {}
  
  public final void run()
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      cg.a(this.aNI).ph().h(this);
    }
    boolean bool;
    do
    {
      return;
      bool = this.aNI.pW();
      cg.b(this.aNI);
    } while (!bool);
    this.aNI.run();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */