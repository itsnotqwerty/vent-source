package android.support.transition;

import android.animation.PropertyValuesHolder;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.Property;

final class o
  implements q
{
  public final PropertyValuesHolder a(Property<?, PointF> paramProperty, Path paramPath)
  {
    return PropertyValuesHolder.ofFloat(new m(paramProperty, paramPath), new float[] { 0.0F, 1.0F });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */