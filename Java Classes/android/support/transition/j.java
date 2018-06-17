package android.support.transition;

import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.Property;

final class j
  implements k
{
  public final <T> ObjectAnimator a(T paramT, Property<T, PointF> paramProperty, Path paramPath)
  {
    return ObjectAnimator.ofObject(paramT, paramProperty, null, paramPath);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */