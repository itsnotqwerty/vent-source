package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.a;
import me.leolin.shortcutbadger.b;

public class NovaHomeBadger
  implements a
{
  public final List<String> LU()
  {
    return Arrays.asList(new String[] { "com.teslacoilsw.launcher" });
  }
  
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws b
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("tag", paramComponentName.getPackageName() + "/" + paramComponentName.getClassName());
    localContentValues.put("count", Integer.valueOf(paramInt));
    paramContext.getContentResolver().insert(Uri.parse("content://com.teslacoilsw.notifier/unread_count"), localContentValues);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/NovaHomeBadger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */