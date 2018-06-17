package com.google.firebase.messaging;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.iid.ac;
import com.google.firebase.iid.o;
import com.google.firebase.iid.v;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;

public class FirebaseMessagingService
  extends com.google.firebase.iid.f
{
  private static final Queue<String> zzoma = new ArrayDeque(10);
  
  static void p(Bundle paramBundle)
  {
    paramBundle = paramBundle.keySet().iterator();
    while (paramBundle.hasNext())
    {
      String str = (String)paramBundle.next();
      if ((str != null) && (str.startsWith("google.c."))) {
        paramBundle.remove();
      }
    }
  }
  
  static boolean q(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return false;
    }
    return "1".equals(paramBundle.getString("google.c.a.e"));
  }
  
  public final void handleIntent(Intent paramIntent)
  {
    int k = -1;
    int j = 0;
    Object localObject2 = paramIntent.getAction();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = "";
    }
    int i;
    switch (((String)localObject1).hashCode())
    {
    default: 
      i = -1;
      switch (i)
      {
      default: 
        label58:
        paramIntent = String.valueOf(paramIntent.getAction());
        if (paramIntent.length() == 0) {}
        break;
      }
      break;
    }
    for (paramIntent = "Unknown intent action: ".concat(paramIntent);; paramIntent = new String("Unknown intent action: "))
    {
      Log.d("FirebaseMessaging", paramIntent);
      label158:
      label235:
      label404:
      do
      {
        return;
        if (!((String)localObject1).equals("com.google.android.c2dm.intent.RECEIVE")) {
          break;
        }
        i = 0;
        break label58;
        if (!((String)localObject1).equals("com.google.firebase.messaging.NOTIFICATION_DISMISS")) {
          break;
        }
        i = 1;
        break label58;
        String str = paramIntent.getStringExtra("google.message_id");
        if (TextUtils.isEmpty(str))
        {
          i = 0;
          if (i == 0)
          {
            localObject2 = paramIntent.getStringExtra("message_type");
            localObject1 = localObject2;
            if (localObject2 == null) {
              localObject1 = "gcm";
            }
            switch (((String)localObject1).hashCode())
            {
            default: 
              i = k;
              switch (i)
              {
              default: 
                paramIntent = String.valueOf(localObject1);
                if (paramIntent.length() == 0) {}
                break;
              }
              break;
            }
          }
        }
        for (paramIntent = "Received message with unknown type: ".concat(paramIntent);; paramIntent = new String("Received message with unknown type: "))
        {
          Log.w("FirebaseMessaging", paramIntent);
          while (!TextUtils.isEmpty(str))
          {
            paramIntent = new Bundle();
            paramIntent.putString("google.message_id", str);
            localObject1 = o.ao(this);
            ((o)localObject1).a(new v(((o)localObject1).uL(), paramIntent));
            return;
            if (zzoma.contains(str))
            {
              if (Log.isLoggable("FirebaseMessaging", 3))
              {
                localObject1 = String.valueOf(str);
                if (((String)localObject1).length() == 0) {
                  break label404;
                }
              }
              for (localObject1 = "Received duplicate message: ".concat((String)localObject1);; localObject1 = new String("Received duplicate message: "))
              {
                Log.d("FirebaseMessaging", (String)localObject1);
                i = 1;
                break;
              }
            }
            if (zzoma.size() >= 10) {
              zzoma.remove();
            }
            zzoma.add(str);
            i = 0;
            break label158;
            i = k;
            if (!((String)localObject1).equals("gcm")) {
              break label235;
            }
            i = 0;
            break label235;
            i = k;
            if (!((String)localObject1).equals("deleted_messages")) {
              break label235;
            }
            i = 1;
            break label235;
            i = k;
            if (!((String)localObject1).equals("send_event")) {
              break label235;
            }
            i = 2;
            break label235;
            i = k;
            if (!((String)localObject1).equals("send_error")) {
              break label235;
            }
            i = 3;
            break label235;
            if (q(paramIntent.getExtras()))
            {
              localObject1 = paramIntent.getStringExtra("google.c.a.abt");
              if (localObject1 != null) {
                f.a(this, "fcm", Base64.decode((String)localObject1, 0), new e());
              }
              g.a(this, "_nr", paramIntent);
            }
            localObject2 = paramIntent.getExtras();
            localObject1 = localObject2;
            if (localObject2 == null) {
              localObject1 = new Bundle();
            }
            ((Bundle)localObject1).remove("android.support.content.wakelockid");
            if (!"1".equals(d.c((Bundle)localObject1, "gcm.n.e")))
            {
              i = j;
              if (d.c((Bundle)localObject1, "gcm.n.icon") == null) {}
            }
            else
            {
              i = 1;
            }
            if (i != 0)
            {
              if (d.ap(this).r((Bundle)localObject1)) {
                continue;
              }
              if (q((Bundle)localObject1)) {
                g.a(this, "_nf", paramIntent);
              }
            }
            onMessageReceived(new b((Bundle)localObject1));
            continue;
            onDeletedMessages();
            continue;
            onMessageSent(paramIntent.getStringExtra("google.message_id"));
            continue;
            localObject2 = paramIntent.getStringExtra("google.message_id");
            localObject1 = localObject2;
            if (localObject2 == null) {
              localObject1 = paramIntent.getStringExtra("message_id");
            }
            onSendError((String)localObject1, new c(paramIntent.getStringExtra("error")));
          }
        }
      } while (!q(paramIntent.getExtras()));
      g.a(this, "_nd", paramIntent);
      return;
    }
  }
  
  public void onDeletedMessages() {}
  
  public void onMessageReceived(b paramb) {}
  
  public void onMessageSent(String paramString) {}
  
  public void onSendError(String paramString, Exception paramException) {}
  
  protected final Intent zzp(Intent paramIntent)
  {
    return (Intent)ac.uW().bfU.poll();
  }
  
  public final boolean zzq(Intent paramIntent)
  {
    if ("com.google.firebase.messaging.NOTIFICATION_OPEN".equals(paramIntent.getAction()))
    {
      Object localObject = (PendingIntent)paramIntent.getParcelableExtra("pending_intent");
      if (localObject != null) {}
      try
      {
        ((PendingIntent)localObject).send();
        if (q(paramIntent.getExtras()))
        {
          if (paramIntent != null)
          {
            if (!"1".equals(paramIntent.getStringExtra("google.c.a.tc"))) {
              break label192;
            }
            localObject = g.aq(this);
            if (Log.isLoggable("FirebaseMessaging", 3)) {
              Log.d("FirebaseMessaging", "Received event with track-conversion=true. Setting user property and reengagement event");
            }
            if (localObject != null)
            {
              String str = paramIntent.getStringExtra("google.c.a.c_id");
              ((AppMeasurement)localObject).setUserPropertyInternal("fcm", "_ln", str);
              Bundle localBundle = new Bundle();
              localBundle.putString("source", "Firebase");
              localBundle.putString("medium", "notification");
              localBundle.putString("campaign", str);
              ((AppMeasurement)localObject).logEventInternal("fcm", "_cmp", localBundle);
            }
          }
          else
          {
            g.a(this, "_no", paramIntent);
          }
        }
        else {
          return true;
        }
      }
      catch (PendingIntent.CanceledException localCanceledException)
      {
        for (;;)
        {
          Log.e("FirebaseMessaging", "Notification pending intent canceled");
          continue;
          Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
          continue;
          label192:
          if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Received event with track-conversion=false. Do not set user property");
          }
        }
      }
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/messaging/FirebaseMessagingService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */