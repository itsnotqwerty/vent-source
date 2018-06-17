package android.support.v4.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.graphics.drawable.InsetDrawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class a
{
  private static Method BT;
  private static boolean BU;
  private static Method BV;
  private static boolean BW;
  
  public static void a(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramDrawable.setHotspot(paramFloat1, paramFloat2);
    }
  }
  
  public static void a(Drawable paramDrawable, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramDrawable.setTint(paramInt);
    }
    while (!(paramDrawable instanceof b)) {
      return;
    }
    ((b)paramDrawable).setTint(paramInt);
  }
  
  public static void a(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramDrawable.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public static void a(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramDrawable.setTintList(paramColorStateList);
    }
    while (!(paramDrawable instanceof b)) {
      return;
    }
    ((b)paramDrawable).setTintList(paramColorStateList);
  }
  
  public static void a(Drawable paramDrawable, Resources.Theme paramTheme)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramDrawable.applyTheme(paramTheme);
    }
  }
  
  public static void a(Drawable paramDrawable, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramDrawable.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    }
    paramDrawable.inflate(paramResources, paramXmlPullParser, paramAttributeSet);
  }
  
  public static void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramDrawable.setTintMode(paramMode);
    }
    while (!(paramDrawable instanceof b)) {
      return;
    }
    ((b)paramDrawable).setTintMode(paramMode);
  }
  
  public static void a(Drawable paramDrawable, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      paramDrawable.setAutoMirrored(paramBoolean);
    }
  }
  
  public static boolean b(Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramDrawable.isAutoMirrored();
    }
    return false;
  }
  
  public static boolean b(Drawable paramDrawable, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return paramDrawable.setLayoutDirection(paramInt);
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      if (!BU) {}
      try
      {
        Method localMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", new Class[] { Integer.TYPE });
        BT = localMethod;
        localMethod.setAccessible(true);
        BU = true;
        if (BT != null) {
          try
          {
            BT.invoke(paramDrawable, new Object[] { Integer.valueOf(paramInt) });
            return true;
          }
          catch (Exception paramDrawable)
          {
            Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", paramDrawable);
            BT = null;
          }
        }
        return false;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        for (;;)
        {
          Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", localNoSuchMethodException);
        }
      }
    }
    return false;
  }
  
  public static int c(Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramDrawable.getAlpha();
    }
    return 0;
  }
  
  public static boolean d(Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramDrawable.canApplyTheme();
    }
    return false;
  }
  
  public static void e(Drawable paramDrawable)
  {
    int i;
    int j;
    while ((Build.VERSION.SDK_INT < 23) && (Build.VERSION.SDK_INT >= 21))
    {
      paramDrawable.clearColorFilter();
      if ((paramDrawable instanceof InsetDrawable))
      {
        paramDrawable = ((InsetDrawable)paramDrawable).getDrawable();
      }
      else if ((paramDrawable instanceof c))
      {
        paramDrawable = ((c)paramDrawable).de();
      }
      else
      {
        if (!(paramDrawable instanceof DrawableContainer)) {
          return;
        }
        paramDrawable = (DrawableContainer.DrawableContainerState)((DrawableContainer)paramDrawable).getConstantState();
        if (paramDrawable == null) {
          return;
        }
        i = 0;
        j = paramDrawable.getChildCount();
      }
    }
    while (i < j)
    {
      Drawable localDrawable = paramDrawable.getChild(i);
      if (localDrawable != null) {
        e(localDrawable);
      }
      i += 1;
      continue;
      paramDrawable.clearColorFilter();
    }
  }
  
  public static Drawable f(Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 23) {}
    do
    {
      do
      {
        do
        {
          return paramDrawable;
          if (Build.VERSION.SDK_INT < 21) {
            break;
          }
        } while ((paramDrawable instanceof b));
        return new f(paramDrawable);
        if (Build.VERSION.SDK_INT < 19) {
          break;
        }
      } while ((paramDrawable instanceof b));
      return new e(paramDrawable);
    } while ((paramDrawable instanceof b));
    return new d(paramDrawable);
  }
  
  public static int g(Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return paramDrawable.getLayoutDirection();
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      if (!BW) {}
      try
      {
        Method localMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
        BV = localMethod;
        localMethod.setAccessible(true);
        BW = true;
        if (BV == null) {}
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        for (;;)
        {
          try
          {
            int i = ((Integer)BV.invoke(paramDrawable, new Object[0])).intValue();
            return i;
          }
          catch (Exception paramDrawable)
          {
            Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", paramDrawable);
            BV = null;
          }
          localNoSuchMethodException = localNoSuchMethodException;
          Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", localNoSuchMethodException);
        }
      }
      return 0;
    }
    return 0;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/a/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */