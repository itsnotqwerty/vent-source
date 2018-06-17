package android.support.c.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.support.v4.a.b;
import android.support.v4.content.a.c;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import org.xmlpull.v1.XmlPullParser;

public final class g
  implements Interpolator
{
  private float[] qL;
  private float[] qM;
  
  public g(Context paramContext, AttributeSet paramAttributeSet, XmlPullParser paramXmlPullParser)
  {
    this(paramContext.getResources(), paramContext.getTheme(), paramAttributeSet, paramXmlPullParser);
  }
  
  private g(Resources paramResources, Resources.Theme paramTheme, AttributeSet paramAttributeSet, XmlPullParser paramXmlPullParser)
  {
    paramResources = c.a(paramResources, paramTheme, paramAttributeSet, a.qw);
    if (c.a(paramXmlPullParser, "pathData"))
    {
      paramTheme = c.b(paramResources, paramXmlPullParser, "pathData", 4);
      paramAttributeSet = b.x(paramTheme);
      if (paramAttributeSet == null) {
        throw new InflateException("The path is null, which is created from " + paramTheme);
      }
      a(paramAttributeSet);
    }
    for (;;)
    {
      paramResources.recycle();
      return;
      if (!c.a(paramXmlPullParser, "controlX1")) {
        throw new InflateException("pathInterpolator requires the controlX1 attribute");
      }
      if (!c.a(paramXmlPullParser, "controlY1")) {
        throw new InflateException("pathInterpolator requires the controlY1 attribute");
      }
      float f1 = c.a(paramResources, paramXmlPullParser, "controlX1", 0, 0.0F);
      float f2 = c.a(paramResources, paramXmlPullParser, "controlY1", 1, 0.0F);
      boolean bool = c.a(paramXmlPullParser, "controlX2");
      if (bool != c.a(paramXmlPullParser, "controlY2")) {
        throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
      }
      if (!bool)
      {
        paramTheme = new Path();
        paramTheme.moveTo(0.0F, 0.0F);
        paramTheme.quadTo(f1, f2, 1.0F, 1.0F);
        a(paramTheme);
      }
      else
      {
        float f3 = c.a(paramResources, paramXmlPullParser, "controlX2", 2, 0.0F);
        float f4 = c.a(paramResources, paramXmlPullParser, "controlY2", 3, 0.0F);
        paramTheme = new Path();
        paramTheme.moveTo(0.0F, 0.0F);
        paramTheme.cubicTo(f1, f2, f3, f4, 1.0F, 1.0F);
        a(paramTheme);
      }
    }
  }
  
  private void a(Path paramPath)
  {
    paramPath = new PathMeasure(paramPath, false);
    float f1 = paramPath.getLength();
    int k = Math.min(3000, (int)(f1 / 0.002F) + 1);
    if (k <= 0) {
      throw new IllegalArgumentException("The Path has a invalid length " + f1);
    }
    this.qL = new float[k];
    this.qM = new float[k];
    float[] arrayOfFloat = new float[2];
    int i = 0;
    while (i < k)
    {
      paramPath.getPosTan(i * f1 / (k - 1), arrayOfFloat, null);
      this.qL[i] = arrayOfFloat[0];
      this.qM[i] = arrayOfFloat[1];
      i += 1;
    }
    if ((Math.abs(this.qL[0]) > 1.0E-5D) || (Math.abs(this.qM[0]) > 1.0E-5D) || (Math.abs(this.qL[(k - 1)] - 1.0F) > 1.0E-5D) || (Math.abs(this.qM[(k - 1)] - 1.0F) > 1.0E-5D)) {
      throw new IllegalArgumentException("The Path must start at (0,0) and end at (1,1) start: " + this.qL[0] + "," + this.qM[0] + " end:" + this.qL[(k - 1)] + "," + this.qM[(k - 1)]);
    }
    f1 = 0.0F;
    i = 0;
    int j = 0;
    while (j < k)
    {
      float f2 = this.qL[i];
      if (f2 < f1) {
        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f2);
      }
      this.qL[j] = f2;
      j += 1;
      i += 1;
      f1 = f2;
    }
    if (paramPath.nextContour()) {
      throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
    }
  }
  
  public final float getInterpolation(float paramFloat)
  {
    if (paramFloat <= 0.0F) {
      return 0.0F;
    }
    if (paramFloat >= 1.0F) {
      return 1.0F;
    }
    int j = this.qL.length - 1;
    int i = 0;
    while (j - i > 1)
    {
      int k = (i + j) / 2;
      if (paramFloat < this.qL[k]) {
        j = k;
      } else {
        i = k;
      }
    }
    float f = this.qL[j] - this.qL[i];
    if (f == 0.0F) {
      return this.qM[i];
    }
    paramFloat = (paramFloat - this.qL[i]) / f;
    f = this.qM[i];
    return paramFloat * (this.qM[j] - f) + f;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/c/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */