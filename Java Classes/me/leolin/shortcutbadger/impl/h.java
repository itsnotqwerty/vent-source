package me.leolin.shortcutbadger.impl;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.a;
import me.leolin.shortcutbadger.b;

public class h
  implements a
{
  private final Uri CONTENT_URI = Uri.parse("content://com.android.badge/badge");
  
  public final List<String> LU()
  {
    return Collections.singletonList("com.zui.launcher");
  }
  
  @TargetApi(11)
  public final void a(Context paramContext, ComponentName paramComponentName, int paramInt)
    throws b
  {
    paramComponentName = new Bundle();
    paramComponentName.putInt("app_badge_count", paramInt);
    paramContext.getContentResolver().call(this.CONTENT_URI, "setAppBadgeCount", null, paramComponentName);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/impl/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */