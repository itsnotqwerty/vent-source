package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.a;

public class b
  implements a
{
  public final List<String> LU()
  {
    return Arrays.asList(new String[] { "me.everything.launcher" });
  }
  
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws me.leolin.shortcutbadger.b
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("package_name", paramComponentName.getPackageName());
    localContentValues.put("activity_name", paramComponentName.getClassName());
    localContentValues.put("count", Integer.valueOf(paramInt));
    paramContext.getContentResolver().insert(Uri.parse("content://me.everything.badger/apps"), localContentValues);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */