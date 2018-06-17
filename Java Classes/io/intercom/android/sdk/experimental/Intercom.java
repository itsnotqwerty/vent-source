package io.intercom.android.sdk.experimental;

import android.app.Application;
import android.app.TaskStackBuilder;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Intercom.LogLevel;
import io.intercom.android.sdk.Intercom.Visibility;
import io.intercom.android.sdk.LateInitializationPreparer;
import io.intercom.android.sdk.UnreadConversationCountListener;
import io.intercom.android.sdk.UserAttributes;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.ValidatorUtil;
import java.util.Map;

public abstract class Intercom
{
  public static final String GCM_RECEIVER = "intercom_sdk";
  private static final Twig TWIG = ;
  private static Intercom instance;
  
  public static void boot(Application paramApplication, IntercomSettings paramIntercomSettings)
  {
    for (;;)
    {
      try
      {
        if (instance == null)
        {
          if (ValidatorUtil.isValidConstructorParams(paramApplication, paramIntercomSettings.getApiKey(), paramIntercomSettings.getAppId()))
          {
            instance = RealIntercom.create(paramApplication, paramIntercomSettings.getApiKey(), paramIntercomSettings.getAppId());
            LateInitializationPreparer.getInstance().handlePastLifecycleEvents(paramApplication, Injector.get());
            ((RealIntercom)instance).registerUser(paramIntercomSettings);
            return;
          }
          instance = new InvalidIntercom();
          continue;
        }
        if (!(instance instanceof RealIntercom)) {
          continue;
        }
      }
      finally {}
      ((RealIntercom)instance).registerUser(paramIntercomSettings);
    }
  }
  
  public static Intercom client()
  {
    try
    {
      if (!isBooted()) {
        throw new IllegalStateException("Please call Intercom.boot() before requesting the client.");
      }
    }
    finally {}
    Intercom localIntercom = instance;
    return localIntercom;
  }
  
  public static boolean isBooted()
  {
    return instance != null;
  }
  
  public static void registerForLaterBoot(Application paramApplication)
  {
    for (;;)
    {
      try
      {
        if (isBooted())
        {
          TWIG.i("Intercom has already been booted", new Object[0]);
          return;
        }
        if (paramApplication == null) {
          throw new NullPointerException("Cannot call registerForLaterBoot() with a null Application");
        }
      }
      finally {}
      LateInitializationPreparer.getInstance().register(paramApplication);
    }
  }
  
  public static void setLogLevel(@Intercom.LogLevel int paramInt)
  {
    LumberMill.setLogLevel(paramInt);
  }
  
  public static void unregisterForLateBoot(Application paramApplication)
  {
    if (paramApplication == null) {
      throw new NullPointerException("Cannot call unregisterForLateBoot() with a null Application");
    }
    LateInitializationPreparer.getInstance().unregister(paramApplication);
  }
  
  public abstract void addUnreadConversationCountListener(UnreadConversationCountListener paramUnreadConversationCountListener);
  
  public abstract void displayConversationsList();
  
  public abstract void displayHelpCenter();
  
  public abstract void displayMessageComposer();
  
  public abstract void displayMessageComposer(String paramString);
  
  public abstract void displayMessenger();
  
  public abstract int getUnreadConversationCount();
  
  public abstract void handlePushMessage();
  
  public abstract void handlePushMessage(TaskStackBuilder paramTaskStackBuilder);
  
  public abstract void hideMessenger();
  
  public abstract void logEvent(String paramString);
  
  public abstract void logEvent(String paramString, Map<String, ?> paramMap);
  
  public abstract void removeUnreadConversationCountListener(UnreadConversationCountListener paramUnreadConversationCountListener);
  
  public abstract void setBottomPadding(int paramInt);
  
  public abstract void setInAppMessageVisibility(Intercom.Visibility paramVisibility);
  
  public abstract void setLauncherVisibility(Intercom.Visibility paramVisibility);
  
  public abstract void setUserHash(String paramString);
  
  public abstract void shutdown();
  
  public abstract void updateUser(UserAttributes paramUserAttributes);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/experimental/Intercom.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */