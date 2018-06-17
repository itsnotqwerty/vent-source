package io.intercom.android.sdk.overlay;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.metrics.MetricTracker;

public class DefaultLauncherPresenter
  implements DefaultLauncher.Listener
{
  private int bottomPadding = 0;
  DefaultLauncher defaultLauncher;
  private final LayoutInflater inflater;
  private final MetricTracker metricTracker;
  private final LauncherOpenBehaviour openBehaviour;
  private int previousUnreadCount = 0;
  
  public DefaultLauncherPresenter(LayoutInflater paramLayoutInflater, LauncherOpenBehaviour paramLauncherOpenBehaviour, MetricTracker paramMetricTracker)
  {
    this.inflater = paramLayoutInflater;
    this.openBehaviour = paramLauncherOpenBehaviour;
    this.metricTracker = paramMetricTracker;
    this.bottomPadding = getDefaultPadding(paramLayoutInflater.getContext().getResources());
  }
  
  private int getDefaultPadding(Resources paramResources)
  {
    return paramResources.getDimensionPixelSize(R.dimen.intercom_launcher_padding_bottom) + paramResources.getDimensionPixelSize(R.dimen.intercom_bottom_padding);
  }
  
  public void displayLauncherOnAttachedRoot(ViewGroup paramViewGroup, int paramInt)
  {
    if ((this.defaultLauncher != null) && (!this.defaultLauncher.isAttachedToRoot(paramViewGroup)))
    {
      this.defaultLauncher.removeView();
      this.defaultLauncher = null;
    }
    if (this.defaultLauncher == null)
    {
      this.defaultLauncher = new DefaultLauncher(paramViewGroup, this.inflater, this, this.bottomPadding);
      this.defaultLauncher.fadeOnScreen();
    }
    setLauncherBackgroundColor(paramInt);
    setUnreadCount(this.previousUnreadCount);
  }
  
  DefaultLauncher getAndUnsetLauncher()
  {
    DefaultLauncher localDefaultLauncher = this.defaultLauncher;
    this.defaultLauncher = null;
    return localDefaultLauncher;
  }
  
  public boolean isDisplaying()
  {
    return this.defaultLauncher != null;
  }
  
  public void onLauncherClicked(Context paramContext)
  {
    this.openBehaviour.openMessenger(paramContext);
  }
  
  void removeLauncher()
  {
    if (this.defaultLauncher != null)
    {
      this.defaultLauncher.fadeOffScreen(null);
      this.defaultLauncher = null;
    }
  }
  
  public void setBottomPadding(int paramInt)
  {
    this.bottomPadding = (getDefaultPadding(this.inflater.getContext().getResources()) + paramInt);
    if (isDisplaying()) {
      this.defaultLauncher.updateBottomPadding(this.bottomPadding);
    }
  }
  
  void setLauncherBackgroundColor(int paramInt)
  {
    if (this.defaultLauncher != null) {
      this.defaultLauncher.setBackgroundColor(paramInt);
    }
  }
  
  public void setUnreadCount(int paramInt)
  {
    if (isDisplaying())
    {
      String str = String.valueOf(paramInt);
      if (paramInt > this.previousUnreadCount) {
        this.metricTracker.receivedNotificationFromBadgeWhenMessengerClosed(str);
      }
      if (paramInt <= 0) {
        break label46;
      }
      this.defaultLauncher.setBadgeCount(str);
    }
    for (;;)
    {
      this.previousUnreadCount = paramInt;
      return;
      label46:
      this.defaultLauncher.hideBadgeCount();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/overlay/DefaultLauncherPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */