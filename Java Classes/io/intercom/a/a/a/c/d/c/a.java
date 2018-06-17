package io.intercom.a.a.a.c.d.c;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;

public final class a
{
  private static volatile boolean cOr = true;
  
  public static Drawable a(Context paramContext, int paramInt)
  {
    return a(paramContext, paramInt, null);
  }
  
  public static Drawable a(Context paramContext, int paramInt, Resources.Theme paramTheme)
  {
    try
    {
      if (cOr)
      {
        Drawable localDrawable = android.support.v7.c.a.b.a(paramContext, paramInt);
        return localDrawable;
      }
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      cOr = false;
      if (paramTheme != null) {}
      for (;;)
      {
        return android.support.v4.content.a.b.b(paramContext.getResources(), paramInt, paramTheme);
        paramTheme = paramContext.getTheme();
      }
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      for (;;) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */