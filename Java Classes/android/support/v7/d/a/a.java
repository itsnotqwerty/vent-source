package android.support.v7.d.a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;

public class a
  extends Drawable
  implements Drawable.Callback
{
  public Drawable Cb;
  
  public a(Drawable paramDrawable)
  {
    if (this.Cb != null) {
      this.Cb.setCallback(null);
    }
    this.Cb = paramDrawable;
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    this.Cb.draw(paramCanvas);
  }
  
  public int getChangingConfigurations()
  {
    return this.Cb.getChangingConfigurations();
  }
  
  public Drawable getCurrent()
  {
    return this.Cb.getCurrent();
  }
  
  public int getIntrinsicHeight()
  {
    return this.Cb.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return this.Cb.getIntrinsicWidth();
  }
  
  public int getMinimumHeight()
  {
    return this.Cb.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    return this.Cb.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    return this.Cb.getOpacity();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    return this.Cb.getPadding(paramRect);
  }
  
  public int[] getState()
  {
    return this.Cb.getState();
  }
  
  public Region getTransparentRegion()
  {
    return this.Cb.getTransparentRegion();
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    invalidateSelf();
  }
  
  public boolean isAutoMirrored()
  {
    return android.support.v4.a.a.a.b(this.Cb);
  }
  
  public boolean isStateful()
  {
    return this.Cb.isStateful();
  }
  
  public void jumpToCurrentState()
  {
    this.Cb.jumpToCurrentState();
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    this.Cb.setBounds(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    return this.Cb.setLevel(paramInt);
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    this.Cb.setAlpha(paramInt);
  }
  
  public void setAutoMirrored(boolean paramBoolean)
  {
    android.support.v4.a.a.a.a(this.Cb, paramBoolean);
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    this.Cb.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.Cb.setColorFilter(paramColorFilter);
  }
  
  public void setDither(boolean paramBoolean)
  {
    this.Cb.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    this.Cb.setFilterBitmap(paramBoolean);
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    android.support.v4.a.a.a.a(this.Cb, paramFloat1, paramFloat2);
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    android.support.v4.a.a.a.a(this.Cb, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    return this.Cb.setState(paramArrayOfInt);
  }
  
  public void setTint(int paramInt)
  {
    android.support.v4.a.a.a.a(this.Cb, paramInt);
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    android.support.v4.a.a.a.a(this.Cb, paramColorStateList);
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    android.support.v4.a.a.a.a(this.Cb, paramMode);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (super.setVisible(paramBoolean1, paramBoolean2)) || (this.Cb.setVisible(paramBoolean1, paramBoolean2));
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    unscheduleSelf(paramRunnable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/d/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */