package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.b;

public class ApexHomeBadger
  implements me.leolin.shortcutbadger.a
{
  public final List<String> LU()
  {
    return Arrays.asList(new String[] { "com.anddoes.launcher" });
  }
  
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws b
  {
    Intent localIntent = new Intent("com.anddoes.launcher.COUNTER_CHANGED");
    localIntent.putExtra("package", paramComponentName.getPackageName());
    localIntent.putExtra("count", paramInt);
    localIntent.putExtra("class", paramComponentName.getClassName());
    if (me.leolin.shortcutbadger.a.a.e(paramContext, localIntent))
    {
      paramContext.sendBroadcast(localIntent);
      return;
    }
    throw new b("unable to resolve intent: " + localIntent.toString());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/ApexHomeBadger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */