package me.leolin.shortcutbadger.impl;

import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.b;

@Deprecated
public class XiaomiHomeBadger
  implements me.leolin.shortcutbadger.a
{
  private ResolveInfo resolveInfo;
  
  public final List<String> LU()
  {
    return Arrays.asList(new String[] { "com.miui.miuilite", "com.miui.home", "com.miui.miuihome", "com.miui.miuihome2", "com.miui.mihome", "com.miui.mihome2", "com.i.miui.launcher" });
  }
  
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws b
  {
    for (;;)
    {
      try
      {
        localObject2 = Class.forName("android.app.MiuiNotification").newInstance();
        localField = localObject2.getClass().getDeclaredField("messageCount");
        localField.setAccessible(true);
        if (paramInt == 0) {
          localObject1 = "";
        }
      }
      catch (Exception localException2)
      {
        Object localObject2;
        Field localField;
        Object localObject1;
        localIntent = new Intent("android.intent.action.APPLICATION_MESSAGE_UPDATE");
        localIntent.putExtra("android.intent.extra.update_application_component_name", paramComponentName.getPackageName() + "/" + paramComponentName.getClassName());
        if (paramInt != 0) {
          continue;
        }
        paramComponentName = "";
        localIntent.putExtra("android.intent.extra.update_application_message_text", String.valueOf(paramComponentName));
        if (!me.leolin.shortcutbadger.a.a.e(paramContext, localIntent)) {
          continue;
        }
        paramContext.sendBroadcast(localIntent);
        continue;
        paramComponentName = Integer.valueOf(paramInt);
        continue;
      }
      try
      {
        localField.set(localObject2, String.valueOf(localObject1));
        if (Build.MANUFACTURER.equalsIgnoreCase("Xiaomi"))
        {
          if (this.resolveInfo == null)
          {
            paramComponentName = new Intent("android.intent.action.MAIN");
            paramComponentName.addCategory("android.intent.category.HOME");
            this.resolveInfo = paramContext.getPackageManager().resolveActivity(paramComponentName, 65536);
          }
          if (this.resolveInfo != null)
          {
            paramComponentName = (NotificationManager)paramContext.getSystemService("notification");
            paramContext = new Notification.Builder(paramContext).setContentTitle("").setContentText("").setSmallIcon(this.resolveInfo.getIconResource()).build();
          }
        }
        try
        {
          localObject1 = paramContext.getClass().getDeclaredField("extraNotification").get(paramContext);
          localObject1.getClass().getDeclaredMethod("setMessageCount", new Class[] { Integer.TYPE }).invoke(localObject1, new Object[] { Integer.valueOf(paramInt) });
          paramComponentName.notify(0, paramContext);
          return;
        }
        catch (Exception paramContext)
        {
          Intent localIntent;
          throw new b("not able to set badge", paramContext);
        }
        localObject1 = Integer.valueOf(paramInt);
      }
      catch (Exception localException1)
      {
        localField.set(localObject2, Integer.valueOf(paramInt));
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/XiaomiHomeBadger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */