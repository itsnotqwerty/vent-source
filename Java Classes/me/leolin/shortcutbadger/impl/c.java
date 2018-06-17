package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.a;
import me.leolin.shortcutbadger.b;

public class c
  implements a
{
  public final List<String> LU()
  {
    return Arrays.asList(new String[] { "com.huawei.android.launcher" });
  }
  
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws b
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("package", paramContext.getPackageName());
    localBundle.putString("class", paramComponentName.getClassName());
    localBundle.putInt("badgenumber", paramInt);
    paramContext.getContentResolver().call(Uri.parse("content://com.huawei.android.launcher.settings/badge/"), "change_badge", null, localBundle);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */