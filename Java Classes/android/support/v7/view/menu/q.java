package android.support.v7.view.menu;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.b.a.a;
import android.support.v4.b.a.b;
import android.view.Menu;
import android.view.MenuItem;

public final class q
{
  public static Menu a(Context paramContext, a parama)
  {
    return new r(paramContext, parama);
  }
  
  public static MenuItem a(Context paramContext, b paramb)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return new l(paramContext, paramb);
    }
    return new k(paramContext, paramb);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */