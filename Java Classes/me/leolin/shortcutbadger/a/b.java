package me.leolin.shortcutbadger.a;

import android.database.Cursor;

public final class b
{
  public static void x(Cursor paramCursor)
  {
    if ((paramCursor != null) && (!paramCursor.isClosed())) {
      paramCursor.close();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */