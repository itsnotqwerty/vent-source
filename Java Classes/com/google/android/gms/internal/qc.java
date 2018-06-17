package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.reward.b;

public final class qc
{
  public static final Object AT = new Object();
  private static qc bbY;
  public pk bbZ;
  private b bca;
  
  public static qc tF()
  {
    synchronized (AT)
    {
      if (bbY == null) {
        bbY = new qc();
      }
      qc localqc = bbY;
      return localqc;
    }
  }
  
  public final b ak(Context paramContext)
  {
    synchronized (AT)
    {
      if (this.bca != null)
      {
        paramContext = this.bca;
        return paramContext;
      }
      ti localti = new ti();
      this.bca = new p(paramContext, (c)nx.a(paramContext, false, new od(of.tk(), paramContext, localti)));
      paramContext = this.bca;
      return paramContext;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/qc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */