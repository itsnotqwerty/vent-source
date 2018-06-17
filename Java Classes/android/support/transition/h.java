package android.support.transition;

import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build.VERSION;
import android.util.Property;

final class h
{
  private static final k tU = new i();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      tU = new j();
      return;
    }
  }
  
  static <T> ObjectAnimator a(T paramT, Property<T, PointF> paramProperty, Path paramPath)
  {
    return tU.a(paramT, paramProperty, paramPath);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */