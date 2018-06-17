package android.support.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

final class m<T>
  extends Property<T, Float>
{
  private final PathMeasure rD;
  private final Property<T, PointF> tV;
  private final float tW;
  private final float[] tX = new float[2];
  private final PointF tY = new PointF();
  private float tZ;
  
  m(Property<T, PointF> paramProperty, Path paramPath)
  {
    super(Float.class, paramProperty.getName());
    this.tV = paramProperty;
    this.rD = new PathMeasure(paramPath, false);
    this.tW = this.rD.getLength();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */