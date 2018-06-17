package com.google.android.gms.common.api.internal;

import android.support.v4.g.b;
import com.google.android.gms.common.a;
import java.util.Set;

public final class g
  extends ci
{
  private ah aCF;
  final b<cb<?>> aDU;
  
  private final void nm()
  {
    if (!this.aDU.isEmpty())
    {
      ah localah = this.aCF;
      synchronized (ah.AT)
      {
        if (localah.aFg != this)
        {
          localah.aFg = this;
          localah.aFh.clear();
          localah.aFh.addAll(this.aDU);
        }
        return;
      }
    }
  }
  
  protected final void a(a parama, int paramInt)
  {
    this.aCF.a(parama, paramInt);
  }
  
  protected final void nl()
  {
    this.aCF.nl();
  }
  
  public final void onResume()
  {
    super.onResume();
    nm();
  }
  
  public final void onStart()
  {
    super.onStart();
    nm();
  }
  
  public final void onStop()
  {
    super.onStop();
    ah localah = this.aCF;
    synchronized (ah.AT)
    {
      if (localah.aFg == this)
      {
        localah.aFg = null;
        localah.aFh.clear();
      }
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */