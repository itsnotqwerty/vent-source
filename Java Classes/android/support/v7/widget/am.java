package android.support.v7.widget;

import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build.VERSION;
import android.support.v4.a.a.c;
import android.support.v7.d.a.a;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class am
{
  public static final Rect Yr = new Rect();
  private static Class<?> Ys;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 18) {}
    try
    {
      Ys = Class.forName("android.graphics.Insets");
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
  }
  
  public static PorterDuff.Mode c(int paramInt, PorterDuff.Mode paramMode)
  {
    switch (paramInt)
    {
    case 4: 
    case 6: 
    case 7: 
    case 8: 
    case 10: 
    case 11: 
    case 12: 
    case 13: 
    default: 
      return paramMode;
    case 3: 
      return PorterDuff.Mode.SRC_OVER;
    case 5: 
      return PorterDuff.Mode.SRC_IN;
    case 9: 
      return PorterDuff.Mode.SRC_ATOP;
    case 14: 
      return PorterDuff.Mode.MULTIPLY;
    case 15: 
      return PorterDuff.Mode.SCREEN;
    }
    return PorterDuff.Mode.ADD;
  }
  
  public static Rect k(Drawable paramDrawable)
  {
    Object localObject1;
    if (Ys != null) {
      localObject1 = paramDrawable;
    }
    for (;;)
    {
      Object localObject2;
      int j;
      int i;
      try
      {
        if ((paramDrawable instanceof c)) {
          localObject1 = ((c)paramDrawable).de();
        }
        localObject2 = localObject1.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(localObject1, new Object[0]);
        if (localObject2 == null) {
          break label231;
        }
        localObject1 = new Rect();
        Field[] arrayOfField = Ys.getFields();
        int k = arrayOfField.length;
        j = 0;
        paramDrawable = (Drawable)localObject1;
        if (j >= k) {
          break label235;
        }
        paramDrawable = arrayOfField[j];
        str = paramDrawable.getName();
        i = -1;
        switch (str.hashCode())
        {
        case 3317767: 
          if (!str.equals("left")) {
            break label279;
          }
          i = 0;
        }
      }
      catch (Exception paramDrawable)
      {
        String str;
        Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
      }
      if (str.equals("top"))
      {
        i = 1;
        break label279;
        if (str.equals("right"))
        {
          i = 2;
          break label279;
          if (str.equals("bottom"))
          {
            i = 3;
            break label279;
            ((Rect)localObject1).left = paramDrawable.getInt(localObject2);
            break label312;
            label231:
            paramDrawable = Yr;
            label235:
            return paramDrawable;
            ((Rect)localObject1).top = paramDrawable.getInt(localObject2);
            break label312;
            ((Rect)localObject1).right = paramDrawable.getInt(localObject2);
            break label312;
            ((Rect)localObject1).bottom = paramDrawable.getInt(localObject2);
            break label312;
          }
        }
      }
      label279:
      switch (i)
      {
      }
      label312:
      j += 1;
    }
  }
  
  static void l(Drawable paramDrawable)
  {
    int[] arrayOfInt;
    if ((Build.VERSION.SDK_INT == 21) && ("android.graphics.drawable.VectorDrawable".equals(paramDrawable.getClass().getName())))
    {
      arrayOfInt = paramDrawable.getState();
      if ((arrayOfInt != null) && (arrayOfInt.length != 0)) {
        break label52;
      }
      paramDrawable.setState(bk.ik);
    }
    for (;;)
    {
      paramDrawable.setState(arrayOfInt);
      return;
      label52:
      paramDrawable.setState(bk.EMPTY_STATE_SET);
    }
  }
  
  public static boolean m(Drawable paramDrawable)
  {
    for (;;)
    {
      if ((Build.VERSION.SDK_INT < 15) && ((paramDrawable instanceof InsetDrawable))) {
        return false;
      }
      if ((Build.VERSION.SDK_INT < 15) && ((paramDrawable instanceof GradientDrawable))) {
        return false;
      }
      if ((Build.VERSION.SDK_INT < 17) && ((paramDrawable instanceof LayerDrawable))) {
        return false;
      }
      if ((paramDrawable instanceof DrawableContainer))
      {
        paramDrawable = paramDrawable.getConstantState();
        if (!(paramDrawable instanceof DrawableContainer.DrawableContainerState)) {
          break;
        }
        paramDrawable = ((DrawableContainer.DrawableContainerState)paramDrawable).getChildren();
        int j = paramDrawable.length;
        int i = 0;
        while (i < j)
        {
          if (!m(paramDrawable[i])) {
            return false;
          }
          i += 1;
        }
      }
      if ((paramDrawable instanceof c))
      {
        paramDrawable = ((c)paramDrawable).de();
      }
      else if ((paramDrawable instanceof a))
      {
        paramDrawable = ((a)paramDrawable).Cb;
      }
      else
      {
        if (!(paramDrawable instanceof ScaleDrawable)) {
          break;
        }
        paramDrawable = ((ScaleDrawable)paramDrawable).getDrawable();
      }
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */