package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.b;

public class NewHtcHomeBadger
  implements me.leolin.shortcutbadger.a
{
  public final List<String> LU()
  {
    return Arrays.asList(new String[] { "com.htc.launcher" });
  }
  
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws b
  {
    Intent localIntent1 = new Intent("com.htc.launcher.action.SET_NOTIFICATION");
    localIntent1.putExtra("com.htc.launcher.extra.COMPONENT", paramComponentName.flattenToShortString());
    localIntent1.putExtra("com.htc.launcher.extra.COUNT", paramInt);
    Intent localIntent2 = new Intent("com.htc.launcher.action.UPDATE_SHORTCUT");
    localIntent2.putExtra("packagename", paramComponentName.getPackageName());
    localIntent2.putExtra("count", paramInt);
    if ((me.leolin.shortcutbadger.a.a.e(paramContext, localIntent1)) || (me.leolin.shortcutbadger.a.a.e(paramContext, localIntent2)))
    {
      paramContext.sendBroadcast(localIntent1);
      paramContext.sendBroadcast(localIntent2);
      return;
    }
    throw new b("unable to resolve intent: " + localIntent2.toString());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/NewHtcHomeBadger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */