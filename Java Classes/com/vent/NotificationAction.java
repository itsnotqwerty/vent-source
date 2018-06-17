package com.vent;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.vent.a.m;
import com.vent.d.f;

public final class NotificationAction
  extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (TextUtils.equals(paramIntent.getAction(), "com.vent.DISMISS"))
    {
      paramIntent = new m(paramIntent.getStringExtra("notification_id"));
      paramContext = (NotificationManager)paramContext.getSystemService("notification");
      if (paramContext != null) {
        paramContext.cancel(paramIntent.toString().hashCode());
      }
      f.a(null, paramIntent);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/NotificationAction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */