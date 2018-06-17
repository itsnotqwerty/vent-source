package android.support.v7.widget;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.view.r;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class bw
{
  private static Method akO;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 18) {}
    try
    {
      Method localMethod = View.class.getDeclaredMethod("computeFitSystemWindows", new Class[] { Rect.class, Rect.class });
      akO = localMethod;
      if (!localMethod.isAccessible()) {
        akO.setAccessible(true);
      }
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
    }
  }
  
  public static void a(View paramView, Rect paramRect1, Rect paramRect2)
  {
    if (akO != null) {}
    try
    {
      akO.invoke(paramView, new Object[] { paramRect1, paramRect2 });
      return;
    }
    catch (Exception paramView)
    {
      Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", paramView);
    }
  }
  
  public static boolean bj(View paramView)
  {
    return r.K(paramView) == 1;
  }
  
  public static void bk(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16) {}
    try
    {
      Method localMethod = paramView.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
      if (!localMethod.isAccessible()) {
        localMethod.setAccessible(true);
      }
      localMethod.invoke(paramView, new Object[0]);
      return;
    }
    catch (NoSuchMethodException paramView)
    {
      Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
      return;
    }
    catch (InvocationTargetException paramView)
    {
      Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", paramView);
      return;
    }
    catch (IllegalAccessException paramView)
    {
      Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", paramView);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */