package android.support.v4.view.b;

import android.view.animation.Interpolator;

abstract class d
  implements Interpolator
{
  private final float[] HH;
  private final float HI;
  
  protected d(float[] paramArrayOfFloat)
  {
    this.HH = paramArrayOfFloat;
    this.HI = (1.0F / (this.HH.length - 1));
  }
  
  public float getInterpolation(float paramFloat)
  {
    if (paramFloat >= 1.0F) {
      return 1.0F;
    }
    if (paramFloat <= 0.0F) {
      return 0.0F;
    }
    int i = Math.min((int)((this.HH.length - 1) * paramFloat), this.HH.length - 2);
    paramFloat = (paramFloat - i * this.HI) / this.HI;
    float f = this.HH[i];
    return (this.HH[(i + 1)] - this.HH[i]) * paramFloat + f;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/b/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */