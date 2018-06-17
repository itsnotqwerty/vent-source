package android.support.v7.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a.b;
import android.support.v4.view.c;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;

public final class a
  implements b
{
  private Intent AI;
  private CharSequence Ch;
  private char QA;
  private int QB = 4096;
  private Drawable QC;
  private int QD = 0;
  private MenuItem.OnMenuItemClickListener QE;
  private CharSequence QF;
  private CharSequence QG;
  private PorterDuff.Mode QH = null;
  private boolean QI = false;
  private boolean QJ = false;
  private final int Qu;
  private final int Qv;
  private final int Qw;
  private CharSequence Qx;
  private char Qy;
  private int Qz = 4096;
  private ColorStateList is = null;
  private Context mContext;
  private int mFlags = 16;
  private final int yo;
  
  public a(Context paramContext, CharSequence paramCharSequence)
  {
    this.mContext = paramContext;
    this.yo = 16908332;
    this.Qu = 0;
    this.Qv = 0;
    this.Qw = 0;
    this.Ch = paramCharSequence;
  }
  
  private void eT()
  {
    if ((this.QC != null) && ((this.QI) || (this.QJ)))
    {
      this.QC = android.support.v4.a.a.a.f(this.QC);
      this.QC = this.QC.mutate();
      if (this.QI) {
        android.support.v4.a.a.a.a(this.QC, this.is);
      }
      if (this.QJ) {
        android.support.v4.a.a.a.a(this.QC, this.QH);
      }
    }
  }
  
  public final b a(c paramc)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean collapseActionView()
  {
    return false;
  }
  
  public final c di()
  {
    return null;
  }
  
  public final boolean expandActionView()
  {
    return false;
  }
  
  public final ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException();
  }
  
  public final View getActionView()
  {
    return null;
  }
  
  public final int getAlphabeticModifiers()
  {
    return this.QB;
  }
  
  public final char getAlphabeticShortcut()
  {
    return this.QA;
  }
  
  public final CharSequence getContentDescription()
  {
    return this.QF;
  }
  
  public final int getGroupId()
  {
    return this.Qu;
  }
  
  public final Drawable getIcon()
  {
    return this.QC;
  }
  
  public final ColorStateList getIconTintList()
  {
    return this.is;
  }
  
  public final PorterDuff.Mode getIconTintMode()
  {
    return this.QH;
  }
  
  public final Intent getIntent()
  {
    return this.AI;
  }
  
  public final int getItemId()
  {
    return this.yo;
  }
  
  public final ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return null;
  }
  
  public final int getNumericModifiers()
  {
    return this.Qz;
  }
  
  public final char getNumericShortcut()
  {
    return this.Qy;
  }
  
  public final int getOrder()
  {
    return this.Qw;
  }
  
  public final SubMenu getSubMenu()
  {
    return null;
  }
  
  public final CharSequence getTitle()
  {
    return this.Ch;
  }
  
  public final CharSequence getTitleCondensed()
  {
    if (this.Qx != null) {
      return this.Qx;
    }
    return this.Ch;
  }
  
  public final CharSequence getTooltipText()
  {
    return this.QG;
  }
  
  public final boolean hasSubMenu()
  {
    return false;
  }
  
  public final boolean isActionViewExpanded()
  {
    return false;
  }
  
  public final boolean isCheckable()
  {
    return (this.mFlags & 0x1) != 0;
  }
  
  public final boolean isChecked()
  {
    return (this.mFlags & 0x2) != 0;
  }
  
  public final boolean isEnabled()
  {
    return (this.mFlags & 0x10) != 0;
  }
  
  public final boolean isVisible()
  {
    return (this.mFlags & 0x8) == 0;
  }
  
  public final b j(CharSequence paramCharSequence)
  {
    this.QF = paramCharSequence;
    return this;
  }
  
  public final b k(CharSequence paramCharSequence)
  {
    this.QG = paramCharSequence;
    return this;
  }
  
  public final MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException();
  }
  
  public final MenuItem setAlphabeticShortcut(char paramChar)
  {
    this.QA = Character.toLowerCase(paramChar);
    return this;
  }
  
  public final MenuItem setAlphabeticShortcut(char paramChar, int paramInt)
  {
    this.QA = Character.toLowerCase(paramChar);
    this.QB = KeyEvent.normalizeMetaState(paramInt);
    return this;
  }
  
  public final MenuItem setCheckable(boolean paramBoolean)
  {
    int j = this.mFlags;
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      this.mFlags = (i | j & 0xFFFFFFFE);
      return this;
    }
  }
  
  public final MenuItem setChecked(boolean paramBoolean)
  {
    int j = this.mFlags;
    if (paramBoolean) {}
    for (int i = 2;; i = 0)
    {
      this.mFlags = (i | j & 0xFFFFFFFD);
      return this;
    }
  }
  
  public final MenuItem setEnabled(boolean paramBoolean)
  {
    int j = this.mFlags;
    if (paramBoolean) {}
    for (int i = 16;; i = 0)
    {
      this.mFlags = (i | j & 0xFFFFFFEF);
      return this;
    }
  }
  
  public final MenuItem setIcon(int paramInt)
  {
    this.QD = paramInt;
    this.QC = android.support.v4.content.a.a(this.mContext, paramInt);
    eT();
    return this;
  }
  
  public final MenuItem setIcon(Drawable paramDrawable)
  {
    this.QC = paramDrawable;
    this.QD = 0;
    eT();
    return this;
  }
  
  public final MenuItem setIconTintList(ColorStateList paramColorStateList)
  {
    this.is = paramColorStateList;
    this.QI = true;
    eT();
    return this;
  }
  
  public final MenuItem setIconTintMode(PorterDuff.Mode paramMode)
  {
    this.QH = paramMode;
    this.QJ = true;
    eT();
    return this;
  }
  
  public final MenuItem setIntent(Intent paramIntent)
  {
    this.AI = paramIntent;
    return this;
  }
  
  public final MenuItem setNumericShortcut(char paramChar)
  {
    this.Qy = paramChar;
    return this;
  }
  
  public final MenuItem setNumericShortcut(char paramChar, int paramInt)
  {
    this.Qy = paramChar;
    this.Qz = KeyEvent.normalizeMetaState(paramInt);
    return this;
  }
  
  public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException();
  }
  
  public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.QE = paramOnMenuItemClickListener;
    return this;
  }
  
  public final MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    this.Qy = paramChar1;
    this.QA = Character.toLowerCase(paramChar2);
    return this;
  }
  
  public final MenuItem setShortcut(char paramChar1, char paramChar2, int paramInt1, int paramInt2)
  {
    this.Qy = paramChar1;
    this.Qz = KeyEvent.normalizeMetaState(paramInt1);
    this.QA = Character.toLowerCase(paramChar2);
    this.QB = KeyEvent.normalizeMetaState(paramInt2);
    return this;
  }
  
  public final void setShowAsAction(int paramInt) {}
  
  public final MenuItem setTitle(int paramInt)
  {
    this.Ch = this.mContext.getResources().getString(paramInt);
    return this;
  }
  
  public final MenuItem setTitle(CharSequence paramCharSequence)
  {
    this.Ch = paramCharSequence;
    return this;
  }
  
  public final MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    this.Qx = paramCharSequence;
    return this;
  }
  
  public final MenuItem setVisible(boolean paramBoolean)
  {
    int j = this.mFlags;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      this.mFlags = (i | j & 0x8);
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */