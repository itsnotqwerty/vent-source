package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.ads.a.a;
import com.google.ads.mediation.c;
import com.google.ads.mediation.d;
import com.google.ads.mediation.e;
import com.google.ads.mediation.f;

public final class ui<NETWORK_EXTRAS extends f, SERVER_PARAMETERS extends e>
  implements c, d
{
  final tp bcW;
  
  public ui(tp paramtp)
  {
    this.bcW = paramtp;
  }
  
  public final void a(a.a parama)
  {
    String str = String.valueOf(parama);
    af.br(String.valueOf(str).length() + 47 + "Adapter called onFailedToReceiveAd with error. " + str);
    of.tj();
    if (!w.oS())
    {
      af.bt("onFailedToReceiveAd must be called on the main UI thread.");
      w.aKT.post(new uj(this, parama));
      return;
    }
    try
    {
      this.bcW.cv(ul.c(parama));
      return;
    }
    catch (RemoteException parama)
    {
      af.d("Could not call onAdFailedToLoad.", parama);
    }
  }
  
  public final void b(a.a parama)
  {
    String str = String.valueOf(parama);
    af.br(String.valueOf(str).length() + 47 + "Adapter called onFailedToReceiveAd with error " + str + ".");
    of.tj();
    if (!w.oS())
    {
      af.bt("onFailedToReceiveAd must be called on the main UI thread.");
      w.aKT.post(new uk(this, parama));
      return;
    }
    try
    {
      this.bcW.cv(ul.c(parama));
      return;
    }
    catch (RemoteException parama)
    {
      af.d("Could not call onAdFailedToLoad.", parama);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ui.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */