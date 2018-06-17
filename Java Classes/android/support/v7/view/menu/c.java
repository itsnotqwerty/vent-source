package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.b.a.b;
import android.support.v4.g.a;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Map;

abstract class c<T>
  extends d<T>
{
  Map<b, MenuItem> QY;
  Map<android.support.v4.b.a.c, SubMenu> QZ;
  final Context mContext;
  
  c(Context paramContext, T paramT)
  {
    super(paramT);
    this.mContext = paramContext;
  }
  
  final SubMenu a(SubMenu paramSubMenu)
  {
    if ((paramSubMenu instanceof android.support.v4.b.a.c))
    {
      android.support.v4.b.a.c localc = (android.support.v4.b.a.c)paramSubMenu;
      if (this.QZ == null) {
        this.QZ = new a();
      }
      SubMenu localSubMenu = (SubMenu)this.QZ.get(localc);
      paramSubMenu = localSubMenu;
      if (localSubMenu == null)
      {
        paramSubMenu = new v(this.mContext, localc);
        this.QZ.put(localc, paramSubMenu);
      }
      return paramSubMenu;
    }
    return paramSubMenu;
  }
  
  final MenuItem b(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b))
    {
      b localb = (b)paramMenuItem;
      if (this.QY == null) {
        this.QY = new a();
      }
      MenuItem localMenuItem = (MenuItem)this.QY.get(paramMenuItem);
      paramMenuItem = localMenuItem;
      if (localMenuItem == null)
      {
        paramMenuItem = q.a(this.mContext, localb);
        this.QY.put(localb, paramMenuItem);
      }
      return paramMenuItem;
    }
    return paramMenuItem;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */