package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.c;
import com.google.android.gms.ads.mediation.d;
import com.google.android.gms.ads.mediation.e;
import com.google.android.gms.ads.mediation.f;
import com.google.android.gms.ads.mediation.k;
import com.google.android.gms.common.internal.ae;

public final class ud
  implements c, d, e
{
  private final tp bcW;
  f bcX;
  k bcY;
  com.google.android.gms.ads.b.i bcZ;
  
  public ud(tp paramtp)
  {
    this.bcW = paramtp;
  }
  
  private static void b(MediationNativeAdapter paramMediationNativeAdapter, f paramf)
  {
    if ((paramMediationNativeAdapter instanceof AdMobAdapter)) {}
    do
    {
      return;
      paramMediationNativeAdapter = new com.google.android.gms.ads.i();
      paramMediationNativeAdapter.a(new ua());
    } while ((paramf == null) || (!paramf.aAd));
    paramf.aAc = paramMediationNativeAdapter;
  }
  
  public final void a(MediationNativeAdapter paramMediationNativeAdapter, f paramf)
  {
    ae.bg("onAdLoaded must be called on the main UI thread.");
    af.br("Adapter called onAdLoaded.");
    this.bcX = paramf;
    this.bcY = null;
    b(paramMediationNativeAdapter, this.bcX);
    try
    {
      this.bcW.lj();
      return;
    }
    catch (RemoteException paramMediationNativeAdapter)
    {
      af.d("Could not call onAdLoaded.", paramMediationNativeAdapter);
    }
  }
  
  public final void a(MediationNativeAdapter paramMediationNativeAdapter, k paramk)
  {
    ae.bg("onAdLoaded must be called on the main UI thread.");
    af.br("Adapter called onAdLoaded.");
    this.bcY = paramk;
    this.bcX = null;
    b(paramMediationNativeAdapter, this.bcX);
    try
    {
      this.bcW.lj();
      return;
    }
    catch (RemoteException paramMediationNativeAdapter)
    {
      af.d("Could not call onAdLoaded.", paramMediationNativeAdapter);
    }
  }
  
  public final void b(com.google.android.gms.ads.b.i parami)
  {
    ae.bg("onAdLoaded must be called on the main UI thread.");
    String str = String.valueOf(parami.lM());
    if (str.length() != 0) {}
    for (str = "Adapter called onAdLoaded with template id ".concat(str);; str = new String("Adapter called onAdLoaded with template id "))
    {
      af.br(str);
      this.bcZ = parami;
      try
      {
        this.bcW.lj();
        return;
      }
      catch (RemoteException parami)
      {
        af.d("Could not call onAdLoaded.", parami);
      }
    }
  }
  
  public final void b(com.google.android.gms.ads.b.i parami, String paramString)
  {
    if ((parami instanceof sg)) {
      try
      {
        this.bcW.a(((sg)parami).bcJ, paramString);
        return;
      }
      catch (RemoteException parami)
      {
        af.d("Could not call onCustomClick.", parami);
        return;
      }
    }
    af.bt("Unexpected native custom template ad type.");
  }
  
  public final void cx(int paramInt)
  {
    ae.bg("onAdFailedToLoad must be called on the main UI thread.");
    af.br(55 + "Adapter called onAdFailedToLoad with error. " + paramInt);
    try
    {
      this.bcW.cv(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdFailedToLoad.", localRemoteException);
    }
  }
  
  public final void cy(int paramInt)
  {
    ae.bg("onAdFailedToLoad must be called on the main UI thread.");
    af.br(55 + "Adapter called onAdFailedToLoad with error " + paramInt + ".");
    try
    {
      this.bcW.cv(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdFailedToLoad.", localRemoteException);
    }
  }
  
  public final void cz(int paramInt)
  {
    ae.bg("onAdFailedToLoad must be called on the main UI thread.");
    af.br(55 + "Adapter called onAdFailedToLoad with error " + paramInt + ".");
    try
    {
      this.bcW.cv(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdFailedToLoad.", localRemoteException);
    }
  }
  
  public final void mc()
  {
    ae.bg("onAdLoaded must be called on the main UI thread.");
    af.br("Adapter called onAdLoaded.");
    try
    {
      this.bcW.lj();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdLoaded.", localRemoteException);
    }
  }
  
  public final void md()
  {
    ae.bg("onAdOpened must be called on the main UI thread.");
    af.br("Adapter called onAdOpened.");
    try
    {
      this.bcW.lk();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdOpened.", localRemoteException);
    }
  }
  
  public final void me()
  {
    ae.bg("onAdClosed must be called on the main UI thread.");
    af.br("Adapter called onAdClosed.");
    try
    {
      this.bcW.ll();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdClosed.", localRemoteException);
    }
  }
  
  public final void mf()
  {
    ae.bg("onAdLeftApplication must be called on the main UI thread.");
    af.br("Adapter called onAdLeftApplication.");
    try
    {
      this.bcW.lm();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdLeftApplication.", localRemoteException);
    }
  }
  
  public final void mg()
  {
    ae.bg("onAdClicked must be called on the main UI thread.");
    af.br("Adapter called onAdClicked.");
    try
    {
      this.bcW.ln();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdClicked.", localRemoteException);
    }
  }
  
  public final void mh()
  {
    ae.bg("onAdLoaded must be called on the main UI thread.");
    af.br("Adapter called onAdLoaded.");
    try
    {
      this.bcW.lj();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdLoaded.", localRemoteException);
    }
  }
  
  public final void mi()
  {
    ae.bg("onAdOpened must be called on the main UI thread.");
    af.br("Adapter called onAdOpened.");
    try
    {
      this.bcW.lk();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdOpened.", localRemoteException);
    }
  }
  
  public final void mj()
  {
    ae.bg("onAdClosed must be called on the main UI thread.");
    af.br("Adapter called onAdClosed.");
    try
    {
      this.bcW.ll();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdClosed.", localRemoteException);
    }
  }
  
  public final void mk()
  {
    ae.bg("onAdLeftApplication must be called on the main UI thread.");
    af.br("Adapter called onAdLeftApplication.");
    try
    {
      this.bcW.lm();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdLeftApplication.", localRemoteException);
    }
  }
  
  public final void ml()
  {
    ae.bg("onAdClicked must be called on the main UI thread.");
    af.br("Adapter called onAdClicked.");
    try
    {
      this.bcW.ln();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdClicked.", localRemoteException);
    }
  }
  
  public final void mm()
  {
    ae.bg("onAdOpened must be called on the main UI thread.");
    af.br("Adapter called onAdOpened.");
    try
    {
      this.bcW.lk();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdOpened.", localRemoteException);
    }
  }
  
  public final void mn()
  {
    ae.bg("onAdClosed must be called on the main UI thread.");
    af.br("Adapter called onAdClosed.");
    try
    {
      this.bcW.ll();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdClosed.", localRemoteException);
    }
  }
  
  public final void mo()
  {
    ae.bg("onAdLeftApplication must be called on the main UI thread.");
    af.br("Adapter called onAdLeftApplication.");
    try
    {
      this.bcW.lm();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdLeftApplication.", localRemoteException);
    }
  }
  
  public final void mp()
  {
    ae.bg("onAdClicked must be called on the main UI thread.");
    f localf = this.bcX;
    k localk = this.bcY;
    if (this.bcZ == null)
    {
      if ((localf == null) && (localk == null))
      {
        af.bt("Could not call onAdClicked since mapper is null.");
        return;
      }
      if ((localk != null) && (!localk.aAF))
      {
        af.br("Could not call onAdClicked since setOverrideClickHandling is not set to true");
        return;
      }
      if ((localf != null) && (!localf.mu()))
      {
        af.br("Could not call onAdClicked since setOverrideClickHandling is not set to true");
        return;
      }
    }
    af.br("Adapter called onAdClicked.");
    try
    {
      this.bcW.ln();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdClicked.", localRemoteException);
    }
  }
  
  public final void mq()
  {
    ae.bg("onAdImpression must be called on the main UI thread.");
    f localf = this.bcX;
    k localk = this.bcY;
    if (this.bcZ == null)
    {
      if ((localf == null) && (localk == null))
      {
        af.bt("Could not call onAdImpression since AdMapper is null. ");
        return;
      }
      if ((localk != null) && (!localk.aAE))
      {
        af.br("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
        return;
      }
      if ((localf != null) && (!localf.mt()))
      {
        af.br("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
        return;
      }
    }
    af.br("Adapter called onAdImpression.");
    try
    {
      this.bcW.lo();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Could not call onAdImpression.", localRemoteException);
    }
  }
  
  public final void n(String paramString1, String paramString2)
  {
    ae.bg("onAppEvent must be called on the main UI thread.");
    af.br("Adapter called onAppEvent.");
    try
    {
      this.bcW.m(paramString1, paramString2);
      return;
    }
    catch (RemoteException paramString1)
    {
      af.d("Could not call onAppEvent.", paramString1);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ud.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */