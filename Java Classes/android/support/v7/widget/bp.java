package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.view.r;
import android.support.v4.view.v;
import android.support.v4.view.x;
import android.support.v7.a.a.a;
import android.support.v7.a.a.f;
import android.support.v7.a.a.h;
import android.support.v7.a.a.j;
import android.support.v7.c.a.b;
import android.support.v7.view.menu.a;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.h.a;
import android.support.v7.view.menu.o.a;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;

public final class bp
  implements ak
{
  CharSequence Ch;
  private CharSequence Ci;
  Window.Callback On;
  private d Tf;
  private int ajZ;
  private View aka;
  private Drawable akb;
  private Drawable akc;
  private boolean akd;
  private CharSequence ake;
  boolean akf;
  private int akg = 0;
  private int akh = 0;
  private Drawable aki;
  Toolbar kZ;
  private View oZ;
  private Drawable oa;
  
  public bp(Toolbar paramToolbar, boolean paramBoolean)
  {
    this(paramToolbar, paramBoolean, a.h.abc_action_bar_up_description);
  }
  
  private bp(Toolbar paramToolbar, boolean paramBoolean, int paramInt)
  {
    this.kZ = paramToolbar;
    this.Ch = paramToolbar.getTitle();
    this.Ci = paramToolbar.getSubtitle();
    boolean bool;
    int i;
    if (this.Ch != null)
    {
      bool = true;
      this.akd = bool;
      this.akc = paramToolbar.getNavigationIcon();
      paramToolbar = bo.a(paramToolbar.getContext(), null, a.j.ActionBar, a.a.actionBarStyle, 0);
      this.aki = paramToolbar.getDrawable(a.j.ActionBar_homeAsUpIndicator);
      if (!paramBoolean) {
        break label602;
      }
      Object localObject = paramToolbar.getText(a.j.ActionBar_title);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        setTitle((CharSequence)localObject);
      }
      localObject = paramToolbar.getText(a.j.ActionBar_subtitle);
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        this.Ci = ((CharSequence)localObject);
        if ((this.ajZ & 0x8) != 0) {
          this.kZ.setSubtitle((CharSequence)localObject);
        }
      }
      localObject = paramToolbar.getDrawable(a.j.ActionBar_logo);
      if (localObject != null) {
        setLogo((Drawable)localObject);
      }
      localObject = paramToolbar.getDrawable(a.j.ActionBar_icon);
      if (localObject != null) {
        setIcon((Drawable)localObject);
      }
      if ((this.akc == null) && (this.aki != null))
      {
        this.akc = this.aki;
        iZ();
      }
      setDisplayOptions(paramToolbar.getInt(a.j.ActionBar_displayOptions, 0));
      i = paramToolbar.getResourceId(a.j.ActionBar_customNavigationLayout, 0);
      if (i != 0)
      {
        localObject = LayoutInflater.from(this.kZ.getContext()).inflate(i, this.kZ, false);
        if ((this.oZ != null) && ((this.ajZ & 0x10) != 0)) {
          this.kZ.removeView(this.oZ);
        }
        this.oZ = ((View)localObject);
        if ((localObject != null) && ((this.ajZ & 0x10) != 0)) {
          this.kZ.addView(this.oZ);
        }
        setDisplayOptions(this.ajZ | 0x10);
      }
      i = paramToolbar.getLayoutDimension(a.j.ActionBar_height, 0);
      if (i > 0)
      {
        localObject = this.kZ.getLayoutParams();
        ((ViewGroup.LayoutParams)localObject).height = i;
        this.kZ.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      i = paramToolbar.getDimensionPixelOffset(a.j.ActionBar_contentInsetStart, -1);
      int j = paramToolbar.getDimensionPixelOffset(a.j.ActionBar_contentInsetEnd, -1);
      if ((i >= 0) || (j >= 0)) {
        this.kZ.setContentInsetsRelative(Math.max(i, 0), Math.max(j, 0));
      }
      i = paramToolbar.getResourceId(a.j.ActionBar_titleTextStyle, 0);
      if (i != 0) {
        this.kZ.setTitleTextAppearance(this.kZ.getContext(), i);
      }
      i = paramToolbar.getResourceId(a.j.ActionBar_subtitleTextStyle, 0);
      if (i != 0) {
        this.kZ.setSubtitleTextAppearance(this.kZ.getContext(), i);
      }
      i = paramToolbar.getResourceId(a.j.ActionBar_popupTheme, 0);
      if (i != 0) {
        this.kZ.setPopupTheme(i);
      }
      label516:
      paramToolbar.ajT.recycle();
      if (paramInt != this.akh)
      {
        this.akh = paramInt;
        if (TextUtils.isEmpty(this.kZ.getNavigationContentDescription()))
        {
          paramInt = this.akh;
          if (paramInt != 0) {
            break label640;
          }
        }
      }
    }
    label602:
    label640:
    for (paramToolbar = null;; paramToolbar = this.kZ.getContext().getString(paramInt))
    {
      this.ake = paramToolbar;
      ja();
      this.ake = this.kZ.getNavigationContentDescription();
      this.kZ.setNavigationOnClickListener(new View.OnClickListener()
      {
        final a akj = new a(bp.this.kZ.getContext(), bp.this.Ch);
        
        public final void onClick(View paramAnonymousView)
        {
          if ((bp.this.On != null) && (bp.this.akf)) {
            bp.this.On.onMenuItemSelected(0, this.akj);
          }
        }
      });
      return;
      bool = false;
      break;
      i = 11;
      if (this.kZ.getNavigationIcon() != null)
      {
        i = 15;
        this.aki = this.kZ.getNavigationIcon();
      }
      this.ajZ = i;
      break label516;
    }
  }
  
  private void iY()
  {
    Drawable localDrawable = null;
    if ((this.ajZ & 0x2) != 0)
    {
      if ((this.ajZ & 0x1) == 0) {
        break label49;
      }
      if (this.akb == null) {
        break label41;
      }
      localDrawable = this.akb;
    }
    for (;;)
    {
      this.kZ.setLogo(localDrawable);
      return;
      label41:
      localDrawable = this.oa;
      continue;
      label49:
      localDrawable = this.oa;
    }
  }
  
  private void iZ()
  {
    if ((this.ajZ & 0x4) != 0)
    {
      Toolbar localToolbar = this.kZ;
      if (this.akc != null) {}
      for (Drawable localDrawable = this.akc;; localDrawable = this.aki)
      {
        localToolbar.setNavigationIcon(localDrawable);
        return;
      }
    }
    this.kZ.setNavigationIcon(null);
  }
  
  private void ja()
  {
    if ((this.ajZ & 0x4) != 0)
    {
      if (TextUtils.isEmpty(this.ake)) {
        this.kZ.setNavigationContentDescription(this.akh);
      }
    }
    else {
      return;
    }
    this.kZ.setNavigationContentDescription(this.ake);
  }
  
  private void o(CharSequence paramCharSequence)
  {
    this.Ch = paramCharSequence;
    if ((this.ajZ & 0x8) != 0) {
      this.kZ.setTitle(paramCharSequence);
    }
  }
  
  private void setLogo(Drawable paramDrawable)
  {
    this.akb = paramDrawable;
    iY();
  }
  
  public final void a(bh parambh)
  {
    if ((this.aka != null) && (this.aka.getParent() == this.kZ)) {
      this.kZ.removeView(this.aka);
    }
    this.aka = parambh;
    if ((parambh != null) && (this.akg == 2))
    {
      this.kZ.addView(this.aka, 0);
      Toolbar.b localb = (Toolbar.b)this.aka.getLayoutParams();
      localb.width = -2;
      localb.height = -2;
      localb.gravity = 8388691;
      parambh.setAllowCollapse(true);
    }
  }
  
  public final void a(Menu paramMenu, o.a parama)
  {
    if (this.Tf == null)
    {
      this.Tf = new d(this.kZ.getContext());
      this.Tf.yo = a.f.action_menu_presenter;
    }
    this.Tf.QU = parama;
    this.kZ.setMenu((h)paramMenu, this.Tf);
  }
  
  public final v b(final int paramInt, long paramLong)
  {
    v localv = r.S(this.kZ);
    if (paramInt == 0) {}
    for (float f = 1.0F;; f = 0.0F) {
      localv.k(f).e(paramLong).a(new x()
      {
        private boolean tB = false;
        
        public final void ao(View paramAnonymousView)
        {
          bp.this.kZ.setVisibility(0);
        }
        
        public final void ap(View paramAnonymousView)
        {
          if (!this.tB) {
            bp.this.kZ.setVisibility(paramInt);
          }
        }
        
        public final void aq(View paramAnonymousView)
        {
          this.tB = true;
        }
      });
    }
  }
  
  public final boolean canShowOverflowMenu()
  {
    return this.kZ.canShowOverflowMenu();
  }
  
  public final void collapseActionView()
  {
    this.kZ.collapseActionView();
  }
  
  public final void dismissPopupMenus()
  {
    this.kZ.dismissPopupMenus();
  }
  
  public final void fF()
  {
    this.akf = true;
  }
  
  public final void gA()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public final Context getContext()
  {
    return this.kZ.getContext();
  }
  
  public final int getDisplayOptions()
  {
    return this.ajZ;
  }
  
  public final Menu getMenu()
  {
    return this.kZ.getMenu();
  }
  
  public final int getNavigationMode()
  {
    return this.akg;
  }
  
  public final CharSequence getTitle()
  {
    return this.kZ.getTitle();
  }
  
  public final ViewGroup gy()
  {
    return this.kZ;
  }
  
  public final void gz()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public final boolean hasExpandedActionView()
  {
    return this.kZ.hasExpandedActionView();
  }
  
  public final boolean hideOverflowMenu()
  {
    return this.kZ.hideOverflowMenu();
  }
  
  public final boolean isOverflowMenuShowPending()
  {
    return this.kZ.isOverflowMenuShowPending();
  }
  
  public final boolean isOverflowMenuShowing()
  {
    return this.kZ.isOverflowMenuShowing();
  }
  
  public final void setCollapsible(boolean paramBoolean)
  {
    this.kZ.setCollapsible(paramBoolean);
  }
  
  public final void setDisplayOptions(int paramInt)
  {
    int i = this.ajZ ^ paramInt;
    this.ajZ = paramInt;
    if (i != 0)
    {
      if ((i & 0x4) != 0)
      {
        if ((paramInt & 0x4) != 0) {
          ja();
        }
        iZ();
      }
      if ((i & 0x3) != 0) {
        iY();
      }
      if ((i & 0x8) != 0)
      {
        if ((paramInt & 0x8) == 0) {
          break label115;
        }
        this.kZ.setTitle(this.Ch);
        this.kZ.setSubtitle(this.Ci);
      }
    }
    for (;;)
    {
      if (((i & 0x10) != 0) && (this.oZ != null))
      {
        if ((paramInt & 0x10) == 0) {
          break;
        }
        this.kZ.addView(this.oZ);
      }
      return;
      label115:
      this.kZ.setTitle(null);
      this.kZ.setSubtitle(null);
    }
    this.kZ.removeView(this.oZ);
  }
  
  public final void setIcon(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = b.a(this.kZ.getContext(), paramInt);; localDrawable = null)
    {
      setIcon(localDrawable);
      return;
    }
  }
  
  public final void setIcon(Drawable paramDrawable)
  {
    this.oa = paramDrawable;
    iY();
  }
  
  public final void setLogo(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = b.a(this.kZ.getContext(), paramInt);; localDrawable = null)
    {
      setLogo(localDrawable);
      return;
    }
  }
  
  public final void setMenuCallbacks(o.a parama, h.a parama1)
  {
    this.kZ.setMenuCallbacks(parama, parama1);
  }
  
  public final void setTitle(CharSequence paramCharSequence)
  {
    this.akd = true;
    o(paramCharSequence);
  }
  
  public final void setVisibility(int paramInt)
  {
    this.kZ.setVisibility(paramInt);
  }
  
  public final void setWindowCallback(Window.Callback paramCallback)
  {
    this.On = paramCallback;
  }
  
  public final void setWindowTitle(CharSequence paramCharSequence)
  {
    if (!this.akd) {
      o(paramCharSequence);
    }
  }
  
  public final boolean showOverflowMenu()
  {
    return this.kZ.showOverflowMenu();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */