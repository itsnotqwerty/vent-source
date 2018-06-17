package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.b;

public class d
  implements me.leolin.shortcutbadger.a
{
  private int cVR = -1;
  
  public final List<String> LU()
  {
    return Collections.singletonList("com.oppo.launcher");
  }
  
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws b
  {
    if (this.cVR == paramInt) {
      return;
    }
    this.cVR = paramInt;
    if (Build.VERSION.SDK_INT >= 11) {
      try
      {
        paramComponentName = new Bundle();
        paramComponentName.putInt("app_badge_count", paramInt);
        paramContext.getContentResolver().call(Uri.parse("content://com.android.badge/badge"), "setAppBadgeCount", null, paramComponentName);
        return;
      }
      catch (Throwable paramContext)
      {
        throw new b("Unable to execute Badge By Content Provider");
      }
    }
    int i = paramInt;
    if (paramInt == 0) {
      i = -1;
    }
    Intent localIntent = new Intent("com.oppo.unsettledevent");
    localIntent.putExtra("pakeageName", paramComponentName.getPackageName());
    localIntent.putExtra("number", i);
    localIntent.putExtra("upgradeNumber", i);
    if (me.leolin.shortcutbadger.a.a.e(paramContext, localIntent))
    {
      paramContext.sendBroadcast(localIntent);
      return;
    }
    throw new b("unable to resolve intent: " + localIntent.toString());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */