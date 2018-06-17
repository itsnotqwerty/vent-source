package io.intercom.android.sdk.push;

import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build.VERSION;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class SystemNotificationManager
{
  static final String ACTIONS_CHANNEL = "intercom_actions_channel";
  static final String CHAT_REPLIES_CHANNEL = "intercom_chat_replies_channel";
  static final String NEW_CHATS_CHANNEL = "intercom_new_chats_channel";
  private static final int NOTIFICATION_ID = 9999997;
  private final NotificationManager androidNotificationManager;
  final List<PushPayload> receivedPayloads = Collections.synchronizedList(new ArrayList());
  private final SystemNotificationFactory systemNotificationFactory;
  private final Twig twig = LumberMill.getLogger();
  
  public SystemNotificationManager(NotificationManager paramNotificationManager)
  {
    this(paramNotificationManager, new SystemNotificationFactory());
  }
  
  SystemNotificationManager(NotificationManager paramNotificationManager, SystemNotificationFactory paramSystemNotificationFactory)
  {
    this.androidNotificationManager = paramNotificationManager;
    this.systemNotificationFactory = paramSystemNotificationFactory;
  }
  
  @TargetApi(26)
  private void setUpNotificationChannels()
  {
    NotificationChannel localNotificationChannel1 = new NotificationChannel("intercom_chat_replies_channel", "Chat replies", 4);
    localNotificationChannel1.setDescription("Reply notifications from chats in this app");
    NotificationChannel localNotificationChannel2 = new NotificationChannel("intercom_new_chats_channel", "New chats", 4);
    localNotificationChannel2.setDescription("New chat messages sent from this app");
    NotificationChannel localNotificationChannel3 = new NotificationChannel("intercom_actions_channel", "Actions", 4);
    localNotificationChannel3.setDescription("Contain links to take an action in this app");
    this.androidNotificationManager.createNotificationChannels(Arrays.asList(new NotificationChannel[] { localNotificationChannel1, localNotificationChannel2, localNotificationChannel3 }));
  }
  
  public void clear()
  {
    if (!this.receivedPayloads.isEmpty()) {
      this.twig.i("Removing Intercom push notifications.", new Object[0]);
    }
    this.androidNotificationManager.cancel(9999997);
    this.receivedPayloads.clear();
  }
  
  void createNotification(PushPayload paramPushPayload, Context paramContext, AppConfig paramAppConfig)
  {
    if (this.receivedPayloads.contains(paramPushPayload)) {
      return;
    }
    this.receivedPayloads.add(paramPushPayload);
    if (this.receivedPayloads.size() == 1) {}
    for (paramPushPayload = this.systemNotificationFactory.createSingleNotification(paramPushPayload, paramContext, paramAppConfig);; paramPushPayload = this.systemNotificationFactory.createGroupedNotification(this.receivedPayloads, paramContext))
    {
      this.androidNotificationManager.notify(9999997, paramPushPayload);
      return;
    }
  }
  
  void createPushOnlyNotification(PushPayload paramPushPayload, Context paramContext)
  {
    paramContext = this.systemNotificationFactory.createPushOnlyNotification(paramPushPayload, paramContext);
    paramPushPayload = paramPushPayload.getPushOnlyConversationId();
    this.androidNotificationManager.notify(paramPushPayload, paramPushPayload.hashCode(), paramContext);
  }
  
  public void deleteNotificationChannels()
  {
    if (Build.VERSION.SDK_INT >= 26)
    {
      this.androidNotificationManager.deleteNotificationChannel("intercom_chat_replies_channel");
      this.androidNotificationManager.deleteNotificationChannel("intercom_new_chats_channel");
      this.androidNotificationManager.deleteNotificationChannel("intercom_actions_channel");
    }
  }
  
  public void setUpNotificationChannelsIfSupported()
  {
    if (Build.VERSION.SDK_INT >= 26) {
      setUpNotificationChannels();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/push/SystemNotificationManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */