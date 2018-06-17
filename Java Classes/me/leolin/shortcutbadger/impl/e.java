package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.a;

public class e
  implements a
{
  private static final String[] cVS = { "_id", "class" };
  private DefaultBadger cVT;
  
  public e()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      this.cVT = new DefaultBadger();
    }
  }
  
  private static ContentValues a(ComponentName paramComponentName, int paramInt, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramBoolean)
    {
      localContentValues.put("package", paramComponentName.getPackageName());
      localContentValues.put("class", paramComponentName.getClassName());
    }
    localContentValues.put("badgecount", Integer.valueOf(paramInt));
    return localContentValues;
  }
  
  public final List<String> LU()
  {
    return Arrays.asList(new String[] { "com.sec.android.app.launcher", "com.sec.android.app.twlauncher" });
  }
  
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws me.leolin.shortcutbadger.b
  {
    if ((this.cVT != null) && (DefaultBadger.cg(paramContext)))
    {
      this.cVT.a(paramContext, paramComponentName, paramInt);
      return;
    }
    Uri localUri = Uri.parse("content://com.sec.badge/apps?notify=true");
    ContentResolver localContentResolver = paramContext.getContentResolver();
    try
    {
      paramContext = localContentResolver.query(localUri, cVS, "package=?", new String[] { paramComponentName.getPackageName() }, null);
      if (paramContext != null) {}
      String str;
      int i;
      int j;
      me.leolin.shortcutbadger.a.b.x(paramComponentName);
    }
    finally
    {
      try
      {
        str = paramComponentName.getClassName();
        i = 0;
        while (paramContext.moveToNext())
        {
          j = paramContext.getInt(0);
          localContentResolver.update(localUri, a(paramComponentName, paramInt, false), "_id=?", new String[] { String.valueOf(j) });
          if (str.equals(paramContext.getString(paramContext.getColumnIndex("class")))) {
            i = 1;
          }
        }
        if (i == 0) {
          localContentResolver.insert(localUri, a(paramComponentName, paramInt, true));
        }
        me.leolin.shortcutbadger.a.b.x(paramContext);
        return;
      }
      finally
      {
        for (;;)
        {
          paramComponentName = paramContext;
          paramContext = (Context)localObject;
        }
      }
      paramContext = finally;
      paramComponentName = null;
    }
    throw paramContext;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */