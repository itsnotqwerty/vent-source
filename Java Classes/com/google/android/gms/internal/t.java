package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.a.c;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.internal.ae;

public final class t
  implements com.google.android.gms.ads.reward.mediation.a
{
  private final q aKR;
  
  public t(q paramq)
  {
    this.aKR = paramq;
  }
  
  public final void a(MediationRewardedVideoAdAdapter paramMediationRewardedVideoAdAdapter)
  {
    ae.bg("onInitializationSucceeded must be called on the main UI thread.");
    af.br("Adapter called onInitializationSucceeded.");
    try
    {
      this.aKR.e(c.Q(paramMediationRewardedVideoAdAdapter));
      return;
    }
    catch (RemoteException paramMediationRewardedVideoAdAdapter)
    {
      af.d("Could not call onInitializationSucceeded.", paramMediationRewardedVideoAdAdapter);
    }
  }
  
  public final void a(MediationRewardedVideoAdAdapter paramMediationRewardedVideoAdAdapter, int paramInt)
  {
    ae.bg("onAdFailedToLoad must be called on the main UI thread.");
    af.br("Adapter called onAdFailedToLoad.");
    try
    {
      this.aKR.b(c.Q(paramMediationRewardedVideoAdAdapter), paramInt);
      return;
    }
    catch (RemoteException paramMediationRewardedVideoAdAdapter)
    {
      af.d("Could not call onAdFailedToLoad.", paramMediationRewardedVideoAdAdapter);
    }
  }
  
  public final void a(MediationRewardedVideoAdAdapter paramMediationRewardedVideoAdAdapter, com.google.android.gms.ads.reward.a parama)
  {
    ae.bg("onRewarded must be called on the main UI thread.");
    af.br("Adapter called onRewarded.");
    if (parama != null) {}
    try
    {
      this.aKR.a(c.Q(paramMediationRewardedVideoAdAdapter), new u(parama));
      return;
    }
    catch (RemoteException paramMediationRewardedVideoAdAdapter)
    {
      af.d("Could not call onRewarded.", paramMediationRewardedVideoAdAdapter);
    }
    this.aKR.a(c.Q(paramMediationRewardedVideoAdAdapter), new u("", 1));
    return;
  }
  
  public final void b(MediationRewardedVideoAdAdapter paramMediationRewardedVideoAdAdapter)
  {
    ae.bg("onAdLoaded must be called on the main UI thread.");
    af.br("Adapter called onAdLoaded.");
    try
    {
      this.aKR.f(c.Q(paramMediationRewardedVideoAdAdapter));
      return;
    }
    catch (RemoteException paramMediationRewardedVideoAdAdapter)
    {
      af.d("Could not call onAdLoaded.", paramMediationRewardedVideoAdAdapter);
    }
  }
  
  public final void c(MediationRewardedVideoAdAdapter paramMediationRewardedVideoAdAdapter)
  {
    ae.bg("onAdOpened must be called on the main UI thread.");
    af.br("Adapter called onAdOpened.");
    try
    {
      this.aKR.g(c.Q(paramMediationRewardedVideoAdAdapter));
      return;
    }
    catch (RemoteException paramMediationRewardedVideoAdAdapter)
    {
      af.d("Could not call onAdOpened.", paramMediationRewardedVideoAdAdapter);
    }
  }
  
  public final void d(MediationRewardedVideoAdAdapter paramMediationRewardedVideoAdAdapter)
  {
    ae.bg("onVideoStarted must be called on the main UI thread.");
    af.br("Adapter called onVideoStarted.");
    try
    {
      this.aKR.h(c.Q(paramMediationRewardedVideoAdAdapter));
      return;
    }
    catch (RemoteException paramMediationRewardedVideoAdAdapter)
    {
      af.d("Could not call onVideoStarted.", paramMediationRewardedVideoAdAdapter);
    }
  }
  
  public final void e(MediationRewardedVideoAdAdapter paramMediationRewardedVideoAdAdapter)
  {
    ae.bg("onAdClosed must be called on the main UI thread.");
    af.br("Adapter called onAdClosed.");
    try
    {
      this.aKR.i(c.Q(paramMediationRewardedVideoAdAdapter));
      return;
    }
    catch (RemoteException paramMediationRewardedVideoAdAdapter)
    {
      af.d("Could not call onAdClosed.", paramMediationRewardedVideoAdAdapter);
    }
  }
  
  public final void f(MediationRewardedVideoAdAdapter paramMediationRewardedVideoAdAdapter)
  {
    ae.bg("onAdLeftApplication must be called on the main UI thread.");
    af.br("Adapter called onAdLeftApplication.");
    try
    {
      this.aKR.k(c.Q(paramMediationRewardedVideoAdAdapter));
      return;
    }
    catch (RemoteException paramMediationRewardedVideoAdAdapter)
    {
      af.d("Could not call onAdLeftApplication.", paramMediationRewardedVideoAdAdapter);
    }
  }
  
  public final void g(MediationRewardedVideoAdAdapter paramMediationRewardedVideoAdAdapter)
  {
    ae.bg("onVideoCompleted must be called on the main UI thread.");
    af.br("Adapter called onVideoCompleted.");
    try
    {
      this.aKR.l(c.Q(paramMediationRewardedVideoAdAdapter));
      return;
    }
    catch (RemoteException paramMediationRewardedVideoAdAdapter)
    {
      af.d("Could not call onVideoCompleted.", paramMediationRewardedVideoAdAdapter);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */