package com.google.android.gms.ads.b;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.rs;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class f
{
  public static WeakHashMap<View, f> azE = new WeakHashMap();
  private rs azD;
  private WeakReference<View> azF;
  
  public final void setNativeAd(c paramc)
  {
    View localView;
    if (this.azF != null)
    {
      localView = (View)this.azF.get();
      if (localView != null) {
        break label33;
      }
      af.bt("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
    }
    label33:
    do
    {
      return;
      localView = null;
      break;
      if (!azE.containsKey(localView)) {
        azE.put(localView, this);
      }
    } while (this.azD == null);
    try
    {
      this.azD.q((a)paramc.lA());
      return;
    }
    catch (RemoteException paramc)
    {
      af.c("Unable to call setNativeAd on delegate", paramc);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/b/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */