package android.support.v7.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.a.a.a;
import android.support.v4.view.c;
import android.support.v4.view.c.b;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;
import java.util.ArrayList;

public final class j
  implements android.support.v4.b.a.b
{
  static String SG;
  static String SH;
  static String SI;
  static String SJ;
  private Intent AI;
  private CharSequence Ch;
  h Pj;
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
  final int Qw;
  private CharSequence Qx;
  private char Qy;
  private int Qz = 4096;
  int SA = 0;
  private View SB;
  public c SC;
  private MenuItem.OnActionExpandListener SD;
  private boolean SE = false;
  ContextMenu.ContextMenuInfo SF;
  private u Sx;
  private Runnable Sy;
  private boolean Sz = false;
  private ColorStateList is = null;
  private int mFlags = 16;
  private final int yo;
  
  j(h paramh, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    this.Pj = paramh;
    this.yo = paramInt2;
    this.Qu = paramInt1;
    this.Qv = paramInt3;
    this.Qw = paramInt4;
    this.Ch = paramCharSequence;
    this.SA = paramInt5;
  }
  
  private void L(boolean paramBoolean)
  {
    int j = this.mFlags;
    int k = this.mFlags;
    if (paramBoolean) {}
    for (int i = 2;; i = 0)
    {
      this.mFlags = (i | k & 0xFFFFFFFD);
      if (j != this.mFlags) {
        this.Pj.J(false);
      }
      return;
    }
  }
  
  private android.support.v4.b.a.b av(View paramView)
  {
    this.SB = paramView;
    this.SC = null;
    if ((paramView != null) && (paramView.getId() == -1) && (this.yo > 0)) {
      paramView.setId(this.yo);
    }
    this.Pj.fm();
    return this;
  }
  
  private Drawable i(Drawable paramDrawable)
  {
    Drawable localDrawable = paramDrawable;
    if (paramDrawable != null)
    {
      localDrawable = paramDrawable;
      if (this.Sz) {
        if (!this.QI)
        {
          localDrawable = paramDrawable;
          if (!this.QJ) {}
        }
        else
        {
          localDrawable = a.f(paramDrawable).mutate();
          if (this.QI) {
            a.a(localDrawable, this.is);
          }
          if (this.QJ) {
            a.a(localDrawable, this.QH);
          }
          this.Sz = false;
        }
      }
    }
    return localDrawable;
  }
  
  public final void K(boolean paramBoolean)
  {
    int j = this.mFlags;
    if (paramBoolean) {}
    for (int i = 4;; i = 0)
    {
      this.mFlags = (i | j & 0xFFFFFFFB);
      return;
    }
  }
  
  final boolean M(boolean paramBoolean)
  {
    boolean bool = false;
    int j = this.mFlags;
    int k = this.mFlags;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      this.mFlags = (i | k & 0xFFFFFFF7);
      paramBoolean = bool;
      if (j != this.mFlags) {
        paramBoolean = true;
      }
      return paramBoolean;
    }
  }
  
  public final void N(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.mFlags |= 0x20;
      return;
    }
    this.mFlags &= 0xFFFFFFDF;
  }
  
  public final void O(boolean paramBoolean)
  {
    this.SE = paramBoolean;
    this.Pj.J(false);
  }
  
  public final android.support.v4.b.a.b a(c paramc)
  {
    if (this.SC != null)
    {
      c localc = this.SC;
      localc.Fd = null;
      localc.Fc = null;
    }
    this.SB = null;
    this.SC = paramc;
    this.Pj.J(true);
    if (this.SC != null) {
      this.SC.a(new c.b()
      {
        public final void dL()
        {
          j.this.Pj.fl();
        }
      });
    }
    return this;
  }
  
  final CharSequence a(p.a parama)
  {
    if ((parama != null) && (parama.aY())) {
      return getTitleCondensed();
    }
    return getTitle();
  }
  
  public final void b(u paramu)
  {
    this.Sx = paramu;
    paramu.setHeaderTitle(getTitle());
  }
  
  public final boolean collapseActionView()
  {
    if ((this.SA & 0x8) == 0) {}
    do
    {
      return false;
      if (this.SB == null) {
        return true;
      }
    } while ((this.SD != null) && (!this.SD.onMenuItemActionCollapse(this)));
    return this.Pj.g(this);
  }
  
  public final c di()
  {
    return this.SC;
  }
  
  public final boolean expandActionView()
  {
    if (!fy()) {}
    while ((this.SD != null) && (!this.SD.onMenuItemActionExpand(this))) {
      return false;
    }
    return this.Pj.f(this);
  }
  
  public final boolean fr()
  {
    if ((this.QE != null) && (this.QE.onMenuItemClick(this))) {}
    do
    {
      do
      {
        return true;
      } while (this.Pj.d(this.Pj, this));
      if (this.Sy != null)
      {
        this.Sy.run();
        return true;
      }
      if (this.AI != null) {
        try
        {
          this.Pj.mContext.startActivity(this.AI);
          return true;
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", localActivityNotFoundException);
        }
      }
    } while ((this.SC != null) && (this.SC.onPerformDefaultAction()));
    return false;
  }
  
  final char fs()
  {
    if (this.Pj.fh()) {
      return this.QA;
    }
    return this.Qy;
  }
  
  final boolean ft()
  {
    return (this.Pj.fi()) && (fs() != 0);
  }
  
  public final boolean fu()
  {
    return (this.mFlags & 0x4) != 0;
  }
  
  public final boolean fv()
  {
    return (this.mFlags & 0x20) == 32;
  }
  
  public final boolean fw()
  {
    return (this.SA & 0x1) == 1;
  }
  
  public final boolean fx()
  {
    return (this.SA & 0x2) == 2;
  }
  
  public final boolean fy()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((this.SA & 0x8) != 0)
    {
      if ((this.SB == null) && (this.SC != null)) {
        this.SB = this.SC.onCreateActionView(this);
      }
      bool1 = bool2;
      if (this.SB != null) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public final ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
  }
  
  public final View getActionView()
  {
    if (this.SB != null) {
      return this.SB;
    }
    if (this.SC != null)
    {
      this.SB = this.SC.onCreateActionView(this);
      return this.SB;
    }
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
    if (this.QC != null) {
      return i(this.QC);
    }
    if (this.QD != 0)
    {
      Drawable localDrawable = android.support.v7.c.a.b.a(this.Pj.mContext, this.QD);
      this.QD = 0;
      this.QC = localDrawable;
      return i(localDrawable);
    }
    return null;
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
  
  @ViewDebug.CapturedViewProperty
  public final int getItemId()
  {
    return this.yo;
  }
  
  public final ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return this.SF;
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
    return this.Qv;
  }
  
  public final SubMenu getSubMenu()
  {
    return this.Sx;
  }
  
  @ViewDebug.CapturedViewProperty
  public final CharSequence getTitle()
  {
    return this.Ch;
  }
  
  public final CharSequence getTitleCondensed()
  {
    if (this.Qx != null) {}
    for (CharSequence localCharSequence = this.Qx;; localCharSequence = this.Ch)
    {
      Object localObject = localCharSequence;
      if (Build.VERSION.SDK_INT < 18)
      {
        localObject = localCharSequence;
        if (localCharSequence != null)
        {
          localObject = localCharSequence;
          if (!(localCharSequence instanceof String)) {
            localObject = localCharSequence.toString();
          }
        }
      }
      return (CharSequence)localObject;
    }
  }
  
  public final CharSequence getTooltipText()
  {
    return this.QG;
  }
  
  public final boolean hasSubMenu()
  {
    return this.Sx != null;
  }
  
  public final boolean isActionViewExpanded()
  {
    return this.SE;
  }
  
  public final boolean isCheckable()
  {
    return (this.mFlags & 0x1) == 1;
  }
  
  public final boolean isChecked()
  {
    return (this.mFlags & 0x2) == 2;
  }
  
  public final boolean isEnabled()
  {
    return (this.mFlags & 0x10) != 0;
  }
  
  public final boolean isVisible()
  {
    if ((this.SC != null) && (this.SC.overridesItemVisibility())) {
      if (((this.mFlags & 0x8) != 0) || (!this.SC.isVisible())) {}
    }
    while ((this.mFlags & 0x8) == 0)
    {
      return true;
      return false;
    }
    return false;
  }
  
  public final android.support.v4.b.a.b j(CharSequence paramCharSequence)
  {
    this.QF = paramCharSequence;
    this.Pj.J(false);
    return this;
  }
  
  public final android.support.v4.b.a.b k(CharSequence paramCharSequence)
  {
    this.QG = paramCharSequence;
    this.Pj.J(false);
    return this;
  }
  
  public final MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
  }
  
  public final MenuItem setAlphabeticShortcut(char paramChar)
  {
    if (this.QA == paramChar) {
      return this;
    }
    this.QA = Character.toLowerCase(paramChar);
    this.Pj.J(false);
    return this;
  }
  
  public final MenuItem setAlphabeticShortcut(char paramChar, int paramInt)
  {
    if ((this.QA == paramChar) && (this.QB == paramInt)) {
      return this;
    }
    this.QA = Character.toLowerCase(paramChar);
    this.QB = KeyEvent.normalizeMetaState(paramInt);
    this.Pj.J(false);
    return this;
  }
  
  public final MenuItem setCheckable(boolean paramBoolean)
  {
    int j = this.mFlags;
    int k = this.mFlags;
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      this.mFlags = (i | k & 0xFFFFFFFE);
      if (j != this.mFlags) {
        this.Pj.J(false);
      }
      return this;
    }
  }
  
  public final MenuItem setChecked(boolean paramBoolean)
  {
    if ((this.mFlags & 0x4) != 0)
    {
      h localh = this.Pj;
      int j = getGroupId();
      int k = localh.Gj.size();
      localh.fj();
      int i = 0;
      if (i < k)
      {
        j localj = (j)localh.Gj.get(i);
        if ((localj.getGroupId() == j) && (localj.fu()) && (localj.isCheckable())) {
          if (localj != this) {
            break label105;
          }
        }
        label105:
        for (paramBoolean = true;; paramBoolean = false)
        {
          localj.L(paramBoolean);
          i += 1;
          break;
        }
      }
      localh.fk();
      return this;
    }
    L(paramBoolean);
    return this;
  }
  
  public final MenuItem setEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (this.mFlags |= 0x10;; this.mFlags &= 0xFFFFFFEF)
    {
      this.Pj.J(false);
      return this;
    }
  }
  
  public final MenuItem setIcon(int paramInt)
  {
    this.QC = null;
    this.QD = paramInt;
    this.Sz = true;
    this.Pj.J(false);
    return this;
  }
  
  public final MenuItem setIcon(Drawable paramDrawable)
  {
    this.QD = 0;
    this.QC = paramDrawable;
    this.Sz = true;
    this.Pj.J(false);
    return this;
  }
  
  public final MenuItem setIconTintList(ColorStateList paramColorStateList)
  {
    this.is = paramColorStateList;
    this.QI = true;
    this.Sz = true;
    this.Pj.J(false);
    return this;
  }
  
  public final MenuItem setIconTintMode(PorterDuff.Mode paramMode)
  {
    this.QH = paramMode;
    this.QJ = true;
    this.Sz = true;
    this.Pj.J(false);
    return this;
  }
  
  public final MenuItem setIntent(Intent paramIntent)
  {
    this.AI = paramIntent;
    return this;
  }
  
  public final MenuItem setNumericShortcut(char paramChar)
  {
    if (this.Qy == paramChar) {
      return this;
    }
    this.Qy = paramChar;
    this.Pj.J(false);
    return this;
  }
  
  public final MenuItem setNumericShortcut(char paramChar, int paramInt)
  {
    if ((this.Qy == paramChar) && (this.Qz == paramInt)) {
      return this;
    }
    this.Qy = paramChar;
    this.Qz = KeyEvent.normalizeMetaState(paramInt);
    this.Pj.J(false);
    return this;
  }
  
  public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    this.SD = paramOnActionExpandListener;
    return this;
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
    this.Pj.J(false);
    return this;
  }
  
  public final MenuItem setShortcut(char paramChar1, char paramChar2, int paramInt1, int paramInt2)
  {
    this.Qy = paramChar1;
    this.Qz = KeyEvent.normalizeMetaState(paramInt1);
    this.QA = Character.toLowerCase(paramChar2);
    this.QB = KeyEvent.normalizeMetaState(paramInt2);
    this.Pj.J(false);
    return this;
  }
  
  public final void setShowAsAction(int paramInt)
  {
    switch (paramInt & 0x3)
    {
    default: 
      throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }
    this.SA = paramInt;
    this.Pj.fm();
  }
  
  public final MenuItem setTitle(int paramInt)
  {
    return setTitle(this.Pj.mContext.getString(paramInt));
  }
  
  public final MenuItem setTitle(CharSequence paramCharSequence)
  {
    this.Ch = paramCharSequence;
    this.Pj.J(false);
    if (this.Sx != null) {
      this.Sx.setHeaderTitle(paramCharSequence);
    }
    return this;
  }
  
  public final MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    this.Qx = paramCharSequence;
    this.Pj.J(false);
    return this;
  }
  
  public final MenuItem setVisible(boolean paramBoolean)
  {
    if (M(paramBoolean)) {
      this.Pj.fl();
    }
    return this;
  }
  
  public final String toString()
  {
    if (this.Ch != null) {
      return this.Ch.toString();
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */