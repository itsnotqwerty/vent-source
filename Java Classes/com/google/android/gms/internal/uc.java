package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.a.c;
import com.google.android.gms.ads.b.i;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.b;
import com.google.android.gms.ads.mediation.f;
import com.google.android.gms.ads.mediation.g;
import com.google.android.gms.ads.mediation.h;
import com.google.android.gms.ads.mediation.j;
import com.google.android.gms.ads.mediation.l;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

public final class uc
  extends tn
{
  private final b bcU;
  private ud bcV;
  
  public uc(b paramb)
  {
    this.bcU = paramb;
  }
  
  private final Bundle a(String paramString1, nr paramnr, String paramString2)
    throws RemoteException
  {
    Object localObject = String.valueOf(paramString1);
    if (((String)localObject).length() != 0) {
      localObject = "Server parameters: ".concat((String)localObject);
    }
    for (;;)
    {
      af.bt((String)localObject);
      try
      {
        localObject = new Bundle();
        if (paramString1 == null) {
          break;
        }
        paramString1 = new JSONObject(paramString1);
        localObject = new Bundle();
        Iterator localIterator = paramString1.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          ((Bundle)localObject).putString(str, paramString1.getString(str));
        }
        localObject = new String("Server parameters: ");
      }
      catch (Throwable paramString1)
      {
        af.d("Could not get Server Parameters Bundle.", paramString1);
        throw new RemoteException();
      }
    }
    if ((this.bcU instanceof AdMobAdapter))
    {
      ((Bundle)localObject).putString("adJson", paramString2);
      if (paramnr != null) {
        ((Bundle)localObject).putInt("tagForChildDirectedTreatment", paramnr.baF);
      }
    }
    return (Bundle)localObject;
  }
  
  private static boolean c(nr paramnr)
  {
    if (!paramnr.baE) {
      of.tj();
    }
    return w.oR();
  }
  
  public final void a(com.google.android.gms.a.a parama, nr paramnr, String paramString1, q paramq, String paramString2)
    throws RemoteException
  {
    if (!(this.bcU instanceof MediationRewardedVideoAdAdapter))
    {
      parama = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (parama.length() != 0) {}
      for (parama = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(parama);; parama = new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "))
      {
        af.bt(parama);
        throw new RemoteException();
      }
    }
    af.br("Initialize rewarded video adapter.");
    for (;;)
    {
      Object localObject;
      try
      {
        MediationRewardedVideoAdAdapter localMediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter)this.bcU;
        Bundle localBundle = a(paramString2, paramnr, null);
        if (paramnr == null) {
          break label263;
        }
        if (paramnr.baD == null) {
          break label271;
        }
        paramString2 = new HashSet(paramnr.baD);
        if (paramnr.baB == -1L)
        {
          localObject = null;
          paramString2 = new ub((Date)localObject, paramnr.baC, paramString2, paramnr.baJ, c(paramnr), paramnr.baF, paramnr.baQ);
          if (paramnr.baL != null)
          {
            localObject = paramnr.baL.getBundle(localMediationRewardedVideoAdAdapter.getClass().getName());
            paramnr = paramString2;
            paramString2 = (String)localObject;
            localMediationRewardedVideoAdAdapter.initialize((Context)c.a(parama), paramnr, paramString1, new t(paramq), localBundle, paramString2);
          }
        }
        else
        {
          localObject = new Date(paramnr.baB);
          continue;
        }
        localObject = null;
      }
      catch (Throwable parama)
      {
        af.d("Could not initialize rewarded video adapter.", parama);
        throw new RemoteException();
      }
      paramnr = paramString2;
      paramString2 = (String)localObject;
      continue;
      label263:
      paramString2 = null;
      paramnr = null;
      continue;
      label271:
      paramString2 = null;
    }
  }
  
  public final void a(com.google.android.gms.a.a parama, nr paramnr, String paramString, tp paramtp)
    throws RemoteException
  {
    a(parama, paramnr, paramString, null, paramtp);
  }
  
  public final void a(com.google.android.gms.a.a parama, nr paramnr, String paramString1, String paramString2, tp paramtp)
    throws RemoteException
  {
    if (!(this.bcU instanceof MediationInterstitialAdapter))
    {
      parama = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (parama.length() != 0) {}
      for (parama = "MediationAdapter is not a MediationInterstitialAdapter: ".concat(parama);; parama = new String("MediationAdapter is not a MediationInterstitialAdapter: "))
      {
        af.bt(parama);
        throw new RemoteException();
      }
    }
    af.br("Requesting interstitial ad from adapter.");
    for (;;)
    {
      try
      {
        MediationInterstitialAdapter localMediationInterstitialAdapter = (MediationInterstitialAdapter)this.bcU;
        if (paramnr.baD == null) {
          break label241;
        }
        localObject1 = new HashSet(paramnr.baD);
        Object localObject2;
        if (paramnr.baB == -1L)
        {
          localObject2 = null;
          localObject2 = new ub((Date)localObject2, paramnr.baC, (Set)localObject1, paramnr.baJ, c(paramnr), paramnr.baF, paramnr.baQ);
          if (paramnr.baL != null)
          {
            localObject1 = paramnr.baL.getBundle(localMediationInterstitialAdapter.getClass().getName());
            localMediationInterstitialAdapter.requestInterstitialAd((Context)c.a(parama), new ud(paramtp), a(paramString1, paramnr, paramString2), (com.google.android.gms.ads.mediation.a)localObject2, (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(paramnr.baB);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable parama)
      {
        af.d("Could not request interstitial ad from adapter.", parama);
        throw new RemoteException();
      }
      continue;
      label241:
      Object localObject1 = null;
    }
  }
  
  public final void a(com.google.android.gms.a.a parama, nr paramnr, String paramString1, String paramString2, tp paramtp, rd paramrd, List<String> paramList)
    throws RemoteException
  {
    if (!(this.bcU instanceof MediationNativeAdapter))
    {
      parama = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (parama.length() != 0) {}
      for (parama = "MediationAdapter is not a MediationNativeAdapter: ".concat(parama);; parama = new String("MediationAdapter is not a MediationNativeAdapter: "))
      {
        af.bt(parama);
        throw new RemoteException();
      }
    }
    for (;;)
    {
      try
      {
        MediationNativeAdapter localMediationNativeAdapter = (MediationNativeAdapter)this.bcU;
        if (paramnr.baD == null) {
          break label248;
        }
        localHashSet = new HashSet(paramnr.baD);
        Date localDate;
        if (paramnr.baB == -1L)
        {
          localDate = null;
          paramList = new ug(localDate, paramnr.baC, localHashSet, paramnr.baJ, c(paramnr), paramnr.baF, paramrd, paramList, paramnr.baQ);
          if (paramnr.baL != null)
          {
            paramrd = paramnr.baL.getBundle(localMediationNativeAdapter.getClass().getName());
            this.bcV = new ud(paramtp);
            localMediationNativeAdapter.requestNativeAd((Context)c.a(parama), this.bcV, a(paramString1, paramnr, paramString2), paramList, paramrd);
          }
        }
        else
        {
          localDate = new Date(paramnr.baB);
          continue;
        }
        paramrd = null;
      }
      catch (Throwable parama)
      {
        af.d("Could not request native ad from adapter.", parama);
        throw new RemoteException();
      }
      continue;
      label248:
      HashSet localHashSet = null;
    }
  }
  
  public final void a(com.google.android.gms.a.a parama, nu paramnu, nr paramnr, String paramString, tp paramtp)
    throws RemoteException
  {
    a(parama, paramnu, paramnr, paramString, null, paramtp);
  }
  
  public final void a(com.google.android.gms.a.a parama, nu paramnu, nr paramnr, String paramString1, String paramString2, tp paramtp)
    throws RemoteException
  {
    if (!(this.bcU instanceof MediationBannerAdapter))
    {
      parama = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (parama.length() != 0) {}
      for (parama = "MediationAdapter is not a MediationBannerAdapter: ".concat(parama);; parama = new String("MediationAdapter is not a MediationBannerAdapter: "))
      {
        af.bt(parama);
        throw new RemoteException();
      }
    }
    af.br("Requesting banner ad from adapter.");
    for (;;)
    {
      try
      {
        MediationBannerAdapter localMediationBannerAdapter = (MediationBannerAdapter)this.bcU;
        if (paramnr.baD == null) {
          break label258;
        }
        localObject1 = new HashSet(paramnr.baD);
        Object localObject2;
        if (paramnr.baB == -1L)
        {
          localObject2 = null;
          localObject2 = new ub((Date)localObject2, paramnr.baC, (Set)localObject1, paramnr.baJ, c(paramnr), paramnr.baF, paramnr.baQ);
          if (paramnr.baL != null)
          {
            localObject1 = paramnr.baL.getBundle(localMediationBannerAdapter.getClass().getName());
            localMediationBannerAdapter.requestBannerAd((Context)c.a(parama), new ud(paramtp), a(paramString1, paramnr, paramString2), com.google.android.gms.ads.k.c(paramnu.width, paramnu.height, paramnu.baS), (com.google.android.gms.ads.mediation.a)localObject2, (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(paramnr.baB);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable parama)
      {
        af.d("Could not request banner ad from adapter.", parama);
        throw new RemoteException();
      }
      continue;
      label258:
      Object localObject1 = null;
    }
  }
  
  public final void a(com.google.android.gms.a.a parama, q paramq, List<String> paramList)
    throws RemoteException
  {
    if (!(this.bcU instanceof InitializableMediationRewardedVideoAdAdapter))
    {
      parama = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (parama.length() != 0) {}
      for (parama = "MediationAdapter is not an InitializableMediationRewardedVideoAdAdapter: ".concat(parama);; parama = new String("MediationAdapter is not an InitializableMediationRewardedVideoAdAdapter: "))
      {
        af.bt(parama);
        throw new RemoteException();
      }
    }
    af.br("Initialize rewarded video adapter.");
    try
    {
      InitializableMediationRewardedVideoAdAdapter localInitializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter)this.bcU;
      ArrayList localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        localArrayList.add(a((String)paramList.next(), null, null));
      }
      localInitializableMediationRewardedVideoAdAdapter.initialize((Context)c.a(parama), new t(paramq), localArrayList);
    }
    catch (Throwable parama)
    {
      af.d("Could not initialize rewarded video adapter.", parama);
      throw new RemoteException();
    }
  }
  
  public final void a(nr paramnr, String paramString)
    throws RemoteException
  {
    a(paramnr, paramString, null);
  }
  
  public final void a(nr paramnr, String paramString1, String paramString2)
    throws RemoteException
  {
    if (!(this.bcU instanceof MediationRewardedVideoAdAdapter))
    {
      paramnr = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (paramnr.length() != 0) {}
      for (paramnr = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(paramnr);; paramnr = new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "))
      {
        af.bt(paramnr);
        throw new RemoteException();
      }
    }
    af.br("Requesting rewarded video ad from adapter.");
    for (;;)
    {
      try
      {
        MediationRewardedVideoAdAdapter localMediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter)this.bcU;
        if (paramnr.baD == null) {
          break label226;
        }
        localObject1 = new HashSet(paramnr.baD);
        Object localObject2;
        if (paramnr.baB == -1L)
        {
          localObject2 = null;
          localObject2 = new ub((Date)localObject2, paramnr.baC, (Set)localObject1, paramnr.baJ, c(paramnr), paramnr.baF, paramnr.baQ);
          if (paramnr.baL != null)
          {
            localObject1 = paramnr.baL.getBundle(localMediationRewardedVideoAdAdapter.getClass().getName());
            localMediationRewardedVideoAdAdapter.loadAd((com.google.android.gms.ads.mediation.a)localObject2, a(paramString1, paramnr, paramString2), (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(paramnr.baB);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable paramnr)
      {
        af.d("Could not load rewarded video ad from adapter.", paramnr);
        throw new RemoteException();
      }
      continue;
      label226:
      Object localObject1 = null;
    }
  }
  
  public final void aq(boolean paramBoolean)
    throws RemoteException
  {
    if (!(this.bcU instanceof j))
    {
      String str = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (str.length() != 0) {}
      for (str = "MediationAdapter is not an OnImmersiveModeUpdatedListener: ".concat(str);; str = new String("MediationAdapter is not an OnImmersiveModeUpdatedListener: "))
      {
        af.bs(str);
        return;
      }
    }
    try
    {
      ((j)this.bcU).onImmersiveModeUpdated(paramBoolean);
      return;
    }
    catch (Throwable localThrowable)
    {
      af.d("Could not set immersive mode.", localThrowable);
    }
  }
  
  public final void destroy()
    throws RemoteException
  {
    try
    {
      this.bcU.onDestroy();
      return;
    }
    catch (Throwable localThrowable)
    {
      af.d("Could not destroy adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final Bundle getInterstitialAdapterInfo()
  {
    if (!(this.bcU instanceof zzaqk))
    {
      String str = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (str.length() != 0) {}
      for (str = "MediationAdapter is not a v2 MediationInterstitialAdapter: ".concat(str);; str = new String("MediationAdapter is not a v2 MediationInterstitialAdapter: "))
      {
        af.bt(str);
        return new Bundle();
      }
    }
    return ((zzaqk)this.bcU).getInterstitialAdapterInfo();
  }
  
  public final pp getVideoController()
  {
    if (!(this.bcU instanceof l)) {
      return null;
    }
    try
    {
      pp localpp = ((l)this.bcU).getVideoController();
      return localpp;
    }
    catch (Throwable localThrowable)
    {
      af.d("Could not get video controller.", localThrowable);
    }
    return null;
  }
  
  public final boolean isInitialized()
    throws RemoteException
  {
    if (!(this.bcU instanceof MediationRewardedVideoAdAdapter))
    {
      String str = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (str.length() != 0) {}
      for (str = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(str);; str = new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "))
      {
        af.bt(str);
        throw new RemoteException();
      }
    }
    af.br("Check if adapter is initialized.");
    try
    {
      boolean bool = ((MediationRewardedVideoAdAdapter)this.bcU).isInitialized();
      return bool;
    }
    catch (Throwable localThrowable)
    {
      af.d("Could not check if adapter is initialized.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void pause()
    throws RemoteException
  {
    try
    {
      this.bcU.onPause();
      return;
    }
    catch (Throwable localThrowable)
    {
      af.d("Could not pause adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void resume()
    throws RemoteException
  {
    try
    {
      this.bcU.onResume();
      return;
    }
    catch (Throwable localThrowable)
    {
      af.d("Could not resume adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void s(com.google.android.gms.a.a parama)
    throws RemoteException
  {
    try
    {
      c.a(parama);
      return;
    }
    catch (Throwable parama)
    {
      af.b("Could not inform adapter of changed context", parama);
    }
  }
  
  public final void showInterstitial()
    throws RemoteException
  {
    if (!(this.bcU instanceof MediationInterstitialAdapter))
    {
      String str = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (str.length() != 0) {}
      for (str = "MediationAdapter is not a MediationInterstitialAdapter: ".concat(str);; str = new String("MediationAdapter is not a MediationInterstitialAdapter: "))
      {
        af.bt(str);
        throw new RemoteException();
      }
    }
    af.br("Showing interstitial from adapter.");
    try
    {
      ((MediationInterstitialAdapter)this.bcU).showInterstitial();
      return;
    }
    catch (Throwable localThrowable)
    {
      af.d("Could not show interstitial from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void showVideo()
    throws RemoteException
  {
    if (!(this.bcU instanceof MediationRewardedVideoAdAdapter))
    {
      String str = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (str.length() != 0) {}
      for (str = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(str);; str = new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "))
      {
        af.bt(str);
        throw new RemoteException();
      }
    }
    af.br("Show rewarded video ad from adapter.");
    try
    {
      ((MediationRewardedVideoAdAdapter)this.bcU).showVideo();
      return;
    }
    catch (Throwable localThrowable)
    {
      af.d("Could not show rewarded video ad from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final com.google.android.gms.a.a tS()
    throws RemoteException
  {
    Object localObject;
    if (!(this.bcU instanceof MediationBannerAdapter))
    {
      localObject = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (((String)localObject).length() != 0) {}
      for (localObject = "MediationAdapter is not a MediationBannerAdapter: ".concat((String)localObject);; localObject = new String("MediationAdapter is not a MediationBannerAdapter: "))
      {
        af.bt((String)localObject);
        throw new RemoteException();
      }
    }
    try
    {
      localObject = c.Q(((MediationBannerAdapter)this.bcU).getBannerView());
      return (com.google.android.gms.a.a)localObject;
    }
    catch (Throwable localThrowable)
    {
      af.d("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final tr tT()
  {
    f localf = this.bcV.bcX;
    if ((localf instanceof g)) {
      return new ue((g)localf);
    }
    return null;
  }
  
  public final tu tU()
  {
    f localf = this.bcV.bcX;
    if ((localf instanceof h)) {
      return new uf((h)localf);
    }
    return null;
  }
  
  public final Bundle tV()
  {
    return new Bundle();
  }
  
  public final boolean tW()
  {
    return this.bcU instanceof InitializableMediationRewardedVideoAdAdapter;
  }
  
  public final sd tX()
  {
    i locali = this.bcV.bcZ;
    if ((locali instanceof sg)) {
      return ((sg)locali).bcJ;
    }
    return null;
  }
  
  public final tx tY()
  {
    com.google.android.gms.ads.mediation.k localk = this.bcV.bcY;
    if (localk != null) {
      return new un(localk);
    }
    return null;
  }
  
  public final Bundle zzmr()
  {
    if (!(this.bcU instanceof zzaqj))
    {
      String str = String.valueOf(this.bcU.getClass().getCanonicalName());
      if (str.length() != 0) {}
      for (str = "MediationAdapter is not a v2 MediationBannerAdapter: ".concat(str);; str = new String("MediationAdapter is not a v2 MediationBannerAdapter: "))
      {
        af.bt(str);
        return new Bundle();
      }
    }
    return ((zzaqj)this.bcU).zzmr();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/uc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */