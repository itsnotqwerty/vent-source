package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v7.view.menu.ListMenuItemView;
import android.support.v7.view.menu.g;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.j;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

public final class ax
  extends av
  implements aw
{
  public static Method adl;
  public aw adm;
  
  static
  {
    try
    {
      adl = PopupWindow.class.getDeclaredMethod("setTouchModal", new Class[] { Boolean.TYPE });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
    }
  }
  
  public ax(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext, null, paramInt1, paramInt2);
  }
  
  final an b(Context paramContext, boolean paramBoolean)
  {
    paramContext = new a(paramContext, paramBoolean);
    paramContext.setHoverListener(this);
    return paramContext;
  }
  
  public final void b(h paramh, MenuItem paramMenuItem)
  {
    if (this.adm != null) {
      this.adm.b(paramh, paramMenuItem);
    }
  }
  
  public final void c(h paramh, MenuItem paramMenuItem)
  {
    if (this.adm != null) {
      this.adm.c(paramh, paramMenuItem);
    }
  }
  
  public static final class a
    extends an
  {
    private aw adm;
    final int adn;
    final int ado;
    private MenuItem adp;
    
    public a(Context paramContext, boolean paramBoolean)
    {
      super(paramBoolean);
      paramContext = paramContext.getResources().getConfiguration();
      if ((Build.VERSION.SDK_INT >= 17) && (1 == paramContext.getLayoutDirection()))
      {
        this.adn = 21;
        this.ado = 22;
        return;
      }
      this.adn = 22;
      this.ado = 21;
    }
    
    public final boolean onHoverEvent(MotionEvent paramMotionEvent)
    {
      Object localObject;
      int i;
      if (this.adm != null)
      {
        localObject = getAdapter();
        if (!(localObject instanceof HeaderViewListAdapter)) {
          break label166;
        }
        localObject = (HeaderViewListAdapter)localObject;
        i = ((HeaderViewListAdapter)localObject).getHeadersCount();
        localObject = (g)((HeaderViewListAdapter)localObject).getWrappedAdapter();
        if (paramMotionEvent.getAction() == 10) {
          break label178;
        }
        int j = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
        if (j == -1) {
          break label178;
        }
        i = j - i;
        if ((i < 0) || (i >= ((g)localObject).getCount())) {
          break label178;
        }
      }
      label166:
      label178:
      for (j localj = ((g)localObject).aW(i);; localj = null)
      {
        MenuItem localMenuItem = this.adp;
        if (localMenuItem != localj)
        {
          localObject = ((g)localObject).RX;
          if (localMenuItem != null) {
            this.adm.b((h)localObject, localMenuItem);
          }
          this.adp = localj;
          if (localj != null) {
            this.adm.c((h)localObject, localj);
          }
        }
        return super.onHoverEvent(paramMotionEvent);
        i = 0;
        localObject = (g)localObject;
        break;
      }
    }
    
    public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
    {
      ListMenuItemView localListMenuItemView = (ListMenuItemView)getSelectedView();
      if ((localListMenuItemView != null) && (paramInt == this.adn))
      {
        if ((localListMenuItemView.isEnabled()) && (localListMenuItemView.getItemData().hasSubMenu())) {
          performItemClick(localListMenuItemView, getSelectedItemPosition(), getSelectedItemId());
        }
        return true;
      }
      if ((localListMenuItemView != null) && (paramInt == this.ado))
      {
        setSelection(-1);
        ((g)getAdapter()).RX.I(false);
        return true;
      }
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    
    public final void setHoverListener(aw paramaw)
    {
      this.adm = paramaw;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */