package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.m;
import com.google.android.gms.internal.nn;
import com.google.android.gms.internal.no;
import com.google.android.gms.internal.nt;
import com.google.android.gms.internal.nu;
import com.google.android.gms.internal.nw;
import com.google.android.gms.internal.nx;
import com.google.android.gms.internal.oa;
import com.google.android.gms.internal.of;
import com.google.android.gms.internal.ow;
import com.google.android.gms.internal.px;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.rb;

public final class h
{
  public final qb azq;
  
  public h(Context paramContext)
  {
    this.azq = new qb(paramContext);
    ae.g(paramContext, "Context cannot be null");
  }
  
  public final void a(c paramc)
  {
    qb localqb = this.azq;
    px localpx = paramc.ayZ;
    try
    {
      if (localqb.bbP == null)
      {
        if (localqb.bbR == null) {
          localqb.cO("loadAd");
        }
        if (!localqb.bbW) {
          break label288;
        }
      }
      label288:
      for (paramc = nu.tc();; paramc = new nu())
      {
        nx localnx = of.tk();
        Context localContext = localqb.mContext;
        localqb.bbP = ((ow)nx.a(localContext, false, new oa(localnx, localContext, paramc, localqb.bbR, localqb.bbK)));
        if (localqb.baA != null) {
          localqb.bbP.b(new no(localqb.baA));
        }
        if (localqb.baz != null) {
          localqb.bbP.a(new nn(localqb.baz));
        }
        if (localqb.baY != null) {
          localqb.bbP.a(new nw(localqb.baY));
        }
        if (localqb.bbQ != null) {
          localqb.bbP.a(new rb(localqb.bbQ));
        }
        if (localqb.bbO != null) {
          localqb.bbP.b(localqb.bbO.azp);
        }
        if (localqb.zzgy != null) {
          localqb.bbP.a(new m(localqb.zzgy));
        }
        localqb.bbP.aq(localqb.bbX);
        if (!localqb.bbP.b(nt.a(localqb.mContext, localpx))) {
          break;
        }
        localqb.bbK.bcR = localpx.bbx;
        return;
      }
      return;
    }
    catch (RemoteException paramc)
    {
      af.d("Failed to load ad.", paramc);
    }
  }
  
  public final void aq(boolean paramBoolean)
  {
    qb localqb = this.azq;
    try
    {
      localqb.bbX = paramBoolean;
      if (localqb.bbP != null) {
        localqb.bbP.aq(paramBoolean);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Failed to set immersive mode", localRemoteException);
    }
  }
  
  public final void setAdUnitId(String paramString)
  {
    qb localqb = this.azq;
    if (localqb.bbR != null) {
      throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }
    localqb.bbR = paramString;
  }
  
  public final void show()
  {
    qb localqb = this.azq;
    try
    {
      localqb.cO("show");
      localqb.bbP.showInterstitial();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Failed to show interstitial.", localRemoteException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */