package io.intercom.android.sdk.push;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Handler;
import android.support.v4.app.aa.b;
import android.support.v4.app.aa.c;
import android.support.v4.app.aa.e;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import io.intercom.a.a.a.c;
import io.intercom.a.a.a.g.b;
import io.intercom.a.a.a.g.g;
import io.intercom.a.a.a.i.1;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.commons.utilities.DeviceUtils;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.transforms.RoundTransform;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.Phrase;
import java.util.Iterator;
import java.util.List;

class SystemNotificationFactory
{
  private static final String CONVERSATION_URI = "conversation_id=%s";
  private static final String INTERCOM_SDK_GCM = "intercom_sdk_gcm";
  private static final int LARGE_ICON_SIZE_DP = 48;
  private static final Twig twig = ;
  
  private static aa.c createBuilder(Context paramContext, Uri paramUri, String paramString, int paramInt)
  {
    Object localObject = new ComponentName(paramContext, IntercomPushBroadcastReceiver.class);
    Intent localIntent1 = new Intent("io.intercom.android.sdk.INTERCOM_PUSH_OPENED").setComponent((ComponentName)localObject);
    Intent localIntent2 = new Intent("io.intercom.android.sdk.INTERCOM_PUSH_DISMISSED").setComponent((ComponentName)localObject);
    String str = paramContext.getPackageName();
    localObject = paramContext.getPackageManager().getLaunchIntentForPackage(str);
    if (localObject == null)
    {
      paramUri = new Intent();
      twig.e("Couldn't get launch Intent for package '" + str + "' - tapping on notification will do nothing", new Object[0]);
      localIntent1.putExtra("host_app_intent", paramUri);
      localIntent2.putExtra("host_app_intent", paramUri);
      paramUri = PendingIntent.getBroadcast(paramContext, paramInt, localIntent1, 134217728);
      paramString = PendingIntent.getBroadcast(paramContext, paramInt, localIntent2, 134217728);
      if (!DeviceUtils.hasPermission(paramContext, "android.permission.VIBRATE")) {
        break label295;
      }
    }
    label295:
    for (paramInt = 2;; paramInt = 0)
    {
      paramContext = new aa.c(paramContext, (byte)0).ad(R.drawable.intercom_push_icon);
      paramContext.zS = "msg";
      paramContext = paramContext.cZ();
      paramContext.zT = ((AppConfig)Injector.get().getAppConfigProvider().get()).getBaseColor();
      paramContext = paramContext.c(((AppConfig)Injector.get().getAppConfigProvider().get()).getBaseColor(), 500, 2000);
      paramContext.zx = paramUri;
      return paramContext.a(paramString).ae(paramInt | 0x1);
      ((Intent)localObject).addCategory("android.intent.category.LAUNCHER");
      ((Intent)localObject).setData(paramUri);
      ((Intent)localObject).putExtra("intercom_push_key", "intercom_sdk_gcm");
      paramUri = (Uri)localObject;
      if (paramString == null) {
        break;
      }
      ((Intent)localObject).putExtra("push_only_convo_id", paramString);
      paramUri = (Uri)localObject;
      break;
    }
  }
  
  private Bitmap generateAvatar(PushPayload paramPushPayload, Context paramContext, AppConfig paramAppConfig)
  {
    if ((TextUtils.isEmpty(paramPushPayload.getImageUrl())) && (!TextUtils.isEmpty(paramPushPayload.getAuthorName()))) {
      return PushAvatarUtils.getNotificationInitialsBitmap(paramContext, paramPushPayload.getAuthorName(), paramAppConfig);
    }
    paramAppConfig = new BitmapDrawable(paramContext.getResources(), PushAvatarUtils.getNotificationDefaultBitmap(paramContext, paramAppConfig));
    try
    {
      int i = ScreenUtils.dpToPx(48.0F, paramContext);
      paramPushPayload = c.ca(paramContext.getApplicationContext()).HC().a(new g().p(paramAppConfig).a(new RoundTransform(), true)).aq(paramPushPayload.getImageUrl());
      paramContext = new io.intercom.a.a.a.g.e(paramPushPayload.cFu.mainHandler, i, i);
      if (io.intercom.a.a.a.i.i.JV()) {
        paramPushPayload.cFu.mainHandler.post(new i.1(paramPushPayload, paramContext));
      }
      for (;;)
      {
        return (Bitmap)paramContext.get();
        paramPushPayload.a(paramContext, paramContext);
      }
      return paramAppConfig.getBitmap();
    }
    catch (Exception paramPushPayload)
    {
      twig.d("Failed to retrieve the notification image", new Object[0]);
    }
  }
  
  private String getConversationChannelId(PushPayload paramPushPayload)
  {
    if (paramPushPayload.isFirstPart()) {
      return "intercom_new_chats_channel";
    }
    return "intercom_chat_replies_channel";
  }
  
  private CharSequence groupMessageBody(PushPayload paramPushPayload)
  {
    String str = paramPushPayload.getMessage();
    if (!TextUtils.isEmpty(str)) {
      return str;
    }
    return paramPushPayload.getAuthorName() + ": " + paramPushPayload.getBody();
  }
  
  Notification createGroupedNotification(List<PushPayload> paramList, Context paramContext)
  {
    Uri localUri = Uri.parse("intercom_sdk/multiple_notifications");
    if (paramList.size() == 1) {}
    aa.e locale;
    for (Object localObject = paramContext.getString(R.string.intercom_one_new_message);; localObject = Phrase.from(paramContext, R.string.intercom_new_messages).put("n", paramList.size()).format())
    {
      locale = new aa.e();
      locale.h(paramContext.getString(R.string.intercom_new_notifications));
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        PushPayload localPushPayload = (PushPayload)localIterator.next();
        SpannableString localSpannableString = new SpannableString(groupMessageBody(localPushPayload));
        localSpannableString.setSpan(new StyleSpan(1), 0, localPushPayload.getAuthorName().length(), 33);
        locale.i(localSpannableString);
      }
    }
    paramContext = createBuilder(paramContext, localUri, null, -1).d(paramContext.getString(R.string.intercom_new_notifications)).e((CharSequence)localObject);
    paramContext.zY = getConversationChannelId((PushPayload)paramList.get(paramList.size() - 1));
    paramContext.zD = ((PushPayload)paramList.get(paramList.size() - 1)).getPriority();
    return paramContext.a(locale).build();
  }
  
  Notification createPushOnlyNotification(PushPayload paramPushPayload, Context paramContext)
  {
    String str = paramPushPayload.getPushOnlyConversationId();
    paramContext = createBuilder(paramContext, Uri.parse(paramPushPayload.getUri()), str, str.hashCode()).d(getTitle(paramContext, paramPushPayload)).e(paramPushPayload.messageOrBody());
    paramContext.zD = paramPushPayload.getPriority();
    paramContext.zY = "intercom_actions_channel";
    return paramContext.a(new aa.b().c(paramPushPayload.messageOrBody())).build();
  }
  
  Notification createSingleNotification(PushPayload paramPushPayload, Context paramContext, AppConfig paramAppConfig)
  {
    aa.c localc = createBuilder(paramContext, Uri.parse(String.format("intercom_sdk/conversation_id=%s", new Object[] { paramPushPayload.getConversationId() })), null, -1).d(getTitle(paramContext, paramPushPayload)).e(paramPushPayload.getBody());
    localc.zY = getConversationChannelId(paramPushPayload);
    localc.zD = paramPushPayload.getPriority();
    localc.zA = generateAvatar(paramPushPayload, paramContext, paramAppConfig);
    return localc.a(new aa.b().c(paramPushPayload.getBody())).build();
  }
  
  @SuppressLint({"PrivateResource"})
  CharSequence getTitle(Context paramContext, PushPayload paramPushPayload)
  {
    String str = paramPushPayload.getTitle();
    if (!str.isEmpty()) {
      paramContext = str;
    }
    do
    {
      return paramContext;
      str = paramPushPayload.getAuthorName();
      paramPushPayload = paramPushPayload.getAppName();
      if ((!str.isEmpty()) && (!paramPushPayload.isEmpty())) {
        return Phrase.from(paramContext, R.string.intercom_teammate_from_company).put("name", str).put("company", paramPushPayload).format();
      }
      paramContext = paramPushPayload;
    } while (str.isEmpty());
    return str;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/push/SystemNotificationFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */