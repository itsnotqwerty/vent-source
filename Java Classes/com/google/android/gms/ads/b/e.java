package com.google.android.gms.ads.b;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.rn;

public final class e
  extends FrameLayout
{
  private final FrameLayout azB;
  private final rn azC;
  
  private View aS(String paramString)
  {
    try
    {
      paramString = this.azC.cP(paramString);
      if (paramString != null)
      {
        paramString = (View)com.google.android.gms.a.c.a(paramString);
        return paramString;
      }
    }
    catch (RemoteException paramString)
    {
      af.c("Unable to call getAssetView on delegate", paramString);
    }
    return null;
  }
  
  public final void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    super.bringChildToFront(this.azB);
  }
  
  public final void bringChildToFront(View paramView)
  {
    super.bringChildToFront(paramView);
    if (this.azB != paramView) {
      super.bringChildToFront(this.azB);
    }
  }
  
  public final a getAdChoicesView()
  {
    View localView = aS("1098");
    if ((localView instanceof a)) {
      return (a)localView;
    }
    return null;
  }
  
  public final void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (this.azC != null) {}
    try
    {
      this.azC.d(com.google.android.gms.a.c.Q(paramView), paramInt);
      return;
    }
    catch (RemoteException paramView)
    {
      af.c("Unable to call onVisibilityChanged on delegate", paramView);
    }
  }
  
  public final void removeAllViews()
  {
    super.removeAllViews();
    super.addView(this.azB);
  }
  
  public final void removeView(View paramView)
  {
    if (this.azB == paramView) {
      return;
    }
    super.removeView(paramView);
  }
  
  public final void setAdChoicesView(a parama)
  {
    try
    {
      this.azC.b("1098", com.google.android.gms.a.c.Q(parama));
      return;
    }
    catch (RemoteException parama)
    {
      af.c("Unable to call setAssetView on delegate", parama);
    }
  }
  
  public final void setNativeAd(c paramc)
  {
    try
    {
      this.azC.q((com.google.android.gms.a.a)paramc.lA());
      return;
    }
    catch (RemoteException paramc)
    {
      af.c("Unable to call setNativeAd on delegate", paramc);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/b/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */