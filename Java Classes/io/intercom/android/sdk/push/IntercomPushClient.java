package io.intercom.android.sdk.push;

import android.app.Application;
import android.os.Bundle;
import android.text.TextUtils;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.state.HostAppState;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.ContextLocaliser;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class IntercomPushClient
{
  private final PushHandler pushHandler;
  private final Twig twig;
  
  public IntercomPushClient()
  {
    this(LumberMill.getLogger(), new PushHandler());
  }
  
  IntercomPushClient(Twig paramTwig, PushHandler paramPushHandler)
  {
    this.twig = paramTwig;
    this.pushHandler = paramPushHandler;
  }
  
  private Bundle convertMessageMapToBundle(Map<String, String> paramMap)
  {
    Bundle localBundle = new Bundle(paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localBundle.putString((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    return localBundle;
  }
  
  public void handlePush(Application paramApplication, Bundle paramBundle)
  {
    if (paramBundle == null)
    {
      this.twig.i("The message passed to handlePush() was null.", new Object[0]);
      return;
    }
    if (!PushPayload.create(paramBundle).isIntercomPush())
    {
      this.twig.i("The message passed to handlePush() was not an Intercom push message.", new Object[0]);
      return;
    }
    Injector.initIfCachedCredentials(paramApplication);
    if (Injector.isNotInitialised())
    {
      this.twig.w("Push not handled because Intercom is not initialised", new Object[0]);
      return;
    }
    Injector localInjector = Injector.get();
    paramApplication = new ContextLocaliser(localInjector.getAppConfigProvider()).createLocalisedContext(paramApplication);
    boolean bool = ((State)localInjector.getStore().state()).hostAppState().isBackgrounded();
    SystemNotificationManager localSystemNotificationManager = localInjector.getSystemNotificationManager();
    this.pushHandler.handlePush(paramBundle, localInjector.getUserIdentity(), localSystemNotificationManager, bool, paramApplication, localInjector.getMetricTracker(), (AppConfig)localInjector.getAppConfigProvider().get());
  }
  
  public void handlePush(Application paramApplication, Map<String, String> paramMap)
  {
    if (paramMap == null)
    {
      this.twig.i("The message passed to handlePush() was null.", new Object[0]);
      return;
    }
    handlePush(paramApplication, convertMessageMapToBundle(paramMap));
  }
  
  public boolean isIntercomPush(Bundle paramBundle)
  {
    return (paramBundle != null) && (PushPayload.create(paramBundle).isIntercomPush());
  }
  
  public boolean isIntercomPush(Map<String, String> paramMap)
  {
    return (paramMap != null) && (isIntercomPush(convertMessageMapToBundle(paramMap)));
  }
  
  public void sendTokenToIntercom(Application paramApplication, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      this.twig.e("sendTokenToIntercom() was called with a null or empty token. This user will not receive push notifications until a valid device token is sent.", new Object[0]);
    }
    Injector localInjector;
    do
    {
      return;
      Injector.initIfCachedCredentials(paramApplication);
      if (Injector.isNotInitialised())
      {
        this.twig.w("Token not sent because Intercom is not initialised", new Object[0]);
        return;
      }
      localInjector = Injector.get();
    } while (!this.pushHandler.shouldSendDeviceToken(paramApplication, paramString));
    this.pushHandler.sendTokenToIntercom(paramApplication, paramString, localInjector.getApi());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/push/IntercomPushClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */