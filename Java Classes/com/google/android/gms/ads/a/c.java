package com.google.android.gms.ads.a;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.i;
import com.google.android.gms.ads.j;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ow;
import com.google.android.gms.internal.pz;
import com.google.android.gms.internal.qq;
import com.google.android.gms.internal.rb;

public final class c
  extends ViewGroup
{
  private final pz azo;
  
  public final com.google.android.gms.ads.a getAdListener()
  {
    return this.azo.baA;
  }
  
  public final d getAdSize()
  {
    return this.azo.getAdSize();
  }
  
  public final d[] getAdSizes()
  {
    return this.azo.bbN;
  }
  
  public final String getAdUnitId()
  {
    return this.azo.getAdUnitId();
  }
  
  public final a getAppEventListener()
  {
    return this.azo.baY;
  }
  
  public final String getMediationAdapterClassName()
  {
    return this.azo.getMediationAdapterClassName();
  }
  
  public final b getOnCustomRenderedAdLoadedListener()
  {
    return this.azo.bbQ;
  }
  
  public final i getVideoController()
  {
    return this.azo.aAc;
  }
  
  public final j getVideoOptions()
  {
    return this.azo.azA;
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
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
  
  protected final void onMeasure(int paramInt1, int paramInt2)
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
  
  public final void setAdListener(com.google.android.gms.ads.a parama)
  {
    this.azo.setAdListener(parama);
  }
  
  public final void setAdSizes(d... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length <= 0)) {
      throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
    }
    this.azo.a(paramVarArgs);
  }
  
  public final void setAdUnitId(String paramString)
  {
    this.azo.setAdUnitId(paramString);
  }
  
  public final void setAppEventListener(a parama)
  {
    this.azo.setAppEventListener(parama);
  }
  
  public final void setCorrelator(g paramg)
  {
    pz localpz = this.azo;
    localpz.bbO = paramg;
    try
    {
      if (localpz.bbP != null)
      {
        ow localow = localpz.bbP;
        if (localpz.bbO == null) {}
        for (paramg = null;; paramg = localpz.bbO.azp)
        {
          localow.b(paramg);
          return;
        }
      }
      return;
    }
    catch (RemoteException paramg)
    {
      af.d("Failed to set correlator.", paramg);
    }
  }
  
  public final void setManualImpressionsEnabled(boolean paramBoolean)
  {
    pz localpz = this.azo;
    localpz.azG = paramBoolean;
    try
    {
      if (localpz.bbP != null) {
        localpz.bbP.setManualImpressionsEnabled(localpz.azG);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      af.d("Failed to set manual impressions.", localRemoteException);
    }
  }
  
  public final void setOnCustomRenderedAdLoadedListener(b paramb)
  {
    Object localObject = this.azo;
    ((pz)localObject).bbQ = paramb;
    try
    {
      if (((pz)localObject).bbP != null)
      {
        localObject = ((pz)localObject).bbP;
        if (paramb == null) {
          break label43;
        }
      }
      label43:
      for (paramb = new rb(paramb);; paramb = null)
      {
        ((ow)localObject).a(paramb);
        return;
      }
      return;
    }
    catch (RemoteException paramb)
    {
      af.d("Failed to set the onCustomRenderedAdLoadedListener.", paramb);
    }
  }
  
  public final void setVideoOptions(j paramj)
  {
    Object localObject = this.azo;
    ((pz)localObject).azA = paramj;
    try
    {
      if (((pz)localObject).bbP != null)
      {
        localObject = ((pz)localObject).bbP;
        if (paramj == null) {}
        for (paramj = null;; paramj = new qq(paramj))
        {
          ((ow)localObject).a(paramj);
          return;
        }
      }
      return;
    }
    catch (RemoteException paramj)
    {
      af.d("Failed to set video options.", paramj);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */