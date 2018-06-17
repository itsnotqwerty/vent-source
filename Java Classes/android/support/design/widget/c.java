package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.support.v4.a.a;

class c
  extends Drawable
{
  final Paint jT = new Paint(1);
  final Rect jU = new Rect();
  final RectF jV = new RectF();
  float jW;
  int jX;
  int jY;
  int jZ;
  int ka;
  private ColorStateList kb;
  private int kc;
  boolean kd = true;
  float ke;
  
  public c()
  {
    this.jT.setStyle(Paint.Style.STROKE);
  }
  
  final void a(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null) {
      this.kc = paramColorStateList.getColorForState(getState(), this.kc);
    }
    this.kb = paramColorStateList;
    this.kd = true;
    invalidateSelf();
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (this.kd)
    {
      localObject1 = this.jT;
      Object localObject2 = this.jU;
      copyBounds((Rect)localObject2);
      f1 = this.jW / ((Rect)localObject2).height();
      int i = a.l(this.jX, this.kc);
      int j = a.l(this.jY, this.kc);
      int k = a.l(a.n(this.jY, 0), this.kc);
      int m = a.l(a.n(this.ka, 0), this.kc);
      int n = a.l(this.ka, this.kc);
      int i1 = a.l(this.jZ, this.kc);
      float f2 = ((Rect)localObject2).top;
      float f3 = ((Rect)localObject2).bottom;
      localObject2 = Shader.TileMode.CLAMP;
      ((Paint)localObject1).setShader(new LinearGradient(0.0F, f2, 0.0F, f3, new int[] { i, j, k, m, n, i1 }, new float[] { 0.0F, f1, 0.5F, 0.5F, 1.0F - f1, 1.0F }, (Shader.TileMode)localObject2));
      this.kd = false;
    }
    float f1 = this.jT.getStrokeWidth() / 2.0F;
    Object localObject1 = this.jV;
    copyBounds(this.jU);
    ((RectF)localObject1).set(this.jU);
    ((RectF)localObject1).left += f1;
    ((RectF)localObject1).top += f1;
    ((RectF)localObject1).right -= f1;
    ((RectF)localObject1).bottom -= f1;
    paramCanvas.save();
    paramCanvas.rotate(this.ke, ((RectF)localObject1).centerX(), ((RectF)localObject1).centerY());
    paramCanvas.drawOval((RectF)localObject1, this.jT);
    paramCanvas.restore();
  }
  
  public int getOpacity()
  {
    if (this.jW > 0.0F) {
      return -3;
    }
    return -2;
  }
  
  public boolean getPadding(Rect paramRect)
  {
    int i = Math.round(this.jW);
    paramRect.set(i, i, i, i);
    return true;
  }
  
  public boolean isStateful()
  {
    return ((this.kb != null) && (this.kb.isStateful())) || (super.isStateful());
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    this.kd = true;
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    if (this.kb != null)
    {
      int i = this.kb.getColorForState(paramArrayOfInt, this.kc);
      if (i != this.kc)
      {
        this.kd = true;
        this.kc = i;
      }
    }
    if (this.kd) {
      invalidateSelf();
    }
    return this.kd;
  }
  
  public void setAlpha(int paramInt)
  {
    this.jT.setAlpha(paramInt);
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.jT.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */