package android.support.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.Property;
import android.view.View;
import java.lang.reflect.Field;

final class al
{
  private static boolean vA;
  static final Property<View, Float> vB;
  static final Property<View, Rect> vC;
  private static final ar vy;
  private static Field vz;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 22) {
      vy = new aq();
    }
    for (;;)
    {
      vB = new Property(Float.class, "translationAlpha") {};
      vC = new Property(Rect.class, "clipBounds") {};
      return;
      if (Build.VERSION.SDK_INT >= 21) {
        vy = new ap();
      } else if (Build.VERSION.SDK_INT >= 19) {
        vy = new ao();
      } else if (Build.VERSION.SDK_INT >= 18) {
        vy = new an();
      } else {
        vy = new am();
      }
    }
  }
  
  static ak A(View paramView)
  {
    return vy.A(paramView);
  }
  
  static av B(View paramView)
  {
    return vy.B(paramView);
  }
  
  static float C(View paramView)
  {
    return vy.C(paramView);
  }
  
  static void D(View paramView)
  {
    vy.D(paramView);
  }
  
  static void E(View paramView)
  {
    vy.E(paramView);
  }
  
  static void a(View paramView, Matrix paramMatrix)
  {
    vy.a(paramView, paramMatrix);
  }
  
  static void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    vy.b(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  static void b(View paramView, Matrix paramMatrix)
  {
    vy.b(paramView, paramMatrix);
  }
  
  static void c(View paramView, float paramFloat)
  {
    vy.c(paramView, paramFloat);
  }
  
  static void k(View paramView, int paramInt)
  {
    if (!vA) {}
    try
    {
      Field localField = View.class.getDeclaredField("mViewFlags");
      vz = localField;
      localField.setAccessible(true);
      vA = true;
      if (vz == null) {}
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;)
      {
        try
        {
          int i = vz.getInt(paramView);
          vz.setInt(paramView, i & 0xFFFFFFF3 | paramInt);
          return;
        }
        catch (IllegalAccessException paramView) {}
        localNoSuchFieldException = localNoSuchFieldException;
        Log.i("ViewUtils", "fetchViewFlagsField: ");
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */