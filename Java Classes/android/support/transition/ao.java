package android.support.transition;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class ao
  extends an
{
  private static Method vD;
  private static boolean vE;
  private static Method vF;
  private static boolean vG;
  
  public final float C(View paramView)
  {
    if (!vG) {}
    try
    {
      Method localMethod = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
      vF = localMethod;
      localMethod.setAccessible(true);
      vG = true;
      if (vF == null) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          float f = ((Float)vF.invoke(paramView, new Object[0])).floatValue();
          return f;
        }
        catch (InvocationTargetException paramView)
        {
          throw new RuntimeException(paramView.getCause());
        }
        catch (IllegalAccessException localIllegalAccessException) {}
        localNoSuchMethodException = localNoSuchMethodException;
        Log.i("ViewUtilsApi19", "Failed to retrieve getTransitionAlpha method", localNoSuchMethodException);
      }
    }
    return super.C(paramView);
  }
  
  public final void D(View paramView) {}
  
  public final void E(View paramView) {}
  
  public final void c(View paramView, float paramFloat)
  {
    if (!vE) {}
    try
    {
      Method localMethod = View.class.getDeclaredMethod("setTransitionAlpha", new Class[] { Float.TYPE });
      vD = localMethod;
      localMethod.setAccessible(true);
      vE = true;
      if (vD == null) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          vD.invoke(paramView, new Object[] { Float.valueOf(paramFloat) });
          return;
        }
        catch (InvocationTargetException paramView)
        {
          throw new RuntimeException(paramView.getCause());
          paramView.setAlpha(paramFloat);
          return;
        }
        catch (IllegalAccessException paramView) {}
        localNoSuchMethodException = localNoSuchMethodException;
        Log.i("ViewUtilsApi19", "Failed to retrieve setTransitionAlpha method", localNoSuchMethodException);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */