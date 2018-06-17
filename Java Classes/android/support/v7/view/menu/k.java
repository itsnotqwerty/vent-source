package android.support.v7.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a.b;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;

public class k
  extends c<b>
  implements MenuItem
{
  public Method SL;
  
  k(Context paramContext, b paramb)
  {
    super(paramContext, paramb);
  }
  
  a a(ActionProvider paramActionProvider)
  {
    return new a(this.mContext, paramActionProvider);
  }
  
  public boolean collapseActionView()
  {
    return ((b)this.Ra).collapseActionView();
  }
  
  public boolean expandActionView()
  {
    return ((b)this.Ra).expandActionView();
  }
  
  public ActionProvider getActionProvider()
  {
    android.support.v4.view.c localc = ((b)this.Ra).di();
    if ((localc instanceof a)) {
      return ((a)localc).SM;
    }
    return null;
  }
  
  public View getActionView()
  {
    View localView2 = ((b)this.Ra).getActionView();
    View localView1 = localView2;
    if ((localView2 instanceof b)) {
      localView1 = (View)((b)localView2).SO;
    }
    return localView1;
  }
  
  public int getAlphabeticModifiers()
  {
    return ((b)this.Ra).getAlphabeticModifiers();
  }
  
  public char getAlphabeticShortcut()
  {
    return ((b)this.Ra).getAlphabeticShortcut();
  }
  
  public CharSequence getContentDescription()
  {
    return ((b)this.Ra).getContentDescription();
  }
  
  public int getGroupId()
  {
    return ((b)this.Ra).getGroupId();
  }
  
  public Drawable getIcon()
  {
    return ((b)this.Ra).getIcon();
  }
  
  public ColorStateList getIconTintList()
  {
    return ((b)this.Ra).getIconTintList();
  }
  
  public PorterDuff.Mode getIconTintMode()
  {
    return ((b)this.Ra).getIconTintMode();
  }
  
  public Intent getIntent()
  {
    return ((b)this.Ra).getIntent();
  }
  
  public int getItemId()
  {
    return ((b)this.Ra).getItemId();
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return ((b)this.Ra).getMenuInfo();
  }
  
  public int getNumericModifiers()
  {
    return ((b)this.Ra).getNumericModifiers();
  }
  
  public char getNumericShortcut()
  {
    return ((b)this.Ra).getNumericShortcut();
  }
  
  public int getOrder()
  {
    return ((b)this.Ra).getOrder();
  }
  
  public SubMenu getSubMenu()
  {
    return a(((b)this.Ra).getSubMenu());
  }
  
  public CharSequence getTitle()
  {
    return ((b)this.Ra).getTitle();
  }
  
  public CharSequence getTitleCondensed()
  {
    return ((b)this.Ra).getTitleCondensed();
  }
  
  public CharSequence getTooltipText()
  {
    return ((b)this.Ra).getTooltipText();
  }
  
  public boolean hasSubMenu()
  {
    return ((b)this.Ra).hasSubMenu();
  }
  
  public boolean isActionViewExpanded()
  {
    return ((b)this.Ra).isActionViewExpanded();
  }
  
  public boolean isCheckable()
  {
    return ((b)this.Ra).isCheckable();
  }
  
  public boolean isChecked()
  {
    return ((b)this.Ra).isChecked();
  }
  
  public boolean isEnabled()
  {
    return ((b)this.Ra).isEnabled();
  }
  
  public boolean isVisible()
  {
    return ((b)this.Ra).isVisible();
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    b localb = (b)this.Ra;
    if (paramActionProvider != null) {}
    for (paramActionProvider = a(paramActionProvider);; paramActionProvider = null)
    {
      localb.a(paramActionProvider);
      return this;
    }
  }
  
  public MenuItem setActionView(int paramInt)
  {
    ((b)this.Ra).setActionView(paramInt);
    View localView = ((b)this.Ra).getActionView();
    if ((localView instanceof CollapsibleActionView)) {
      ((b)this.Ra).setActionView(new b(localView));
    }
    return this;
  }
  
  public MenuItem setActionView(View paramView)
  {
    Object localObject = paramView;
    if ((paramView instanceof CollapsibleActionView)) {
      localObject = new b(paramView);
    }
    ((b)this.Ra).setActionView((View)localObject);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    ((b)this.Ra).setAlphabeticShortcut(paramChar);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar, int paramInt)
  {
    ((b)this.Ra).setAlphabeticShortcut(paramChar, paramInt);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    ((b)this.Ra).setCheckable(paramBoolean);
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    ((b)this.Ra).setChecked(paramBoolean);
    return this;
  }
  
  public MenuItem setContentDescription(CharSequence paramCharSequence)
  {
    ((b)this.Ra).j(paramCharSequence);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    ((b)this.Ra).setEnabled(paramBoolean);
    return this;
  }
  
  public MenuItem setIcon(int paramInt)
  {
    ((b)this.Ra).setIcon(paramInt);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    ((b)this.Ra).setIcon(paramDrawable);
    return this;
  }
  
  public MenuItem setIconTintList(ColorStateList paramColorStateList)
  {
    ((b)this.Ra).setIconTintList(paramColorStateList);
    return this;
  }
  
  public MenuItem setIconTintMode(PorterDuff.Mode paramMode)
  {
    ((b)this.Ra).setIconTintMode(paramMode);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    ((b)this.Ra).setIntent(paramIntent);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    ((b)this.Ra).setNumericShortcut(paramChar);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar, int paramInt)
  {
    ((b)this.Ra).setNumericShortcut(paramChar, paramInt);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    b localb = (b)this.Ra;
    if (paramOnActionExpandListener != null) {}
    for (paramOnActionExpandListener = new c(paramOnActionExpandListener);; paramOnActionExpandListener = null)
    {
      localb.setOnActionExpandListener(paramOnActionExpandListener);
      return this;
    }
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    b localb = (b)this.Ra;
    if (paramOnMenuItemClickListener != null) {}
    for (paramOnMenuItemClickListener = new d(paramOnMenuItemClickListener);; paramOnMenuItemClickListener = null)
    {
      localb.setOnMenuItemClickListener(paramOnMenuItemClickListener);
      return this;
    }
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    ((b)this.Ra).setShortcut(paramChar1, paramChar2);
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2, int paramInt1, int paramInt2)
  {
    ((b)this.Ra).setShortcut(paramChar1, paramChar2, paramInt1, paramInt2);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    ((b)this.Ra).setShowAsAction(paramInt);
  }
  
  public MenuItem setShowAsActionFlags(int paramInt)
  {
    ((b)this.Ra).setShowAsActionFlags(paramInt);
    return this;
  }
  
  public MenuItem setTitle(int paramInt)
  {
    ((b)this.Ra).setTitle(paramInt);
    return this;
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    ((b)this.Ra).setTitle(paramCharSequence);
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    ((b)this.Ra).setTitleCondensed(paramCharSequence);
    return this;
  }
  
  public MenuItem setTooltipText(CharSequence paramCharSequence)
  {
    ((b)this.Ra).k(paramCharSequence);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    return ((b)this.Ra).setVisible(paramBoolean);
  }
  
  class a
    extends android.support.v4.view.c
  {
    final ActionProvider SM;
    
    public a(Context paramContext, ActionProvider paramActionProvider)
    {
      super();
      this.SM = paramActionProvider;
    }
    
    public final boolean hasSubMenu()
    {
      return this.SM.hasSubMenu();
    }
    
    public final View onCreateActionView()
    {
      return this.SM.onCreateActionView();
    }
    
    public final boolean onPerformDefaultAction()
    {
      return this.SM.onPerformDefaultAction();
    }
    
    public final void onPrepareSubMenu(SubMenu paramSubMenu)
    {
      this.SM.onPrepareSubMenu(k.this.a(paramSubMenu));
    }
  }
  
  static final class b
    extends FrameLayout
    implements android.support.v7.view.c
  {
    final CollapsibleActionView SO;
    
    b(View paramView)
    {
      super();
      this.SO = ((CollapsibleActionView)paramView);
      addView(paramView);
    }
    
    public final void onActionViewCollapsed()
    {
      this.SO.onActionViewCollapsed();
    }
    
    public final void onActionViewExpanded()
    {
      this.SO.onActionViewExpanded();
    }
  }
  
  private final class c
    extends d<MenuItem.OnActionExpandListener>
    implements MenuItem.OnActionExpandListener
  {
    c(MenuItem.OnActionExpandListener paramOnActionExpandListener)
    {
      super();
    }
    
    public final boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
    {
      return ((MenuItem.OnActionExpandListener)this.Ra).onMenuItemActionCollapse(k.this.b(paramMenuItem));
    }
    
    public final boolean onMenuItemActionExpand(MenuItem paramMenuItem)
    {
      return ((MenuItem.OnActionExpandListener)this.Ra).onMenuItemActionExpand(k.this.b(paramMenuItem));
    }
  }
  
  private final class d
    extends d<MenuItem.OnMenuItemClickListener>
    implements MenuItem.OnMenuItemClickListener
  {
    d(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
    {
      super();
    }
    
    public final boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      return ((MenuItem.OnMenuItemClickListener)this.Ra).onMenuItemClick(k.this.b(paramMenuItem));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */