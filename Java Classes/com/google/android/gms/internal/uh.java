package com.google.android.gms.internal;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.b;
import com.google.ads.mediation.e;
import com.google.ads.mediation.f;
import com.google.android.gms.a.a;
import com.google.android.gms.a.c;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public final class uh<NETWORK_EXTRAS extends f, SERVER_PARAMETERS extends e>
  extends tn
{
  private final b<NETWORK_EXTRAS, SERVER_PARAMETERS> bdf;
  private final NETWORK_EXTRAS bdg;
  
  public uh(b<NETWORK_EXTRAS, SERVER_PARAMETERS> paramb, NETWORK_EXTRAS paramNETWORK_EXTRAS)
  {
    this.bdf = paramb;
    this.bdg = paramNETWORK_EXTRAS;
  }
  
  private static boolean c(nr paramnr)
  {
    if (!paramnr.baE) {
      of.tj();
    }
    return w.oR();
  }
  
  private final SERVER_PARAMETERS cX(String paramString)
    throws RemoteException
  {
    if (paramString != null) {
      try
      {
        localObject2 = new JSONObject(paramString);
        localObject1 = new HashMap(((JSONObject)localObject2).length());
        Iterator localIterator = ((JSONObject)localObject2).keys();
        for (;;)
        {
          paramString = (String)localObject1;
          if (!localIterator.hasNext()) {
            break;
          }
          paramString = (String)localIterator.next();
          ((Map)localObject1).put(paramString, ((JSONObject)localObject2).getString(paramString));
        }
        paramString = new HashMap(0);
      }
      catch (Throwable paramString)
      {
        af.d("Could not get MediationServerParameters.", paramString);
        throw new RemoteException();
      }
    }
    Object localObject2 = this.bdf.getServerParametersType();
    Object localObject1 = null;
    if (localObject2 != null)
    {
      localObject1 = (e)((Class)localObject2).newInstance();
      ((e)localObject1).g(paramString);
    }
    return (SERVER_PARAMETERS)localObject1;
  }
  
  public final void a(a parama, nr paramnr, String paramString1, q paramq, String paramString2)
    throws RemoteException
  {}
  
  public final void a(a parama, nr paramnr, String paramString, tp paramtp)
    throws RemoteException
  {
    a(parama, paramnr, paramString, null, paramtp);
  }
  
  public final void a(a parama, nr paramnr, String paramString1, String paramString2, tp paramtp)
    throws RemoteException
  {
    if (!(this.bdf instanceof MediationInterstitialAdapter))
    {
      parama = String.valueOf(this.bdf.getClass().getCanonicalName());
      if (parama.length() != 0) {}
      for (parama = "MediationAdapter is not a MediationInterstitialAdapter: ".concat(parama);; parama = new String("MediationAdapter is not a MediationInterstitialAdapter: "))
      {
        af.bt(parama);
        throw new RemoteException();
      }
    }
    af.br("Requesting interstitial ad from adapter.");
    try
    {
      paramString2 = (MediationInterstitialAdapter)this.bdf;
      paramtp = new ui(paramtp);
      parama = (Activity)c.a(parama);
      int i = paramnr.baF;
      paramString2.requestInterstitialAd(paramtp, parama, cX(paramString1), ul.a(paramnr, c(paramnr)), this.bdg);
      return;
    }
    catch (Throwable parama)
    {
      af.d("Could not request interstitial ad from adapter.", parama);
      throw new RemoteException();
    }
  }
  
  public final void a(a parama, nr paramnr, String paramString1, String paramString2, tp paramtp, rd paramrd, List<String> paramList) {}
  
  public final void a(a parama, nu paramnu, nr paramnr, String paramString, tp paramtp)
    throws RemoteException
  {
    a(parama, paramnu, paramnr, paramString, null, paramtp);
  }
  
  public final void a(a parama, nu paramnu, nr paramnr, String paramString1, String paramString2, tp paramtp)
    throws RemoteException
  {
    if (!(this.bdf instanceof MediationBannerAdapter))
    {
      parama = String.valueOf(this.bdf.getClass().getCanonicalName());
      if (parama.length() != 0) {}
      for (parama = "MediationAdapter is not a MediationBannerAdapter: ".concat(parama);; parama = new String("MediationAdapter is not a MediationBannerAdapter: "))
      {
        af.bt(parama);
        throw new RemoteException();
      }
    }
    af.br("Requesting banner ad from adapter.");
    try
    {
      paramString2 = (MediationBannerAdapter)this.bdf;
      paramtp = new ui(paramtp);
      parama = (Activity)c.a(parama);
      int i = paramnr.baF;
      paramString2.requestBannerAd(paramtp, parama, cX(paramString1), ul.b(paramnu), ul.a(paramnr, c(paramnr)), this.bdg);
      return;
    }
    catch (Throwable parama)
    {
      af.d("Could not request banner ad from adapter.", parama);
      throw new RemoteException();
    }
  }
  
  public final void a(a parama, q paramq, List<String> paramList) {}
  
  public final void a(nr paramnr, String paramString) {}
  
  public final void a(nr paramnr, String paramString1, String paramString2) {}
  
  public final void aq(boolean paramBoolean) {}
  
  public final void destroy()
    throws RemoteException
  {
    try
    {
      this.bdf.destroy();
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
    return new Bundle();
  }
  
  public final pp getVideoController()
  {
    return null;
  }
  
  public final boolean isInitialized()
  {
    return true;
  }
  
  public final void pause()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final void resume()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public final void s(a parama)
    throws RemoteException
  {}
  
  public final void showInterstitial()
    throws RemoteException
  {
    if (!(this.bdf instanceof MediationInterstitialAdapter))
    {
      String str = String.valueOf(this.bdf.getClass().getCanonicalName());
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
      ((MediationInterstitialAdapter)this.bdf).showInterstitial();
      return;
    }
    catch (Throwable localThrowable)
    {
      af.d("Could not show interstitial from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void showVideo() {}
  
  public final a tS()
    throws RemoteException
  {
    Object localObject;
    if (!(this.bdf instanceof MediationBannerAdapter))
    {
      localObject = String.valueOf(this.bdf.getClass().getCanonicalName());
      if (((String)localObject).length() != 0) {}
      for (localObject = "MediationAdapter is not a MediationBannerAdapter: ".concat((String)localObject);; localObject = new String("MediationAdapter is not a MediationBannerAdapter: "))
      {
        af.bt((String)localObject);
        throw new RemoteException();
      }
    }
    try
    {
      localObject = c.Q(((MediationBannerAdapter)this.bdf).getBannerView());
      return (a)localObject;
    }
    catch (Throwable localThrowable)
    {
      af.d("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final tr tT()
  {
    return null;
  }
  
  public final tu tU()
  {
    return null;
  }
  
  public final Bundle tV()
  {
    return new Bundle();
  }
  
  public final boolean tW()
  {
    return false;
  }
  
  public final sd tX()
  {
    return null;
  }
  
  public final tx tY()
  {
    return null;
  }
  
  public final Bundle zzmr()
  {
    return new Bundle();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/uh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */