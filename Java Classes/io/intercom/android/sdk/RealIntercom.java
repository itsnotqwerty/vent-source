package io.intercom.android.sdk;

import android.app.Application;
import android.app.TaskStackBuilder;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.activities.IntercomHelpCenterActivity;
import io.intercom.android.sdk.activities.IntercomMessengerActivity;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.api.DeDuper;
import io.intercom.android.sdk.api.UserUpdateBatcher;
import io.intercom.android.sdk.api.UserUpdateRequest;
import io.intercom.android.sdk.exceptions.IntercomIntegrationException;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.Registration;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.models.LastParticipatingAdmin;
import io.intercom.android.sdk.nexus.NexusClient;
import io.intercom.android.sdk.overlay.LauncherOpenBehaviour;
import io.intercom.android.sdk.overlay.LauncherOpenBehaviour.LauncherType;
import io.intercom.android.sdk.overlay.OverlayPresenter;
import io.intercom.android.sdk.push.SystemNotificationManager;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.UnreadCountTracker;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.user.DeviceData;
import io.intercom.android.sdk.utilities.ActivityFinisher;
import io.intercom.android.sdk.utilities.AttributeSanitiser;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

class RealIntercom
  extends Intercom
{
  private final ActivityFinisher activityFinisher;
  private final Provider<Api> apiProvider;
  private final Provider<AppConfig> appConfigProvider;
  private final Context context;
  private final MetricTracker metricTracker;
  private final NexusClient nexusClient;
  private final OverlayPresenter overlayPresenter;
  private final ResetManager resetManager;
  private final Store<State> store;
  private final DeDuper superDeDuper;
  private final SystemNotificationManager systemNotificationManager;
  private final Twig twig;
  private final UnreadCountTracker unreadCountTracker;
  private final UserIdentity userIdentity;
  private final Provider<UserUpdateBatcher> userUpdateBatcher;
  
  RealIntercom(DeDuper paramDeDuper, Provider<Api> paramProvider, NexusClient paramNexusClient, Store<State> paramStore, UnreadCountTracker paramUnreadCountTracker, MetricTracker paramMetricTracker, final Context paramContext, OverlayPresenter paramOverlayPresenter, Provider<AppConfig> paramProvider1, UserIdentity paramUserIdentity, SystemNotificationManager paramSystemNotificationManager, Provider<UserUpdateBatcher> paramProvider2, ResetManager paramResetManager, Twig paramTwig, ActivityFinisher paramActivityFinisher)
  {
    this.superDeDuper = paramDeDuper;
    this.apiProvider = paramProvider;
    this.nexusClient = paramNexusClient;
    this.store = paramStore;
    this.unreadCountTracker = paramUnreadCountTracker;
    this.metricTracker = paramMetricTracker;
    this.context = paramContext;
    this.overlayPresenter = paramOverlayPresenter;
    this.appConfigProvider = paramProvider1;
    this.userIdentity = paramUserIdentity;
    this.systemNotificationManager = paramSystemNotificationManager;
    this.userUpdateBatcher = paramProvider2;
    this.resetManager = paramResetManager;
    this.twig = paramTwig;
    this.activityFinisher = paramActivityFinisher;
    switch (IntercomPushManager.getInstalledModuleType())
    {
    default: 
      paramSystemNotificationManager.deleteNotificationChannels();
      paramTwig.internal("No push integration detected");
      return;
    case ???: 
      throw new IntercomIntegrationException("Both Intercom FCM and GCM modules were included. Please include only one of these dependencies in your project.");
    case ???: 
      paramTwig.i("Enabling FCM for cloud messaging", new Object[0]);
      paramSystemNotificationManager.setUpNotificationChannelsIfSupported();
      return;
    }
    paramTwig.i("Enabling GCM for cloud messaging", new Object[0]);
    paramSystemNotificationManager.setUpNotificationChannelsIfSupported();
    setGcmSenderId();
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        IntercomPushManager.registerGcmToken(paramContext);
      }
    });
  }
  
  static Intercom create(Application paramApplication, String paramString1, String paramString2)
  {
    Injector.initWithAppCredentials(paramApplication, paramString1, paramString2);
    paramString1 = Injector.get();
    paramString2 = paramString1.getUserIdentity();
    Store localStore = paramString1.getStore();
    return new RealIntercom(paramString1.getDeDuper(), paramString1.getApiProvider(), paramString1.getNexusClient(), localStore, new UnreadCountTracker(localStore), paramString1.getMetricTracker(), paramApplication, paramString1.getOverlayPresenter(), paramString1.getAppConfigProvider(), paramString2, paramString1.getSystemNotificationManager(), paramString1.getUserUpdateBatcherProvider(), paramString1.getResetManager(), LumberMill.getLogger(), paramString1.getActivityFinisher());
  }
  
  private void logErrorAndOpenInbox(String paramString)
  {
    this.twig.e(paramString, new Object[0]);
    displayConversationsList();
  }
  
  private void logEventWithValidation(String paramString, Map<String, ?> paramMap)
  {
    if (TextUtils.isEmpty(paramString))
    {
      this.twig.e("The event name is null or empty. We can't log an event with this string.", new Object[0]);
      return;
    }
    ((UserUpdateBatcher)this.userUpdateBatcher.get()).submitPendingUpdate();
    ((Api)this.apiProvider.get()).logEvent(paramString, paramMap);
  }
  
  private boolean noUserRegistered()
  {
    return (!this.userIdentity.identityExists()) || (this.userIdentity.isSoftReset());
  }
  
  private void openIntercomChatPush(String paramString, TaskStackBuilder paramTaskStackBuilder)
  {
    Intent localIntent;
    if (paramString.equals("multiple_notifications"))
    {
      localIntent = IntercomMessengerActivity.openInbox(this.context);
      if ((paramTaskStackBuilder == null) || (Build.VERSION.SDK_INT < 16)) {
        break label78;
      }
      paramTaskStackBuilder.addNextIntent(localIntent);
      this.context.startActivities(paramTaskStackBuilder.getIntents());
    }
    for (;;)
    {
      this.metricTracker.viewedPushNotification(paramString);
      this.systemNotificationManager.clear();
      return;
      localIntent = IntercomMessengerActivity.openConversation(this.context, paramString, LastParticipatingAdmin.NULL);
      break;
      label78:
      this.context.startActivity(localIntent);
    }
  }
  
  private void performUpdate(Map<String, Object> paramMap)
  {
    if (this.userIdentity.isUnidentified()) {
      AttributeSanitiser.anonymousSanitisation(paramMap);
    }
    if (this.superDeDuper.shouldUpdateUser(paramMap))
    {
      this.superDeDuper.update(paramMap);
      Boolean localBoolean = (Boolean)this.store.select(Selectors.APP_IS_BACKGROUNDED);
      ((UserUpdateBatcher)this.userUpdateBatcher.get()).updateUser(new UserUpdateRequest(false, localBoolean.booleanValue(), paramMap, false));
      this.twig.internal("dupe", "updated user");
      return;
    }
    this.twig.internal("dupe", "dropped dupe");
  }
  
  private void setGcmSenderId()
  {
    String str = this.context.getString(R.string.intercom_gcm_sender_id);
    if (!TextUtils.isEmpty(str)) {
      IntercomPushManager.cacheSenderId(this.context, str);
    }
  }
  
  private void softRegister()
  {
    Object localObject = DeviceData.getDeviceToken(this.context);
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      ((Api)this.apiProvider.get()).setDeviceToken((String)localObject);
    }
    this.nexusClient.connect(((AppConfig)this.appConfigProvider.get()).getRealTimeConfig(), true);
    this.userIdentity.softRestart();
    this.resetManager.clear();
    localObject = new Runnable()
    {
      public void run()
      {
        RealIntercom.this.overlayPresenter.refreshStateBecauseUserIdentityIsNotInStoreYet();
      }
    };
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      ((Runnable)localObject).run();
      return;
    }
    new Handler(Looper.getMainLooper()).post((Runnable)localObject);
  }
  
  private boolean userIsRegistered(Registration paramRegistration)
  {
    return (this.userIdentity.isSoftReset()) && (this.userIdentity.isSameUser(paramRegistration));
  }
  
  public void addUnreadConversationCountListener(UnreadConversationCountListener paramUnreadConversationCountListener)
  {
    if (paramUnreadConversationCountListener != null) {
      this.unreadCountTracker.addListener(paramUnreadConversationCountListener);
    }
  }
  
  public void displayConversationsList()
  {
    this.metricTracker.openedMessengerConversationList(LauncherOpenBehaviour.LauncherType.CUSTOM);
    this.context.startActivity(IntercomMessengerActivity.openInbox(this.context));
  }
  
  public void displayHelpCenter()
  {
    if (TextUtils.isEmpty(((AppConfig)this.appConfigProvider.get()).getHelpCenterUrl()))
    {
      this.twig.e("Could not open Help Center. Please make sure you have turned on Help Center in Educate settings.", new Object[0]);
      return;
    }
    Intent localIntent = IntercomHelpCenterActivity.buildIntent(this.context, ((AppConfig)this.appConfigProvider.get()).getHelpCenterUrl(), 1, "");
    this.context.startActivity(localIntent);
  }
  
  public void displayMessageComposer()
  {
    displayMessageComposer("");
  }
  
  public void displayMessageComposer(String paramString)
  {
    if (noUserRegistered())
    {
      logErrorAndOpenInbox("The messenger was opened but there was no user registered on this device. Please call registerUnidentifiedUser() or registerIdentifiedUser(Registration).");
      return;
    }
    if (!((AppConfig)this.appConfigProvider.get()).isReceivedFromServer())
    {
      logErrorAndOpenInbox("It appears your app has not received a successful response from Intercom. Please check you are using the correct Android app ID and API Key from the Intercom settings.");
      return;
    }
    if (!((AppConfig)this.appConfigProvider.get()).isInboundMessages())
    {
      logErrorAndOpenInbox("It appears your app is not on a plan that allows message composing. As a fallback we are calling displayConversationsList()");
      return;
    }
    this.metricTracker.openedMessengerNewConversation(LauncherOpenBehaviour.LauncherType.CUSTOM);
    this.context.startActivity(IntercomMessengerActivity.openComposer(this.context, paramString));
  }
  
  public void displayMessenger()
  {
    if (noUserRegistered())
    {
      logErrorAndOpenInbox("The messenger was opened but there was no user registered on this device.Please call registerUnidentifiedUser() or registerIdentifiedUser(Registration).");
      return;
    }
    new LauncherOpenBehaviour(this.appConfigProvider, this.store, LauncherOpenBehaviour.LauncherType.CUSTOM, this.metricTracker).openMessenger(this.context);
  }
  
  public int getUnreadConversationCount()
  {
    return ((State)this.store.state()).unreadConversationIds().size();
  }
  
  public void handlePushMessage()
  {
    handlePushMessage(null);
  }
  
  public void handlePushMessage(TaskStackBuilder paramTaskStackBuilder)
  {
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences("INTERCOM_SDK_PUSH_PREFS", 0);
    String str = localSharedPreferences.getString("intercom_push_notification_path", "");
    if (TextUtils.isEmpty(str))
    {
      this.twig.internal("No Uri found");
      return;
    }
    openIntercomChatPush(str, paramTaskStackBuilder);
    localSharedPreferences.edit().clear().apply();
  }
  
  public void hideMessenger()
  {
    this.activityFinisher.finishActivities();
  }
  
  public void logEvent(String paramString)
  {
    logEventWithValidation(paramString, Collections.emptyMap());
  }
  
  public void logEvent(String paramString, Map<String, ?> paramMap)
  {
    Object localObject;
    if (paramMap == null)
    {
      this.twig.i("The metadata provided is null, logging event with no metadata", new Object[0]);
      localObject = new HashMap();
    }
    for (;;)
    {
      logEventWithValidation(paramString, (Map)localObject);
      return;
      localObject = paramMap;
      if (paramMap.isEmpty())
      {
        this.twig.i("The metadata provided is empty, logging event with no metadata", new Object[0]);
        localObject = paramMap;
      }
    }
  }
  
  public void logout()
  {
    if (!this.userIdentity.isSoftReset()) {
      this.resetManager.softReset();
    }
  }
  
  public void registerIdentifiedUser(Registration paramRegistration)
  {
    if (paramRegistration == null)
    {
      this.twig.e("The registration object you passed to is null. An example successful call is registerIdentifiedUser(Registration.create().withEmail(email));", new Object[0]);
      return;
    }
    if (userIsRegistered(paramRegistration))
    {
      softRegister();
      return;
    }
    this.resetManager.hardReset();
    if (this.userIdentity.canRegisterIdentifiedUser(paramRegistration))
    {
      this.userIdentity.registerIdentifiedUser(paramRegistration);
      this.nexusClient.disconnect();
      boolean bool;
      Boolean localBoolean1;
      Boolean localBoolean2;
      if (!((Boolean)this.store.select(Selectors.SESSION_STARTED_SINCE_LAST_BACKGROUNDED)).booleanValue())
      {
        bool = true;
        localBoolean1 = Boolean.valueOf(bool);
        localBoolean2 = (Boolean)this.store.select(Selectors.APP_IS_BACKGROUNDED);
        if (paramRegistration.getAttributes() == null) {
          break label160;
        }
      }
      label160:
      for (paramRegistration = new UserUpdateRequest(localBoolean1.booleanValue(), localBoolean2.booleanValue(), paramRegistration.getAttributes().toMap(), true);; paramRegistration = new UserUpdateRequest(localBoolean1.booleanValue(), localBoolean2.booleanValue(), true))
      {
        ((UserUpdateBatcher)this.userUpdateBatcher.get()).updateUser(paramRegistration);
        return;
        bool = false;
        break;
      }
    }
    if (this.userIdentity.registrationHasAttributes(paramRegistration))
    {
      this.twig.i("We already have a registered user. Updating this user with the attributes provided.", new Object[0]);
      updateUser(paramRegistration.getAttributes());
      return;
    }
    this.twig.i("Failed to register user. We already have a registered user. If you are attempting to register a new user, call logout() before this.", new Object[0]);
  }
  
  public void registerUnidentifiedUser()
  {
    if (this.userIdentity.canRegisterUnidentifiedUser())
    {
      this.resetManager.hardReset();
      this.userIdentity.registerUnidentifiedUser();
      this.nexusClient.disconnect();
      Boolean localBoolean = (Boolean)this.store.select(Selectors.APP_IS_BACKGROUNDED);
      if (!((Boolean)this.store.select(Selectors.SESSION_STARTED_SINCE_LAST_BACKGROUNDED)).booleanValue()) {}
      for (boolean bool = true;; bool = false)
      {
        ((UserUpdateBatcher)this.userUpdateBatcher.get()).updateUser(new UserUpdateRequest(Boolean.valueOf(bool).booleanValue(), localBoolean.booleanValue(), true));
        return;
      }
    }
    this.twig.i("Failed to register user. We already have a registered user. If you are attempting to register a new user, call logout() before this. If you are attempting to register an identified user call: registerIdentifiedUser(Registration)", new Object[0]);
  }
  
  public void removeUnreadConversationCountListener(UnreadConversationCountListener paramUnreadConversationCountListener)
  {
    this.unreadCountTracker.removeListener(paramUnreadConversationCountListener);
  }
  
  public void reset()
  {
    logout();
  }
  
  public void setBottomPadding(int paramInt)
  {
    this.store.dispatch(Actions.setBottomPadding(paramInt));
  }
  
  public void setInAppMessageVisibility(Intercom.Visibility paramVisibility)
  {
    this.store.dispatch(Actions.setInAppNotificationVisibility(paramVisibility));
  }
  
  public void setLauncherVisibility(Intercom.Visibility paramVisibility)
  {
    this.store.dispatch(Actions.setLauncherVisibility(paramVisibility));
  }
  
  public void setUserHash(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      this.twig.w("The user hash you sent us to verify was either null or empty, we will not be able to authenticate your requests without a valid user hash.", new Object[0]);
      return;
    }
    if (this.userIdentity.getHmac().equals(paramString))
    {
      this.twig.i("The user hash set matches the existing user identity hash value", new Object[0]);
      return;
    }
    if (this.userIdentity.softUserIdentityHmacDiffers(paramString)) {
      this.resetManager.hardReset();
    }
    this.userIdentity.setUserHash(paramString);
  }
  
  public void updateUser(UserAttributes paramUserAttributes)
  {
    if (paramUserAttributes == null)
    {
      this.twig.e("updateUser method failed: the UserAttributes object provided is null", new Object[0]);
      return;
    }
    performUpdate(paramUserAttributes.toMap());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/RealIntercom.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */