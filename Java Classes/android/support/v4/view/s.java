package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;

public final class s
{
  private static Method Gd;
  
  static
  {
    if (Build.VERSION.SDK_INT == 25) {}
    try
    {
      Gd = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", new Class[0]);
      return;
    }
    catch (Exception localException)
    {
      Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
    }
  }
  
  public static float a(ViewConfiguration paramViewConfiguration, Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramViewConfiguration.getScaledHorizontalScrollFactor();
    }
    return c(paramViewConfiguration, paramContext);
  }
  
  public static float b(ViewConfiguration paramViewConfiguration, Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramViewConfiguration.getScaledVerticalScrollFactor();
    }
    return c(paramViewConfiguration, paramContext);
  }
  
  private static float c(ViewConfiguration paramViewConfiguration, Context paramContext)
  {
    if ((Build.VERSION.SDK_INT >= 25) && (Gd != null)) {
      try
      {
        int i = ((Integer)Gd.invoke(paramViewConfiguration, new Object[0])).intValue();
        return i;
      }
      catch (Exception paramViewConfiguration)
      {
        Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
      }
    }
    paramViewConfiguration = new TypedValue();
    if (paramContext.getTheme().resolveAttribute(16842829, paramViewConfiguration, true)) {
      return paramViewConfiguration.getDimension(paramContext.getResources().getDisplayMetrics());
    }
    return 0.0F;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */