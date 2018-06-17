package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.view.v;
import android.support.v7.view.menu.h.a;
import android.support.v7.view.menu.o.a;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window.Callback;

public abstract interface ak
{
  public abstract void a(bh parambh);
  
  public abstract void a(Menu paramMenu, o.a parama);
  
  public abstract v b(int paramInt, long paramLong);
  
  public abstract boolean canShowOverflowMenu();
  
  public abstract void collapseActionView();
  
  public abstract void dismissPopupMenus();
  
  public abstract void fF();
  
  public abstract void gA();
  
  public abstract Context getContext();
  
  public abstract int getDisplayOptions();
  
  public abstract Menu getMenu();
  
  public abstract int getNavigationMode();
  
  public abstract CharSequence getTitle();
  
  public abstract ViewGroup gy();
  
  public abstract void gz();
  
  public abstract boolean hasExpandedActionView();
  
  public abstract boolean hideOverflowMenu();
  
  public abstract boolean isOverflowMenuShowPending();
  
  public abstract boolean isOverflowMenuShowing();
  
  public abstract void setCollapsible(boolean paramBoolean);
  
  public abstract void setDisplayOptions(int paramInt);
  
  public abstract void setIcon(int paramInt);
  
  public abstract void setIcon(Drawable paramDrawable);
  
  public abstract void setLogo(int paramInt);
  
  public abstract void setMenuCallbacks(o.a parama, h.a parama1);
  
  public abstract void setTitle(CharSequence paramCharSequence);
  
  public abstract void setVisibility(int paramInt);
  
  public abstract void setWindowCallback(Window.Callback paramCallback);
  
  public abstract void setWindowTitle(CharSequence paramCharSequence);
  
  public abstract boolean showOverflowMenu();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */