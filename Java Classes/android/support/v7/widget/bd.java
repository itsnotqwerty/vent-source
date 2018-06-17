package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

final class bd
  extends Drawable
{
  float agp;
  private final RectF agq;
  private final Rect agr;
  float ags;
  boolean agt = false;
  boolean agu = true;
  ColorStateList agv;
  private final Paint jT;
  private PorterDuffColorFilter qQ;
  private ColorStateList rN;
  private PorterDuff.Mode rO = PorterDuff.Mode.SRC_IN;
  
  bd(ColorStateList paramColorStateList, float paramFloat)
  {
    this.agp = paramFloat;
    this.jT = new Paint(5);
    e(paramColorStateList);
    this.agq = new RectF();
    this.agr = new Rect();
  }
  
  private PorterDuffColorFilter b(ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    if ((paramColorStateList == null) || (paramMode == null)) {
      return null;
    }
    return new PorterDuffColorFilter(paramColorStateList.getColorForState(getState(), 0), paramMode);
  }
  
  public final void draw(Canvas paramCanvas)
  {
    Paint localPaint = this.jT;
    if ((this.qQ != null) && (localPaint.getColorFilter() == null)) {
      localPaint.setColorFilter(this.qQ);
    }
    for (int i = 1;; i = 0)
    {
      paramCanvas.drawRoundRect(this.agq, this.agp, this.agp, localPaint);
      if (i != 0) {
        localPaint.setColorFilter(null);
      }
      return;
    }
  }
  
  final void e(ColorStateList paramColorStateList)
  {
    ColorStateList localColorStateList = paramColorStateList;
    if (paramColorStateList == null) {
      localColorStateList = ColorStateList.valueOf(0);
    }
    this.agv = localColorStateList;
    this.jT.setColor(this.agv.getColorForState(getState(), this.agv.getDefaultColor()));
  }
  
  final void f(Rect paramRect)
  {
    Rect localRect = paramRect;
    if (paramRect == null) {
      localRect = getBounds();
    }
    this.agq.set(localRect.left, localRect.top, localRect.right, localRect.bottom);
    this.agr.set(localRect);
    if (this.agt)
    {
      float f1 = be.a(this.ags, this.agp, this.agu);
      float f2 = be.b(this.ags, this.agp, this.agu);
      this.agr.inset((int)Math.ceil(f2), (int)Math.ceil(f1));
      this.agq.set(this.agr);
    }
  }
  
  public final int getOpacity()
  {
    return -3;
  }
  
  public final void getOutline(Outline paramOutline)
  {
    paramOutline.setRoundRect(this.agr, this.agp);
  }
  
  public final boolean isStateful()
  {
    return ((this.rN != null) && (this.rN.isStateful())) || ((this.agv != null) && (this.agv.isStateful())) || (super.isStateful());
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    f(paramRect);
  }
  
  protected final boolean onStateChange(int[] paramArrayOfInt)
  {
    int i = this.agv.getColorForState(paramArrayOfInt, this.agv.getDefaultColor());
    if (i != this.jT.getColor()) {}
    for (boolean bool = true;; bool = false)
    {
      if (bool) {
        this.jT.setColor(i);
      }
      if ((this.rN == null) || (this.rO == null)) {
        break;
      }
      this.qQ = b(this.rN, this.rO);
      return true;
    }
    return bool;
  }
  
  public final void setAlpha(int paramInt)
  {
    this.jT.setAlpha(paramInt);
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    this.jT.setColorFilter(paramColorFilter);
  }
  
  public final void setTintList(ColorStateList paramColorStateList)
  {
    this.rN = paramColorStateList;
    this.qQ = b(this.rN, this.rO);
    invalidateSelf();
  }
  
  public final void setTintMode(PorterDuff.Mode paramMode)
  {
    this.rO = paramMode;
    this.qQ = b(this.rN, this.rO);
    invalidateSelf();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */