package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.support.v4.view.r;
import android.support.v7.view.i;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.h.a;
import android.support.v7.view.menu.o.a;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.Toolbar.c;
import android.support.v7.widget.ak;
import android.support.v7.widget.bp;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window.Callback;
import java.util.ArrayList;

final class n
  extends a
{
  ak Ol;
  boolean Om;
  Window.Callback On;
  private boolean Oo;
  private boolean Op;
  private ArrayList<Object> Oq = new ArrayList();
  private final Runnable Or = new Runnable()
  {
    public final void run()
    {
      n localn = n.this;
      Menu localMenu = localn.getMenu();
      if ((localMenu instanceof h)) {}
      for (localh = (h)localMenu;; localh = null)
      {
        if (localh != null) {
          localh.fj();
        }
        try
        {
          localMenu.clear();
          if ((!localn.On.onCreatePanelMenu(0, localMenu)) || (!localn.On.onPreparePanel(0, null, localMenu))) {
            localMenu.clear();
          }
          return;
        }
        finally
        {
          if (localh == null) {
            break;
          }
          localh.fk();
        }
      }
    }
  };
  private final Toolbar.c Os = new Toolbar.c()
  {
    public final boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
    {
      return n.this.On.onMenuItemSelected(0, paramAnonymousMenuItem);
    }
  };
  
  n(Toolbar paramToolbar, CharSequence paramCharSequence, Window.Callback paramCallback)
  {
    this.Ol = new bp(paramToolbar, false);
    this.On = new c(paramCallback);
    this.Ol.setWindowCallback(this.On);
    paramToolbar.setOnMenuItemClickListener(this.Os);
    this.Ol.setWindowTitle(paramCharSequence);
  }
  
  private void setDisplayOptions(int paramInt1, int paramInt2)
  {
    int i = this.Ol.getDisplayOptions();
    this.Ol.setDisplayOptions(i & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public final void A(boolean paramBoolean) {}
  
  public final void B(boolean paramBoolean)
  {
    if (paramBoolean == this.Op) {}
    for (;;)
    {
      return;
      this.Op = paramBoolean;
      int j = this.Oq.size();
      int i = 0;
      while (i < j)
      {
        this.Oq.get(i);
        i += 1;
      }
    }
  }
  
  public final boolean b(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 1) {
      er();
    }
    return true;
  }
  
  public final boolean collapseActionView()
  {
    if (this.Ol.hasExpandedActionView())
    {
      this.Ol.collapseActionView();
      return true;
    }
    return false;
  }
  
  public final void ep()
  {
    setDisplayOptions(2, 2);
  }
  
  public final void eq()
  {
    setDisplayOptions(0, 8);
  }
  
  public final boolean er()
  {
    return this.Ol.showOverflowMenu();
  }
  
  public final boolean es()
  {
    return this.Ol.hideOverflowMenu();
  }
  
  public final boolean et()
  {
    this.Ol.gy().removeCallbacks(this.Or);
    r.b(this.Ol.gy(), this.Or);
    return true;
  }
  
  public final int getDisplayOptions()
  {
    return this.Ol.getDisplayOptions();
  }
  
  final Menu getMenu()
  {
    if (!this.Oo)
    {
      this.Ol.setMenuCallbacks(new a(), new b());
      this.Oo = true;
    }
    return this.Ol.getMenu();
  }
  
  public final Context getThemedContext()
  {
    return this.Ol.getContext();
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  final void onDestroy()
  {
    this.Ol.gy().removeCallbacks(this.Or);
  }
  
  public final boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    Menu localMenu = getMenu();
    int i;
    if (localMenu != null)
    {
      if (paramKeyEvent == null) {
        break label61;
      }
      i = paramKeyEvent.getDeviceId();
      if (KeyCharacterMap.load(i).getKeyboardType() == 1) {
        break label66;
      }
    }
    label61:
    label66:
    for (bool = true;; bool = false)
    {
      localMenu.setQwertyMode(bool);
      bool = localMenu.performShortcut(paramInt, paramKeyEvent, 0);
      return bool;
      i = -1;
      break;
    }
  }
  
  public final void setDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 4;; i = 0)
    {
      setDisplayOptions(i, 4);
      return;
    }
  }
  
  public final void setTitle(int paramInt)
  {
    ak localak = this.Ol;
    if (paramInt != 0) {}
    for (CharSequence localCharSequence = this.Ol.getContext().getText(paramInt);; localCharSequence = null)
    {
      localak.setTitle(localCharSequence);
      return;
    }
  }
  
  public final void setTitle(CharSequence paramCharSequence)
  {
    this.Ol.setTitle(paramCharSequence);
  }
  
  public final void setWindowTitle(CharSequence paramCharSequence)
  {
    this.Ol.setWindowTitle(paramCharSequence);
  }
  
  public final void z(boolean paramBoolean) {}
  
  private final class a
    implements o.a
  {
    private boolean Nt;
    
    a() {}
    
    public final void a(h paramh, boolean paramBoolean)
    {
      if (this.Nt) {
        return;
      }
      this.Nt = true;
      n.this.Ol.dismissPopupMenus();
      if (n.this.On != null) {
        n.this.On.onPanelClosed(108, paramh);
      }
      this.Nt = false;
    }
    
    public final boolean d(h paramh)
    {
      if (n.this.On != null)
      {
        n.this.On.onMenuOpened(108, paramh);
        return true;
      }
      return false;
    }
  }
  
  private final class b
    implements h.a
  {
    b() {}
    
    public final boolean a(h paramh, MenuItem paramMenuItem)
    {
      return false;
    }
    
    public final void b(h paramh)
    {
      if (n.this.On != null)
      {
        if (!n.this.Ol.isOverflowMenuShowing()) {
          break label41;
        }
        n.this.On.onPanelClosed(108, paramh);
      }
      label41:
      while (!n.this.On.onPreparePanel(0, null, paramh)) {
        return;
      }
      n.this.On.onMenuOpened(108, paramh);
    }
  }
  
  private final class c
    extends i
  {
    public c(Window.Callback paramCallback)
    {
      super();
    }
    
    public final View onCreatePanelView(int paramInt)
    {
      if (paramInt == 0) {
        return new View(n.this.Ol.getContext());
      }
      return super.onCreatePanelView(paramInt);
    }
    
    public final boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
    {
      boolean bool = super.onPreparePanel(paramInt, paramView, paramMenu);
      if ((bool) && (!n.this.Om))
      {
        n.this.Ol.fF();
        n.this.Om = true;
      }
      return bool;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */