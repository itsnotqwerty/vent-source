package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.support.v4.b.a.b;
import android.util.Log;
import android.view.MenuItem;

public final class g
{
  static final c FG = new b();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 26)
    {
      FG = new a();
      return;
    }
  }
  
  public static MenuItem a(MenuItem paramMenuItem, c paramc)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).a(paramc);
    }
    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
    return paramMenuItem;
  }
  
  public static void a(MenuItem paramMenuItem, char paramChar, int paramInt)
  {
    if ((paramMenuItem instanceof b))
    {
      ((b)paramMenuItem).setNumericShortcut(paramChar, paramInt);
      return;
    }
    FG.a(paramMenuItem, paramChar, paramInt);
  }
  
  public static void a(MenuItem paramMenuItem, ColorStateList paramColorStateList)
  {
    if ((paramMenuItem instanceof b))
    {
      ((b)paramMenuItem).setIconTintList(paramColorStateList);
      return;
    }
    FG.a(paramMenuItem, paramColorStateList);
  }
  
  public static void a(MenuItem paramMenuItem, PorterDuff.Mode paramMode)
  {
    if ((paramMenuItem instanceof b))
    {
      ((b)paramMenuItem).setIconTintMode(paramMode);
      return;
    }
    FG.a(paramMenuItem, paramMode);
  }
  
  public static void a(MenuItem paramMenuItem, CharSequence paramCharSequence)
  {
    if ((paramMenuItem instanceof b))
    {
      ((b)paramMenuItem).j(paramCharSequence);
      return;
    }
    FG.a(paramMenuItem, paramCharSequence);
  }
  
  public static void b(MenuItem paramMenuItem, char paramChar, int paramInt)
  {
    if ((paramMenuItem instanceof b))
    {
      ((b)paramMenuItem).setAlphabeticShortcut(paramChar, paramInt);
      return;
    }
    FG.b(paramMenuItem, paramChar, paramInt);
  }
  
  public static void b(MenuItem paramMenuItem, CharSequence paramCharSequence)
  {
    if ((paramMenuItem instanceof b))
    {
      ((b)paramMenuItem).k(paramCharSequence);
      return;
    }
    FG.b(paramMenuItem, paramCharSequence);
  }
  
  static final class a
    extends g.b
  {
    public final void a(MenuItem paramMenuItem, char paramChar, int paramInt)
    {
      paramMenuItem.setNumericShortcut(paramChar, paramInt);
    }
    
    public final void a(MenuItem paramMenuItem, ColorStateList paramColorStateList)
    {
      paramMenuItem.setIconTintList(paramColorStateList);
    }
    
    public final void a(MenuItem paramMenuItem, PorterDuff.Mode paramMode)
    {
      paramMenuItem.setIconTintMode(paramMode);
    }
    
    public final void a(MenuItem paramMenuItem, CharSequence paramCharSequence)
    {
      paramMenuItem.setContentDescription(paramCharSequence);
    }
    
    public final void b(MenuItem paramMenuItem, char paramChar, int paramInt)
    {
      paramMenuItem.setAlphabeticShortcut(paramChar, paramInt);
    }
    
    public final void b(MenuItem paramMenuItem, CharSequence paramCharSequence)
    {
      paramMenuItem.setTooltipText(paramCharSequence);
    }
  }
  
  static class b
    implements g.c
  {
    public void a(MenuItem paramMenuItem, char paramChar, int paramInt) {}
    
    public void a(MenuItem paramMenuItem, ColorStateList paramColorStateList) {}
    
    public void a(MenuItem paramMenuItem, PorterDuff.Mode paramMode) {}
    
    public void a(MenuItem paramMenuItem, CharSequence paramCharSequence) {}
    
    public void b(MenuItem paramMenuItem, char paramChar, int paramInt) {}
    
    public void b(MenuItem paramMenuItem, CharSequence paramCharSequence) {}
  }
  
  static abstract interface c
  {
    public abstract void a(MenuItem paramMenuItem, char paramChar, int paramInt);
    
    public abstract void a(MenuItem paramMenuItem, ColorStateList paramColorStateList);
    
    public abstract void a(MenuItem paramMenuItem, PorterDuff.Mode paramMode);
    
    public abstract void a(MenuItem paramMenuItem, CharSequence paramCharSequence);
    
    public abstract void b(MenuItem paramMenuItem, char paramChar, int paramInt);
    
    public abstract void b(MenuItem paramMenuItem, CharSequence paramCharSequence);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */