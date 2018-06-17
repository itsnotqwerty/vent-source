package io.intercom.android.sdk;

import android.app.Application;
import android.app.TaskStackBuilder;
import io.intercom.android.sdk.identity.Registration;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.ValidatorUtil;
import java.lang.annotation.Annotation;
import java.util.Map;

public abstract class Intercom
{
  public static final String GCM_RECEIVER = "intercom_sdk";
  public static final Visibility GONE = Visibility.GONE;
  private static final Twig TWIG = LumberMill.getLogger();
  public static final Visibility VISIBLE = Visibility.VISIBLE;
  private static Intercom instance;
  
  public static Intercom client()
  {
    try
    {
      if (instance == null) {
        throw new IllegalStateException("Please call Intercom.initialize() before requesting the client.");
      }
    }
    finally {}
    Intercom localIntercom = instance;
    return localIntercom;
  }
  
  public static void initialize(Application paramApplication, String paramString1, String paramString2)
  {
    for (;;)
    {
      try
      {
        if (instance != null)
        {
          TWIG.i("Intercom has already been initialized", new Object[0]);
          return;
        }
        if (ValidatorUtil.isValidConstructorParams(paramApplication, paramString1, paramString2))
        {
          TWIG.i("Intercom has already been initialized", new Object[0]);
          instance = RealIntercom.create(paramApplication, paramString1, paramString2);
          LateInitializationPreparer.getInstance().handlePastLifecycleEvents(paramApplication, Injector.get());
        }
        else
        {
          instance = new InvalidIntercom();
        }
      }
      finally {}
    }
  }
  
  public static void registerForLaterInitialisation(Application paramApplication)
  {
    for (;;)
    {
      try
      {
        if (instance != null)
        {
          TWIG.i("Intercom has already been initialized", new Object[0]);
          return;
        }
        if (paramApplication == null) {
          throw new NullPointerException("Cannot call registerForLaterInitialisation() with a null Application");
        }
      }
      finally {}
      LateInitializationPreparer.getInstance().register(paramApplication);
    }
  }
  
  public static void setLogLevel(@LogLevel int paramInt)
  {
    LumberMill.setLogLevel(paramInt);
  }
  
  public static void unregisterForLateInitialisation(Application paramApplication)
  {
    if (paramApplication == null) {
      throw new NullPointerException("Cannot call unregisterForLateInitialisation() with a null Application");
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
  
  public abstract void logout();
  
  public abstract void registerIdentifiedUser(Registration paramRegistration);
  
  public abstract void registerUnidentifiedUser();
  
  public abstract void removeUnreadConversationCountListener(UnreadConversationCountListener paramUnreadConversationCountListener);
  
  @Deprecated
  public abstract void reset();
  
  public abstract void setBottomPadding(int paramInt);
  
  public abstract void setInAppMessageVisibility(Visibility paramVisibility);
  
  public abstract void setLauncherVisibility(Visibility paramVisibility);
  
  public abstract void setUserHash(String paramString);
  
  public abstract void updateUser(UserAttributes paramUserAttributes);
  
  public static @interface LogLevel
  {
    public static final int ASSERT = 7;
    public static final int DEBUG = 3;
    public static final int DISABLED = 8;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
  }
  
  public static enum Visibility
  {
    GONE,  VISIBLE;
    
    private Visibility() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/Intercom.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */