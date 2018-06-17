package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.b;

public class DefaultBadger
  implements me.leolin.shortcutbadger.a
{
  static boolean cg(Context paramContext)
  {
    return me.leolin.shortcutbadger.a.a.e(paramContext, new Intent("android.intent.action.BADGE_COUNT_UPDATE"));
  }
  
  public final List<String> LU()
  {
    return Arrays.asList(new String[] { "fr.neamar.kiss", "com.quaap.launchtime", "com.quaap.launchtime_official" });
  }
  
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws b
  {
    Intent localIntent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
    localIntent.putExtra("badge_count", paramInt);
    localIntent.putExtra("badge_count_package_name", paramComponentName.getPackageName());
    localIntent.putExtra("badge_count_class_name", paramComponentName.getClassName());
    if (me.leolin.shortcutbadger.a.a.e(paramContext, localIntent))
    {
      paramContext.sendBroadcast(localIntent);
      return;
    }
    throw new b("unable to resolve intent: " + localIntent.toString());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/DefaultBadger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */