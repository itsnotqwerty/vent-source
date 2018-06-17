package io.intercom.android.sdk.push;

import android.content.Context;
import android.os.Bundle;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.user.DeviceData;

class PushHandler
{
  private static final String TAG = "PushHandler";
  private final Twig twig = LumberMill.getLogger();
  
  private void sendNotification(Bundle paramBundle, SystemNotificationManager paramSystemNotificationManager, boolean paramBoolean, Context paramContext, MetricTracker paramMetricTracker, AppConfig paramAppConfig)
  {
    if (paramBundle.isEmpty())
    {
      this.twig.e("The push intent contained no data", new Object[0]);
      return;
    }
    this.twig.internal("PushHandler", "Notification Data Json :" + paramBundle.getString("message"));
    paramBundle = PushPayload.create(paramBundle);
    if (paramBundle.isIntercomPush())
    {
      if (paramBundle.isPushOnly())
      {
        paramMetricTracker.receivedPushOnlyNotification(paramBundle.getPushOnlyConversationId());
        paramSystemNotificationManager.createPushOnlyNotification(paramBundle, paramContext);
        return;
      }
      if (paramBoolean)
      {
        paramMetricTracker.receivedPushNotification(paramBundle.getConversationId());
        paramSystemNotificationManager.createNotification(paramBundle, paramContext, paramAppConfig);
        return;
      }
      this.twig.i("Intercom message received but not displayed in notification bar. This happened because the host app was in the foreground.", new Object[0]);
      return;
    }
    this.twig.i("This is not a Intercom push message", new Object[0]);
  }
  
  void handlePush(Bundle paramBundle, UserIdentity paramUserIdentity, SystemNotificationManager paramSystemNotificationManager, boolean paramBoolean, Context paramContext, MetricTracker paramMetricTracker, AppConfig paramAppConfig)
  {
    if (paramUserIdentity.identityExists())
    {
      sendNotification(paramBundle, paramSystemNotificationManager, paramBoolean, paramContext, paramMetricTracker, paramAppConfig);
      return;
    }
    paramSystemNotificationManager.clear();
    this.twig.i("Can't create push message as we have no user identity. This can be caused by messages being sent to a logged out user.", new Object[0]);
  }
  
  void sendTokenToIntercom(Context paramContext, String paramString, Api paramApi)
  {
    paramApi.setDeviceToken(paramString);
    DeviceData.cacheDeviceToken(paramContext, paramString);
  }
  
  boolean shouldSendDeviceToken(Context paramContext, String paramString)
  {
    return !DeviceData.hasCachedDeviceToken(paramContext, paramString);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/push/PushHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */