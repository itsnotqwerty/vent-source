package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a.j;
import android.support.v7.view.b;
import android.support.v7.view.b.a;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public abstract class a
{
  public void A(boolean paramBoolean) {}
  
  public void B(boolean paramBoolean) {}
  
  public b a(b.a parama)
  {
    return null;
  }
  
  public boolean b(KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public boolean collapseActionView()
  {
    return false;
  }
  
  public abstract void ep();
  
  public abstract void eq();
  
  public boolean er()
  {
    return false;
  }
  
  public boolean es()
  {
    return false;
  }
  
  public boolean et()
  {
    return false;
  }
  
  public abstract int getDisplayOptions();
  
  public Context getThemedContext()
  {
    return null;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  void onDestroy() {}
  
  public boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public abstract void setDisplayHomeAsUpEnabled(boolean paramBoolean);
  
  public abstract void setTitle(int paramInt);
  
  public abstract void setTitle(CharSequence paramCharSequence);
  
  public void setWindowTitle(CharSequence paramCharSequence) {}
  
  public void z(boolean paramBoolean) {}
  
  public static class a
    extends ViewGroup.MarginLayoutParams
  {
    public int gravity = 0;
    
    public a()
    {
      super(-2);
      this.gravity = 8388627;
    }
    
    public a(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.j.ActionBarLayout);
      this.gravity = paramContext.getInt(a.j.ActionBarLayout_android_layout_gravity, 0);
      paramContext.recycle();
    }
    
    public a(a parama)
    {
      super();
      this.gravity = parama.gravity;
    }
    
    public a(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  @Deprecated
  public static abstract class b
  {
    public abstract CharSequence getContentDescription();
    
    public abstract View getCustomView();
    
    public abstract Drawable getIcon();
    
    public abstract CharSequence getText();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */