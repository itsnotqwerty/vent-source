package android.support.transition;

import android.animation.PropertyValuesHolder;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build.VERSION;
import android.util.Property;

final class n
{
  private static final q ua = new o();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      ua = new p();
      return;
    }
  }
  
  static PropertyValuesHolder a(Property<?, PointF> paramProperty, Path paramPath)
  {
    return ua.a(paramProperty, paramPath);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */