package android.support.v4.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public abstract class c
{
  public a Fc;
  public b Fd;
  private final Context mContext;
  
  public c(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  public void a(b paramb)
  {
    if (this.Fd != null) {
      Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
    }
    this.Fd = paramb;
  }
  
  public boolean hasSubMenu()
  {
    return false;
  }
  
  public boolean isVisible()
  {
    return true;
  }
  
  public abstract View onCreateActionView();
  
  public View onCreateActionView(MenuItem paramMenuItem)
  {
    return onCreateActionView();
  }
  
  public boolean onPerformDefaultAction()
  {
    return false;
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu) {}
  
  public boolean overridesItemVisibility()
  {
    return false;
  }
  
  public final void t(boolean paramBoolean)
  {
    if (this.Fc != null) {
      this.Fc.u(paramBoolean);
    }
  }
  
  public static abstract interface a
  {
    public abstract void u(boolean paramBoolean);
  }
  
  public static abstract interface b
  {
    public abstract void dL();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */