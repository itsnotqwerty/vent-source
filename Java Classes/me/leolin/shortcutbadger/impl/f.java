package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.a;
import me.leolin.shortcutbadger.b;

public class f
  implements a
{
  public final List<String> LU()
  {
    return Arrays.asList(new String[] { "com.vivo.launcher" });
  }
  
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws b
  {
    Intent localIntent = new Intent("launcher.action.CHANGE_APPLICATION_NOTIFICATION_NUM");
    localIntent.putExtra("packageName", paramContext.getPackageName());
    localIntent.putExtra("className", paramComponentName.getClassName());
    localIntent.putExtra("notificationNum", paramInt);
    paramContext.sendBroadcast(localIntent);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */