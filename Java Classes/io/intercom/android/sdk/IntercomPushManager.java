package io.intercom.android.sdk;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

public class IntercomPushManager
{
  public static final String HOST_APP_INTENT = "host_app_intent";
  public static final String INTERCOM_PUSH_KEY = "intercom_push_key";
  public static final String INTERCOM_PUSH_PATH = "intercom_push_notification_path";
  public static final String MULTIPLE_NOTIFICATIONS = "multiple_notifications";
  private static final String PREFS_SENDER_ID = "intercom_sender_id";
  public static final String PUSH_ONLY_ID = "push_only_convo_id";
  private static final Twig TWIG = LumberMill.getLogger();
  public static GcmImplementation gcmImplementation = new GcmImplementation()
  {
    public final void registerToken(Application paramAnonymousApplication) {}
  };
  
  public static void cacheSenderId(Context paramContext, String paramString)
  {
    paramContext.getSharedPreferences("INTERCOM_SDK_PREFS", 0).edit().putString("intercom_sender_id", paramString).apply();
  }
  
  private static boolean fcmModuleInstalled()
  {
    return (getFcmMessengerClass() != null) && (getFcmInstanceIdClass() != null);
  }
  
  private static boolean gcmModuleInstalled()
  {
    return (getGcmListenerClass() != null) && (getGcmImplementationClass() != null);
  }
  
  private static Class getFcmInstanceIdClass()
  {
    try
    {
      Class localClass = Class.forName("io.intercom.android.sdk.fcm.IntercomFcmInstanceIdService");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return null;
  }
  
  private static Class getFcmMessengerClass()
  {
    try
    {
      Class localClass = Class.forName("io.intercom.android.sdk.fcm.IntercomFcmMessengerService");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return null;
  }
  
  private static Class getGcmImplementationClass()
  {
    try
    {
      Class localClass = Class.forName("io.intercom.android.sdk.gcm.IntercomGcmImplementation");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return null;
  }
  
  private static Class getGcmListenerClass()
  {
    try
    {
      Class localClass = Class.forName("io.intercom.android.sdk.gcm.IntercomGcmListenerService");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return null;
  }
  
  public static IntercomPushIntegrationType getInstalledModuleType()
  {
    IntercomPushIntegrationType localIntercomPushIntegrationType = IntercomPushIntegrationType.NONE;
    boolean bool1 = fcmModuleInstalled();
    boolean bool2 = gcmModuleInstalled();
    if ((bool1) && (bool2))
    {
      TWIG.internal("Both FCM and GCM are installed");
      localIntercomPushIntegrationType = IntercomPushIntegrationType.BOTH;
    }
    do
    {
      return localIntercomPushIntegrationType;
      if (bool1)
      {
        TWIG.internal("FCM is installed");
        return IntercomPushIntegrationType.FCM;
      }
    } while (!bool2);
    TWIG.internal("GCM is installed");
    return IntercomPushIntegrationType.GCM;
  }
  
  public static String getSenderId(Context paramContext)
  {
    return paramContext.getSharedPreferences("INTERCOM_SDK_PREFS", 0).getString("intercom_sender_id", "");
  }
  
  public static void registerGcmToken(Context paramContext)
  {
    gcmImplementation.registerToken((Application)paramContext.getApplicationContext());
  }
  
  public static abstract interface GcmImplementation
  {
    public abstract void registerToken(Application paramApplication);
  }
  
  public static enum IntercomPushIntegrationType
  {
    BOTH,  FCM,  GCM,  NONE;
    
    private IntercomPushIntegrationType() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/IntercomPushManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */