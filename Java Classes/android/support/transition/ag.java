package android.support.transition;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class ag
  extends af
{
  private static Method vp;
  private static boolean vq;
  
  public final ad b(ViewGroup paramViewGroup)
  {
    return new ac(paramViewGroup);
  }
  
  public final void c(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (!vq) {}
    try
    {
      Method localMethod = ViewGroup.class.getDeclaredMethod("suppressLayout", new Class[] { Boolean.TYPE });
      vp = localMethod;
      localMethod.setAccessible(true);
      vq = true;
      if (vp == null) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          vp.invoke(paramViewGroup, new Object[] { Boolean.valueOf(paramBoolean) });
          return;
        }
        catch (IllegalAccessException paramViewGroup)
        {
          Log.i("ViewUtilsApi18", "Failed to invoke suppressLayout method", paramViewGroup);
          return;
        }
        catch (InvocationTargetException paramViewGroup)
        {
          Log.i("ViewUtilsApi18", "Error invoking suppressLayout method", paramViewGroup);
        }
        localNoSuchMethodException = localNoSuchMethodException;
        Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", localNoSuchMethodException);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */