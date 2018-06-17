package android.support.transition;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class ap
  extends ao
{
  private static Method vH;
  private static boolean vI;
  private static Method vJ;
  private static boolean vK;
  
  public final void a(View paramView, Matrix paramMatrix)
  {
    if (!vI) {}
    try
    {
      Method localMethod = View.class.getDeclaredMethod("transformMatrixToGlobal", new Class[] { Matrix.class });
      vH = localMethod;
      localMethod.setAccessible(true);
      vI = true;
      if (vH == null) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          vH.invoke(paramView, new Object[] { paramMatrix });
          return;
        }
        catch (InvocationTargetException paramView)
        {
          throw new RuntimeException(paramView.getCause());
        }
        catch (IllegalAccessException paramView) {}
        localNoSuchMethodException = localNoSuchMethodException;
        Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", localNoSuchMethodException);
      }
    }
  }
  
  public final void b(View paramView, Matrix paramMatrix)
  {
    if (!vK) {}
    try
    {
      Method localMethod = View.class.getDeclaredMethod("transformMatrixToLocal", new Class[] { Matrix.class });
      vJ = localMethod;
      localMethod.setAccessible(true);
      vK = true;
      if (vJ == null) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          vJ.invoke(paramView, new Object[] { paramMatrix });
          return;
        }
        catch (InvocationTargetException paramView)
        {
          throw new RuntimeException(paramView.getCause());
        }
        catch (IllegalAccessException paramView) {}
        localNoSuchMethodException = localNoSuchMethodException;
        Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", localNoSuchMethodException);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */