package io.intercom.android.sdk.push;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.IntentUtils;
import java.util.List;

class PushReceiverDelegate
{
  private static final String CONSUMED_BY_INTERCOM = "consumed_by_intercom";
  private final Twig twig = LumberMill.getLogger();
  
  private PushBroadcast createPushFromIntent(Intent paramIntent)
  {
    PushBroadcast localPushBroadcast = new PushBroadcast();
    if (paramIntent == null) {
      this.twig.internal("Host app intent was null.");
    }
    while ((!notLaunchedFromHistory(paramIntent)) || (!notConsumedByIntercom(paramIntent)) || (!isIntercomIntent(paramIntent.getExtras()))) {
      return localPushBroadcast;
    }
    localPushBroadcast = new PushBroadcast(paramIntent);
    paramIntent.putExtra("consumed_by_intercom", true);
    return localPushBroadcast;
  }
  
  private String extractNotificationId(Uri paramUri)
  {
    paramUri = paramUri.getPathSegments();
    if (paramUri.isEmpty()) {
      return "";
    }
    paramUri = (String)paramUri.get(1);
    if (paramUri.equals("multiple_notifications")) {
      return "multiple_notifications";
    }
    return paramUri.substring(paramUri.lastIndexOf('=') + 1);
  }
  
  private Intent getLaunchActivityIntent(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      paramContext = localPackageManager.getLaunchIntentForPackage(paramContext.getPackageName());
      if (paramContext == null) {
        throw new PackageManager.NameNotFoundException();
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      return new Intent();
    }
    paramContext.addCategory("android.intent.category.LAUNCHER");
    return paramContext;
  }
  
  private void handlePushMessage(Context paramContext, Api paramApi, Uri paramUri, String paramString, MetricTracker paramMetricTracker)
  {
    paramApi.markConversationAsRead(paramString);
    if (Uri.EMPTY.equals(paramUri)) {
      this.twig.i("There was no URI in the push message. Defaulting to launch activity", new Object[0]);
    }
    for (paramApi = getLaunchActivityIntent(paramContext);; paramApi = new Intent("android.intent.action.VIEW", paramUri))
    {
      paramApi.addFlags(268435456);
      paramMetricTracker.openedPushOnlyNotification(paramString);
      IntentUtils.safelyOpenIntent(paramContext, paramApi);
      return;
    }
  }
  
  private boolean isIntercomIntent(Bundle paramBundle)
  {
    return (paramBundle != null) && (paramBundle.containsKey("intercom_push_key"));
  }
  
  private boolean notConsumedByIntercom(Intent paramIntent)
  {
    boolean bool = false;
    if (!paramIntent.getBooleanExtra("consumed_by_intercom", false)) {
      bool = true;
    }
    return bool;
  }
  
  private boolean notLaunchedFromHistory(Intent paramIntent)
  {
    return (paramIntent.getFlags() & 0x100000) == 0;
  }
  
  private void openHostAppIntent(Context paramContext, Intent paramIntent, String paramString)
  {
    paramContext.getSharedPreferences("INTERCOM_SDK_PUSH_PREFS", 0).edit().putString("intercom_push_notification_path", paramString).apply();
    IntentUtils.safelyOpenIntent(paramContext, paramIntent);
  }
  
  void handlePushTap(Context paramContext, Intent paramIntent, Api paramApi, UserIdentity paramUserIdentity, MetricTracker paramMetricTracker)
  {
    if (paramUserIdentity.identityExists())
    {
      paramIntent = (Intent)paramIntent.getParcelableExtra("host_app_intent");
      if (paramIntent != null) {}
    }
    else
    {
      return;
    }
    paramUserIdentity = createPushFromIntent(paramIntent);
    if (paramUserIdentity.isEmpty())
    {
      this.twig.internal("Could not open push. No Uri and conversation id found.");
      return;
    }
    Uri localUri = paramUserIdentity.getPushData();
    String str = paramUserIdentity.getPushOnlyId();
    if (paramUserIdentity.hasPushOnlyId())
    {
      handlePushMessage(paramContext, paramApi, localUri, str, paramMetricTracker);
      return;
    }
    openHostAppIntent(paramContext, paramIntent, extractNotificationId(localUri));
  }
  
  void trackDismiss(Intent paramIntent, UserIdentity paramUserIdentity, MetricTracker paramMetricTracker)
  {
    if (paramUserIdentity.identityExists())
    {
      paramIntent = (Intent)paramIntent.getParcelableExtra("host_app_intent");
      if (paramIntent != null) {}
    }
    else
    {
      return;
    }
    paramIntent = new PushBroadcast(paramIntent);
    if (paramIntent.isEmpty())
    {
      this.twig.internal("Could not track push dismiss. No Uri found");
      return;
    }
    boolean bool = paramIntent.hasPushOnlyId();
    if (bool) {}
    for (paramIntent = paramIntent.getPushOnlyId();; paramIntent = extractNotificationId(paramIntent.getPushData()))
    {
      paramMetricTracker.dismissedPushNotification(paramIntent, bool);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/push/PushReceiverDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */