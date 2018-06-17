package com.google.firebase.messaging;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Color;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.support.v4.app.aa.b;
import android.support.v4.app.aa.c;
import android.support.v4.content.a;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.a.b;
import com.google.android.gms.common.util.l;
import com.google.firebase.iid.ac;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.MissingFormatArgumentException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;

final class d
{
  private static d bfW;
  private Bundle bfX;
  private Method bfY;
  private Method bfZ;
  private final AtomicInteger bga = new AtomicInteger((int)SystemClock.elapsedRealtime());
  private final Context mContext;
  
  private d(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
  }
  
  @TargetApi(26)
  private final Notification a(CharSequence paramCharSequence, String paramString1, int paramInt, Integer paramInteger, Uri paramUri, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, String paramString2)
  {
    Notification.Builder localBuilder = new Notification.Builder(this.mContext).setAutoCancel(true).setSmallIcon(paramInt);
    if (!TextUtils.isEmpty(paramCharSequence)) {
      localBuilder.setContentTitle(paramCharSequence);
    }
    if (!TextUtils.isEmpty(paramString1))
    {
      localBuilder.setContentText(paramString1);
      localBuilder.setStyle(new Notification.BigTextStyle().bigText(paramString1));
    }
    if (paramInteger != null) {
      localBuilder.setColor(paramInteger.intValue());
    }
    if (paramUri != null) {
      localBuilder.setSound(paramUri);
    }
    if (paramPendingIntent1 != null) {
      localBuilder.setContentIntent(paramPendingIntent1);
    }
    if (paramPendingIntent2 != null) {
      localBuilder.setDeleteIntent(paramPendingIntent2);
    }
    if (paramString2 != null)
    {
      if (this.bfY == null) {
        this.bfY = dh("setChannelId");
      }
      if (this.bfY == null) {
        this.bfY = dh("setChannel");
      }
      if (this.bfY != null) {
        break label179;
      }
      Log.e("FirebaseMessaging", "Error while setting the notification channel");
    }
    for (;;)
    {
      return localBuilder.build();
      try
      {
        label179:
        this.bfY.invoke(localBuilder, new Object[] { paramString2 });
      }
      catch (IllegalAccessException paramCharSequence)
      {
        Log.e("FirebaseMessaging", "Error while setting the notification channel", paramCharSequence);
      }
      catch (InvocationTargetException paramCharSequence)
      {
        Log.e("FirebaseMessaging", "Error while setting the notification channel", paramCharSequence);
      }
      catch (SecurityException paramCharSequence)
      {
        Log.e("FirebaseMessaging", "Error while setting the notification channel", paramCharSequence);
      }
      catch (IllegalArgumentException paramCharSequence)
      {
        Log.e("FirebaseMessaging", "Error while setting the notification channel", paramCharSequence);
      }
    }
  }
  
  private static void a(Intent paramIntent, Bundle paramBundle)
  {
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if ((str.startsWith("google.c.a.")) || (str.equals("from"))) {
        paramIntent.putExtra(str, paramBundle.getString(str));
      }
    }
  }
  
  static d ap(Context paramContext)
  {
    try
    {
      if (bfW == null) {
        bfW = new d(paramContext);
      }
      paramContext = bfW;
      return paramContext;
    }
    finally {}
  }
  
  static String c(Bundle paramBundle, String paramString)
  {
    String str2 = paramBundle.getString(paramString);
    String str1 = str2;
    if (str2 == null) {
      str1 = paramBundle.getString(paramString.replace("gcm.n.", "gcm.notification."));
    }
    return str1;
  }
  
  private static Object[] d(Bundle paramBundle, String paramString)
  {
    Object localObject = String.valueOf(paramString);
    String str = String.valueOf("_loc_args");
    if (str.length() != 0)
    {
      localObject = ((String)localObject).concat(str);
      str = c(paramBundle, (String)localObject);
      if (!TextUtils.isEmpty(str)) {
        break label58;
      }
      paramBundle = null;
    }
    for (;;)
    {
      return paramBundle;
      localObject = new String((String)localObject);
      break;
      try
      {
        label58:
        JSONArray localJSONArray = new JSONArray(str);
        localObject = new String[localJSONArray.length()];
        int i = 0;
        for (;;)
        {
          paramBundle = (Bundle)localObject;
          if (i >= localObject.length) {
            break;
          }
          localObject[i] = localJSONArray.opt(i);
          i += 1;
        }
        paramBundle = paramBundle.concat(paramString);
      }
      catch (JSONException paramBundle)
      {
        paramBundle = String.valueOf(paramString);
        paramString = String.valueOf("_loc_args");
        if (paramString.length() == 0) {}
      }
    }
    for (;;)
    {
      paramBundle = paramBundle.substring(6);
      Log.w("FirebaseMessaging", String.valueOf(paramBundle).length() + 41 + String.valueOf(str).length() + "Malformed " + paramBundle + ": " + str + "  Default value will be used.");
      return null;
      paramBundle = new String(paramBundle);
    }
  }
  
  @TargetApi(26)
  private final boolean de(int paramInt)
  {
    if (Build.VERSION.SDK_INT != 26) {}
    for (;;)
    {
      return true;
      try
      {
        if ((this.mContext.getResources().getDrawable(paramInt, null) instanceof AdaptiveIconDrawable))
        {
          Log.e("FirebaseMessaging", 77 + "Adaptive icons cannot be used in notifications. Ignoring icon id: " + paramInt);
          return false;
        }
      }
      catch (Resources.NotFoundException localNotFoundException) {}
    }
    return false;
  }
  
  @TargetApi(26)
  private static Method dh(String paramString)
  {
    try
    {
      paramString = Notification.Builder.class.getMethod(paramString, new Class[] { String.class });
      return paramString;
    }
    catch (SecurityException paramString)
    {
      return null;
    }
    catch (NoSuchMethodException paramString)
    {
      for (;;) {}
    }
  }
  
  private final Integer di(String paramString)
  {
    if (Build.VERSION.SDK_INT < 21) {}
    int i;
    do
    {
      return null;
      if (!TextUtils.isEmpty(paramString)) {
        try
        {
          i = Color.parseColor(paramString);
          return Integer.valueOf(i);
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          Log.w("FirebaseMessaging", String.valueOf(paramString).length() + 54 + "Color " + paramString + " not valid. Notification will use default color.");
        }
      }
      i = uZ().getInt("com.google.firebase.messaging.default_notification_color", 0);
    } while (i == 0);
    try
    {
      i = a.c(this.mContext, i);
      return Integer.valueOf(i);
    }
    catch (Resources.NotFoundException paramString)
    {
      Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
    }
    return null;
  }
  
  @TargetApi(26)
  private final String dj(String paramString)
  {
    Object localObject;
    if (!l.oK()) {
      localObject = null;
    }
    for (;;)
    {
      return (String)localObject;
      NotificationManager localNotificationManager = (NotificationManager)this.mContext.getSystemService(NotificationManager.class);
      try
      {
        if (this.bfZ == null) {
          this.bfZ = localNotificationManager.getClass().getMethod("getNotificationChannel", new Class[] { String.class });
        }
        if (!TextUtils.isEmpty(paramString))
        {
          localObject = paramString;
          if (this.bfZ.invoke(localNotificationManager, new Object[] { paramString }) != null) {
            continue;
          }
          Log.w("FirebaseMessaging", String.valueOf(paramString).length() + 122 + "Notification Channel requested (" + paramString + ") has not been created by the app. Manifest configuration, or default, value will be used.");
        }
        paramString = uZ().getString("com.google.firebase.messaging.default_notification_channel_id");
        if (!TextUtils.isEmpty(paramString))
        {
          localObject = paramString;
          if (this.bfZ.invoke(localNotificationManager, new Object[] { paramString }) != null) {
            continue;
          }
          Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
        }
        while (this.bfZ.invoke(localNotificationManager, new Object[] { "fcm_fallback_notification_channel" }) == null)
        {
          paramString = Class.forName("android.app.NotificationChannel");
          localObject = paramString.getConstructor(new Class[] { String.class, CharSequence.class, Integer.TYPE }).newInstance(new Object[] { "fcm_fallback_notification_channel", this.mContext.getString(a.b.fcm_fallback_notification_channel_label), Integer.valueOf(3) });
          localNotificationManager.getClass().getMethod("createNotificationChannel", new Class[] { paramString }).invoke(localNotificationManager, new Object[] { localObject });
          break;
          Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
        }
        return "fcm_fallback_notification_channel";
      }
      catch (InstantiationException paramString)
      {
        Log.e("FirebaseMessaging", "Error while setting the notification channel", paramString);
        return null;
      }
      catch (InvocationTargetException paramString)
      {
        for (;;)
        {
          Log.e("FirebaseMessaging", "Error while setting the notification channel", paramString);
        }
      }
      catch (NoSuchMethodException paramString)
      {
        for (;;)
        {
          Log.e("FirebaseMessaging", "Error while setting the notification channel", paramString);
        }
      }
      catch (IllegalAccessException paramString)
      {
        for (;;)
        {
          Log.e("FirebaseMessaging", "Error while setting the notification channel", paramString);
        }
      }
      catch (ClassNotFoundException paramString)
      {
        for (;;)
        {
          Log.e("FirebaseMessaging", "Error while setting the notification channel", paramString);
        }
      }
      catch (SecurityException paramString)
      {
        for (;;)
        {
          Log.e("FirebaseMessaging", "Error while setting the notification channel", paramString);
        }
      }
      catch (IllegalArgumentException paramString)
      {
        for (;;)
        {
          Log.e("FirebaseMessaging", "Error while setting the notification channel", paramString);
        }
      }
      catch (LinkageError paramString)
      {
        for (;;)
        {
          Log.e("FirebaseMessaging", "Error while setting the notification channel", paramString);
        }
      }
    }
  }
  
  private final String e(Bundle paramBundle, String paramString)
  {
    String str = c(paramBundle, paramString);
    if (!TextUtils.isEmpty(str)) {
      return str;
    }
    str = String.valueOf(paramString);
    Object localObject = String.valueOf("_loc_key");
    if (((String)localObject).length() != 0) {}
    for (str = str.concat((String)localObject);; str = new String(str))
    {
      str = c(paramBundle, str);
      if (!TextUtils.isEmpty(str)) {
        break;
      }
      return null;
    }
    localObject = this.mContext.getResources();
    int i = ((Resources)localObject).getIdentifier(str, "string", this.mContext.getPackageName());
    if (i == 0)
    {
      paramBundle = String.valueOf(paramString);
      paramString = String.valueOf("_loc_key");
      if (paramString.length() != 0) {}
      for (paramBundle = paramBundle.concat(paramString);; paramBundle = new String(paramBundle))
      {
        paramBundle = paramBundle.substring(6);
        Log.w("FirebaseMessaging", String.valueOf(paramBundle).length() + 49 + String.valueOf(str).length() + paramBundle + " resource not found: " + str + " Default value will be used.");
        return null;
      }
    }
    paramBundle = d(paramBundle, paramString);
    if (paramBundle == null) {
      return ((Resources)localObject).getString(i);
    }
    try
    {
      paramString = ((Resources)localObject).getString(i, paramBundle);
      return paramString;
    }
    catch (MissingFormatArgumentException paramString)
    {
      paramBundle = Arrays.toString(paramBundle);
      Log.w("FirebaseMessaging", String.valueOf(str).length() + 58 + String.valueOf(paramBundle).length() + "Missing format argument for " + str + ": " + paramBundle + " Default value will be used.", paramString);
    }
    return null;
  }
  
  private final PendingIntent s(Bundle paramBundle)
  {
    Object localObject1 = c(paramBundle, "gcm.n.click_action");
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      localObject1 = new Intent((String)localObject1);
      ((Intent)localObject1).setPackage(this.mContext.getPackageName());
      ((Intent)localObject1).setFlags(268435456);
    }
    Object localObject2;
    while (localObject1 == null)
    {
      return null;
      localObject2 = c(paramBundle, "gcm.n.link_android");
      localObject1 = localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        localObject1 = c(paramBundle, "gcm.n.link");
      }
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {}
      for (localObject1 = Uri.parse((String)localObject1);; localObject1 = null)
      {
        if (localObject1 == null) {
          break label130;
        }
        localObject2 = new Intent("android.intent.action.VIEW");
        ((Intent)localObject2).setPackage(this.mContext.getPackageName());
        ((Intent)localObject2).setData((Uri)localObject1);
        localObject1 = localObject2;
        break;
      }
      label130:
      localObject1 = this.mContext.getPackageManager().getLaunchIntentForPackage(this.mContext.getPackageName());
      if (localObject1 == null) {
        Log.w("FirebaseMessaging", "No activity found to launch app");
      }
    }
    ((Intent)localObject1).addFlags(67108864);
    paramBundle = new Bundle(paramBundle);
    FirebaseMessagingService.p(paramBundle);
    ((Intent)localObject1).putExtras(paramBundle);
    paramBundle = paramBundle.keySet().iterator();
    while (paramBundle.hasNext())
    {
      localObject2 = (String)paramBundle.next();
      if ((((String)localObject2).startsWith("gcm.n.")) || (((String)localObject2).startsWith("gcm.notification."))) {
        ((Intent)localObject1).removeExtra((String)localObject2);
      }
    }
    return PendingIntent.getActivity(this.mContext, this.bga.incrementAndGet(), (Intent)localObject1, 1073741824);
  }
  
  private final Bundle uZ()
  {
    if (this.bfX != null) {
      return this.bfX;
    }
    Object localObject = null;
    try
    {
      ApplicationInfo localApplicationInfo = this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), 128);
      localObject = localApplicationInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;) {}
    }
    if ((localObject != null) && (((ApplicationInfo)localObject).metaData != null))
    {
      this.bfX = ((ApplicationInfo)localObject).metaData;
      return this.bfX;
    }
    return Bundle.EMPTY;
  }
  
  final boolean r(Bundle paramBundle)
  {
    Object localObject4 = null;
    if ("1".equals(c(paramBundle, "gcm.n.noui"))) {
      return true;
    }
    int i;
    if (!((KeyguardManager)this.mContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode())
    {
      if (!l.oJ()) {
        SystemClock.sleep(10L);
      }
      i = Process.myPid();
      localObject1 = ((ActivityManager)this.mContext.getSystemService("activity")).getRunningAppProcesses();
      if (localObject1 != null)
      {
        localObject1 = ((List)localObject1).iterator();
        for (;;)
        {
          if (((Iterator)localObject1).hasNext())
          {
            localObject2 = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject1).next();
            if (((ActivityManager.RunningAppProcessInfo)localObject2).pid == i) {
              if (((ActivityManager.RunningAppProcessInfo)localObject2).importance == 100) {
                i = 1;
              }
            }
          }
        }
      }
    }
    while (i != 0)
    {
      return false;
      i = 0;
      continue;
      i = 0;
    }
    Object localObject1 = e(paramBundle, "gcm.n.title");
    Object localObject2 = localObject1;
    if (TextUtils.isEmpty((CharSequence)localObject1)) {
      localObject2 = this.mContext.getApplicationInfo().loadLabel(this.mContext.getPackageManager());
    }
    String str = e(paramBundle, "gcm.n.body");
    localObject1 = c(paramBundle, "gcm.n.icon");
    Object localObject3;
    Integer localInteger;
    label308:
    Object localObject5;
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      localObject3 = this.mContext.getResources();
      i = ((Resources)localObject3).getIdentifier((String)localObject1, "drawable", this.mContext.getPackageName());
      if ((i != 0) && (de(i)))
      {
        localInteger = di(c(paramBundle, "gcm.n.color"));
        localObject3 = c(paramBundle, "gcm.n.sound2");
        localObject1 = localObject3;
        if (TextUtils.isEmpty((CharSequence)localObject3)) {
          localObject1 = c(paramBundle, "gcm.n.sound");
        }
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          break label689;
        }
        localObject1 = null;
        localObject5 = s(paramBundle);
        localObject3 = localObject5;
        if (FirebaseMessagingService.q(paramBundle))
        {
          localObject3 = new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN");
          a((Intent)localObject3, paramBundle);
          ((Intent)localObject3).putExtra("pending_intent", (Parcelable)localObject5);
          localObject3 = ac.a(this.mContext, this.bga.incrementAndGet(), (Intent)localObject3);
          localObject4 = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS");
          a((Intent)localObject4, paramBundle);
          localObject4 = ac.a(this.mContext, this.bga.incrementAndGet(), (Intent)localObject4);
        }
        if ((!l.oK()) || (this.mContext.getApplicationInfo().targetSdkVersion <= 25)) {
          break label803;
        }
      }
    }
    for (localObject1 = a((CharSequence)localObject2, str, i, localInteger, (Uri)localObject1, (PendingIntent)localObject3, (PendingIntent)localObject4, dj(c(paramBundle, "gcm.n.android_channel_id")));; localObject1 = ((aa.c)localObject5).build())
    {
      localObject2 = c(paramBundle, "gcm.n.tag");
      if (Log.isLoggable("FirebaseMessaging", 3)) {
        Log.d("FirebaseMessaging", "Showing notification");
      }
      localObject3 = (NotificationManager)this.mContext.getSystemService("notification");
      paramBundle = (Bundle)localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        long l = SystemClock.uptimeMillis();
        paramBundle = 37 + "FCM-Notification:" + l;
      }
      ((NotificationManager)localObject3).notify(paramBundle, 0, (Notification)localObject1);
      return true;
      int j = ((Resources)localObject3).getIdentifier((String)localObject1, "mipmap", this.mContext.getPackageName());
      if (j != 0)
      {
        i = j;
        if (de(j)) {
          break;
        }
      }
      Log.w("FirebaseMessaging", String.valueOf(localObject1).length() + 61 + "Icon resource " + (String)localObject1 + " not found. Notification will use default icon.");
      j = uZ().getInt("com.google.firebase.messaging.default_notification_icon", 0);
      if (j != 0)
      {
        i = j;
        if (de(j)) {}
      }
      else
      {
        i = this.mContext.getApplicationInfo().icon;
      }
      if (i != 0)
      {
        j = i;
        if (de(i)) {}
      }
      else
      {
        j = 17301651;
      }
      i = j;
      break;
      label689:
      if ((!"default".equals(localObject1)) && (this.mContext.getResources().getIdentifier((String)localObject1, "raw", this.mContext.getPackageName()) != 0))
      {
        localObject3 = this.mContext.getPackageName();
        localObject1 = Uri.parse(String.valueOf(localObject3).length() + 24 + String.valueOf(localObject1).length() + "android.resource://" + (String)localObject3 + "/raw/" + (String)localObject1);
        break label308;
      }
      localObject1 = RingtoneManager.getDefaultUri(2);
      break label308;
      label803:
      localObject5 = new aa.c(this.mContext, (byte)0).cZ().ad(i);
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        ((aa.c)localObject5).d((CharSequence)localObject2);
      }
      if (!TextUtils.isEmpty(str))
      {
        ((aa.c)localObject5).e(str);
        ((aa.c)localObject5).a(new aa.b().c(str));
      }
      if (localInteger != null) {
        ((aa.c)localObject5).zT = localInteger.intValue();
      }
      if (localObject1 != null) {
        ((aa.c)localObject5).e((Uri)localObject1);
      }
      if (localObject3 != null) {
        ((aa.c)localObject5).zx = ((PendingIntent)localObject3);
      }
      if (localObject4 != null) {
        ((aa.c)localObject5).a((PendingIntent)localObject4);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/messaging/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */