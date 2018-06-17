package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a.c;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

final class v
  extends r
  implements SubMenu
{
  v(Context paramContext, c paramc)
  {
    super(paramContext, paramc);
  }
  
  public final void clearHeader()
  {
    ((c)this.Ra).clearHeader();
  }
  
  public final MenuItem getItem()
  {
    return b(((c)this.Ra).getItem());
  }
  
  public final SubMenu setHeaderIcon(int paramInt)
  {
    ((c)this.Ra).setHeaderIcon(paramInt);
    return this;
  }
  
  public final SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    ((c)this.Ra).setHeaderIcon(paramDrawable);
    return this;
  }
  
  public final SubMenu setHeaderTitle(int paramInt)
  {
    ((c)this.Ra).setHeaderTitle(paramInt);
    return this;
  }
  
  public final SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    ((c)this.Ra).setHeaderTitle(paramCharSequence);
    return this;
  }
  
  public final SubMenu setHeaderView(View paramView)
  {
    ((c)this.Ra).setHeaderView(paramView);
    return this;
  }
  
  public final SubMenu setIcon(int paramInt)
  {
    ((c)this.Ra).setIcon(paramInt);
    return this;
  }
  
  public final SubMenu setIcon(Drawable paramDrawable)
  {
    ((c)this.Ra).setIcon(paramDrawable);
    return this;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */