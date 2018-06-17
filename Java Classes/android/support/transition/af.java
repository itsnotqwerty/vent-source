package android.support.transition;

import android.animation.LayoutTransition;
import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class af
  implements ah
{
  private static LayoutTransition vj;
  private static Field vk;
  private static boolean vl;
  private static Method vm;
  private static boolean vn;
  
  public ad b(ViewGroup paramViewGroup)
  {
    return (ab)ai.z(paramViewGroup);
  }
  
  public void c(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    Object localObject;
    if (vj == null)
    {
      localObject = new LayoutTransition()
      {
        public final boolean isChangingLayout()
        {
          return true;
        }
      };
      vj = (LayoutTransition)localObject;
      ((LayoutTransition)localObject).setAnimator(2, null);
      vj.setAnimator(0, null);
      vj.setAnimator(1, null);
      vj.setAnimator(3, null);
      vj.setAnimator(4, null);
    }
    if (paramBoolean)
    {
      localObject = paramViewGroup.getLayoutTransition();
      if ((localObject != null) && ((((LayoutTransition)localObject).isRunning()) && (vn))) {}
    }
    for (;;)
    {
      try
      {
        Method localMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
        vm = localMethod;
        localMethod.setAccessible(true);
        vn = true;
        if (vm == null) {}
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        try
        {
          vm.invoke(localObject, new Object[0]);
          if (localObject != vj) {
            paramViewGroup.setTag(r.a.transition_layout_save, localObject);
          }
          paramViewGroup.setLayoutTransition(vj);
          return;
          localNoSuchMethodException = localNoSuchMethodException;
          Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
        }
        catch (IllegalAccessException localIllegalAccessException2)
        {
          Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
          continue;
        }
        catch (InvocationTargetException localInvocationTargetException)
        {
          Log.i("ViewGroupUtilsApi14", "Failed to invoke cancel method by reflection");
          continue;
        }
      }
      paramViewGroup.setLayoutTransition(null);
      if (!vl) {}
      try
      {
        localObject = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
        vk = (Field)localObject;
        ((Field)localObject).setAccessible(true);
        vl = true;
        paramBoolean = bool2;
        if (vk != null) {
          paramBoolean = bool1;
        }
        try
        {
          bool1 = vk.getBoolean(paramViewGroup);
          paramBoolean = bool1;
          if (bool1)
          {
            paramBoolean = bool1;
            vk.setBoolean(paramViewGroup, false);
            paramBoolean = bool1;
          }
        }
        catch (IllegalAccessException localIllegalAccessException1)
        {
          for (;;)
          {
            Log.i("ViewGroupUtilsApi14", "Failed to get mLayoutSuppressed field by reflection");
          }
        }
        if (paramBoolean) {
          paramViewGroup.requestLayout();
        }
        localObject = (LayoutTransition)paramViewGroup.getTag(r.a.transition_layout_save);
        if (localObject == null) {
          continue;
        }
        paramViewGroup.setTag(r.a.transition_layout_save, null);
        paramViewGroup.setLayoutTransition((LayoutTransition)localObject);
        return;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        for (;;)
        {
          Log.i("ViewGroupUtilsApi14", "Failed to access mLayoutSuppressed field by reflection");
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */