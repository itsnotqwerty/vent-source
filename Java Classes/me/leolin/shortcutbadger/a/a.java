package me.leolin.shortcutbadger.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import java.util.List;

public final class a
{
  public static boolean e(Context paramContext, Intent paramIntent)
  {
    boolean bool2 = false;
    paramContext = paramContext.getPackageManager().queryBroadcastReceivers(paramIntent, 0);
    boolean bool1 = bool2;
    if (paramContext != null)
    {
      bool1 = bool2;
      if (paramContext.size() > 0) {
        bool1 = true;
      }
    }
    return bool1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */