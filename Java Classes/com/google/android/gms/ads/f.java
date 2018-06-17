package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.nm;
import com.google.android.gms.internal.nn;
import com.google.android.gms.internal.no;
import com.google.android.gms.internal.nt;
import com.google.android.gms.internal.nu;
import com.google.android.gms.internal.nw;
import com.google.android.gms.internal.nx;
import com.google.android.gms.internal.ny;
import com.google.android.gms.internal.nz;
import com.google.android.gms.internal.of;
import com.google.android.gms.internal.ow;
import com.google.android.gms.internal.px;
import com.google.android.gms.internal.pz;
import com.google.android.gms.internal.qq;
import com.google.android.gms.internal.rb;

class f
  extends ViewGroup
{
  protected final pz azo = new pz(this);
  
  public f(Context paramContext)
  {
    super(paramContext);
  }
  
  public void a(c paramc)
  {
    pz localpz = this.azo;
    px localpx = paramc.ayZ;
    try
    {
      if (localpz.bbP != null) {
        break label300;
      }
      if (((localpz.bbN != null) && (localpz.bbR != null)) || (localpz.bbP != null)) {
        break label56;
      }
      throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
    }
    catch (RemoteException paramc)
    {
      af.d("Failed to load ad.", paramc);
    }
    return;
    label56:
    paramc = localpz.bbS.getContext();
    nu localnu = pz.a(paramc, localpz.bbN, localpz.bbT);
    if ("search_v2".equals(localnu.baS))
    {
      paramc = (ow)nx.a(paramc, false, new nz(of.tk(), paramc, localnu, localpz.bbR));
      label117:
      localpz.bbP = paramc;
      localpz.bbP.b(new no(localpz.bbM));
      if (localpz.baz != null) {
        localpz.bbP.a(new nn(localpz.baz));
      }
      if (localpz.baY != null) {
        localpz.bbP.a(new nw(localpz.baY));
      }
      if (localpz.bbQ != null) {
        localpz.bbP.a(new rb(localpz.bbQ));
      }
      if (localpz.bbO != null) {
        localpz.bbP.b(localpz.bbO.azp);
      }
      if (localpz.azA != null) {
        localpz.bbP.a(new qq(localpz.azA));
      }
      localpz.bbP.setManualImpressionsEnabled(localpz.azG);
    }
    for (;;)
    {
      try
      {
        paramc = localpz.bbP.tn();
        if (paramc != null) {
          continue;
        }
      }
      catch (RemoteException paramc)
      {
        label300:
        af.d("Failed to get an ad frame.", paramc);
        continue;
      }
      if (!localpz.bbP.b(nt.a(localpz.bbS.getContext(), localpx))) {
        break;
      }
      localpz.bbK.bcR = localpx.bbx;
      return;
      paramc = (ow)nx.a(paramc, false, new ny(of.tk(), paramc, localnu, localpz.bbR, localpz.bbK));
      break label117;
      localpz.bbS.addView((View)com.google.android.gms.a.c.a(paramc));
    }
  }
  
  public void destroy()
  {
    pz localpz = this.azo;
    try
    {
      if (localpz.bbP != null) {
        localpz.bbP.destroy();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Failed to destroy AdView.", localRemoteException);
    }
  }
  
  public a getAdListener()
  {
    return this.azo.baA;
  }
  
  public d getAdSize()
  {
    return this.azo.getAdSize();
  }
  
  public String getAdUnitId()
  {
    return this.azo.getAdUnitId();
  }
  
  public String getMediationAdapterClassName()
  {
    return this.azo.getMediationAdapterClassName();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = getChildAt(0);
    if ((localView != null) && (localView.getVisibility() != 8))
    {
      int i = localView.getMeasuredWidth();
      int j = localView.getMeasuredHeight();
      paramInt1 = (paramInt3 - paramInt1 - i) / 2;
      paramInt2 = (paramInt4 - paramInt2 - j) / 2;
      localView.layout(paramInt1, paramInt2, i + paramInt1, j + paramInt2);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Object localObject1 = getChildAt(0);
    int j;
    int i;
    if ((localObject1 != null) && (((View)localObject1).getVisibility() != 8))
    {
      measureChild((View)localObject1, paramInt1, paramInt2);
      j = ((View)localObject1).getMeasuredWidth();
      i = ((View)localObject1).getMeasuredHeight();
    }
    for (;;)
    {
      j = Math.max(j, getSuggestedMinimumWidth());
      i = Math.max(i, getSuggestedMinimumHeight());
      setMeasuredDimension(View.resolveSize(j, paramInt1), View.resolveSize(i, paramInt2));
      return;
      localObject1 = null;
      try
      {
        localObject2 = getAdSize();
        localObject1 = localObject2;
      }
      catch (NullPointerException localNullPointerException)
      {
        for (;;)
        {
          Object localObject2;
          af.c("Unable to retrieve ad size.", localNullPointerException);
        }
        i = 0;
        j = 0;
      }
      if (localObject1 != null)
      {
        localObject2 = getContext();
        j = ((d)localObject1).q((Context)localObject2);
        i = ((d)localObject1).p((Context)localObject2);
      }
    }
  }
  
  public void pause()
  {
    pz localpz = this.azo;
    try
    {
      if (localpz.bbP != null) {
        localpz.bbP.pause();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Failed to call pause.", localRemoteException);
    }
  }
  
  public void resume()
  {
    pz localpz = this.azo;
    try
    {
      if (localpz.bbP != null) {
        localpz.bbP.resume();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Failed to call resume.", localRemoteException);
    }
  }
  
  public void setAdListener(a parama)
  {
    this.azo.setAdListener(parama);
    if (parama == null)
    {
      this.azo.a(null);
      this.azo.setAppEventListener(null);
    }
    do
    {
      return;
      if ((parama instanceof nm)) {
        this.azo.a((nm)parama);
      }
    } while (!(parama instanceof com.google.android.gms.ads.a.a));
    this.azo.setAppEventListener((com.google.android.gms.ads.a.a)parama);
  }
  
  public void setAdSize(d paramd)
  {
    this.azo.setAdSizes(new d[] { paramd });
  }
  
  public void setAdUnitId(String paramString)
  {
    this.azo.setAdUnitId(paramString);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */