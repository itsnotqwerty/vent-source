package io.intercom.android.sdk.push;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.twig.Twig;

public class IntercomPushBroadcastReceiver
  extends BroadcastReceiver
{
  static final String INTERCOM_PUSH_DISMISSED = "io.intercom.android.sdk.INTERCOM_PUSH_DISMISSED";
  static final String INTERCOM_PUSH_OPENED = "io.intercom.android.sdk.INTERCOM_PUSH_OPENED";
  private static final Twig TWIG = ;
  private final PushReceiverDelegate pushReceiverDelegate = new PushReceiverDelegate();
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Injector.initIfCachedCredentials((Application)paramContext.getApplicationContext());
    if (Injector.isNotInitialised())
    {
      TWIG.w("Push not handled because Intercom is not initialised", new Object[0]);
      return;
    }
    Object localObject = Injector.get();
    UserIdentity localUserIdentity = ((Injector)localObject).getUserIdentity();
    MetricTracker localMetricTracker = ((Injector)localObject).getMetricTracker();
    String str = paramIntent.getAction();
    int i = -1;
    switch (str.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        localObject = ((Injector)localObject).getApi();
        this.pushReceiverDelegate.handlePushTap(paramContext, paramIntent, (Api)localObject, localUserIdentity, localMetricTracker);
        return;
        if (str.equals("io.intercom.android.sdk.INTERCOM_PUSH_DISMISSED"))
        {
          i = 0;
          continue;
          if (str.equals("io.intercom.android.sdk.INTERCOM_PUSH_OPENED")) {
            i = 2;
          }
        }
        break;
      }
    }
    this.pushReceiverDelegate.trackDismiss(paramIntent, localUserIdentity, localMetricTracker);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/push/IntercomPushBroadcastReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */