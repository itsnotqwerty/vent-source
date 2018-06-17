package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.design.a.k;
import android.support.v7.widget.at;
import android.util.AttributeSet;
import android.view.Gravity;

public class a
  extends at
{
  private Drawable ie;
  private final Rect jdField_if = new Rect();
  private final Rect ig = new Rect();
  private int ih = 119;
  protected boolean ii = true;
  boolean ij = false;
  
  public a(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public a(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.ForegroundLinearLayout, paramInt, 0);
    this.ih = paramContext.getInt(a.k.ForegroundLinearLayout_android_foregroundGravity, this.ih);
    paramAttributeSet = paramContext.getDrawable(a.k.ForegroundLinearLayout_android_foreground);
    if (paramAttributeSet != null) {
      setForeground(paramAttributeSet);
    }
    this.ii = paramContext.getBoolean(a.k.ForegroundLinearLayout_foregroundInsidePadding, true);
    paramContext.recycle();
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    Drawable localDrawable;
    Rect localRect1;
    Rect localRect2;
    int i;
    int j;
    if (this.ie != null)
    {
      localDrawable = this.ie;
      if (this.ij)
      {
        this.ij = false;
        localRect1 = this.jdField_if;
        localRect2 = this.ig;
        i = getRight() - getLeft();
        j = getBottom() - getTop();
        if (!this.ii) {
          break label113;
        }
        localRect1.set(0, 0, i, j);
      }
    }
    for (;;)
    {
      Gravity.apply(this.ih, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight(), localRect1, localRect2);
      localDrawable.setBounds(localRect2);
      localDrawable.draw(paramCanvas);
      return;
      label113:
      localRect1.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), j - getPaddingBottom());
    }
  }
  
  public void drawableHotspotChanged(float paramFloat1, float paramFloat2)
  {
    super.drawableHotspotChanged(paramFloat1, paramFloat2);
    if (this.ie != null) {
      this.ie.setHotspot(paramFloat1, paramFloat2);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if ((this.ie != null) && (this.ie.isStateful())) {
      this.ie.setState(getDrawableState());
    }
  }
  
  public Drawable getForeground()
  {
    return this.ie;
  }
  
  public int getForegroundGravity()
  {
    return this.ih;
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (this.ie != null) {
      this.ie.jumpToCurrentState();
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.ij |= paramBoolean;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    this.ij = true;
  }
  
  public void setForeground(Drawable paramDrawable)
  {
    if (this.ie != paramDrawable)
    {
      if (this.ie != null)
      {
        this.ie.setCallback(null);
        unscheduleDrawable(this.ie);
      }
      this.ie = paramDrawable;
      if (paramDrawable == null) {
        break label96;
      }
      setWillNotDraw(false);
      paramDrawable.setCallback(this);
      if (paramDrawable.isStateful()) {
        paramDrawable.setState(getDrawableState());
      }
      if (this.ih == 119) {
        paramDrawable.getPadding(new Rect());
      }
    }
    for (;;)
    {
      requestLayout();
      invalidate();
      return;
      label96:
      setWillNotDraw(true);
    }
  }
  
  public void setForegroundGravity(int paramInt)
  {
    if (this.ih != paramInt)
    {
      if ((0x800007 & paramInt) != 0) {
        break label77;
      }
      paramInt = 0x800003 | paramInt;
    }
    label77:
    for (;;)
    {
      int i = paramInt;
      if ((paramInt & 0x70) == 0) {
        i = paramInt | 0x30;
      }
      this.ih = i;
      if ((this.ih == 119) && (this.ie != null))
      {
        Rect localRect = new Rect();
        this.ie.getPadding(localRect);
      }
      requestLayout();
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.ie);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/internal/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */