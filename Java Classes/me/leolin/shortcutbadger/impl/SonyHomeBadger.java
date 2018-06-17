package me.leolin.shortcutbadger.impl;

import android.content.AsyncQueryHandler;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Looper;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.a;
import me.leolin.shortcutbadger.b;

public class SonyHomeBadger
  implements a
{
  private final Uri cVU = Uri.parse("content://com.sonymobile.home.resourceprovider/badge");
  private AsyncQueryHandler cVV;
  
  public final List<String> LU()
  {
    return Arrays.asList(new String[] { "com.sonyericsson.home", "com.sonymobile.home" });
  }
  
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws b
  {
    boolean bool = true;
    if (paramContext.getPackageManager().resolveContentProvider("com.sonymobile.home.resourceprovider", 0) != null) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        if (paramInt >= 0)
        {
          localObject = new ContentValues();
          ((ContentValues)localObject).put("badge_count", Integer.valueOf(paramInt));
          ((ContentValues)localObject).put("package_name", paramComponentName.getPackageName());
          ((ContentValues)localObject).put("activity_name", paramComponentName.getClassName());
          if (Looper.myLooper() == Looper.getMainLooper())
          {
            if (this.cVV == null) {
              this.cVV = new AsyncQueryHandler(paramContext.getApplicationContext().getContentResolver()) {};
            }
            this.cVV.startInsert(0, null, this.cVU, (ContentValues)localObject);
          }
        }
        else
        {
          return;
        }
        paramContext.getApplicationContext().getContentResolver().insert(this.cVU, (ContentValues)localObject);
        return;
      }
      Object localObject = new Intent("com.sonyericsson.home.action.UPDATE_BADGE");
      ((Intent)localObject).putExtra("com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME", paramComponentName.getPackageName());
      ((Intent)localObject).putExtra("com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME", paramComponentName.getClassName());
      ((Intent)localObject).putExtra("com.sonyericsson.home.intent.extra.badge.MESSAGE", String.valueOf(paramInt));
      if (paramInt > 0) {}
      for (;;)
      {
        ((Intent)localObject).putExtra("com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE", bool);
        paramContext.sendBroadcast((Intent)localObject);
        return;
        bool = false;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/SonyHomeBadger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */