package android.support.c.a;

import android.content.res.Resources.Theme;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.a.a.a;
import android.support.v4.a.a.b;

abstract class h
  extends Drawable
  implements b
{
  Drawable qN;
  
  public void applyTheme(Resources.Theme paramTheme)
  {
    if (this.qN != null) {
      a.a(this.qN, paramTheme);
    }
  }
  
  public void clearColorFilter()
  {
    if (this.qN != null)
    {
      this.qN.clearColorFilter();
      return;
    }
    super.clearColorFilter();
  }
  
  public ColorFilter getColorFilter()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (this.qN != null)
    {
      Drawable localDrawable = this.qN;
      localObject1 = localObject2;
      if (Build.VERSION.SDK_INT >= 21) {
        localObject1 = localDrawable.getColorFilter();
      }
    }
    return (ColorFilter)localObject1;
  }
  
  public Drawable getCurrent()
  {
    if (this.qN != null) {
      return this.qN.getCurrent();
    }
    return super.getCurrent();
  }
  
  public int getMinimumHeight()
  {
    if (this.qN != null) {
      return this.qN.getMinimumHeight();
    }
    return super.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    if (this.qN != null) {
      return this.qN.getMinimumWidth();
    }
    return super.getMinimumWidth();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    if (this.qN != null) {
      return this.qN.getPadding(paramRect);
    }
    return super.getPadding(paramRect);
  }
  
  public int[] getState()
  {
    if (this.qN != null) {
      return this.qN.getState();
    }
    return super.getState();
  }
  
  public Region getTransparentRegion()
  {
    if (this.qN != null) {
      return this.qN.getTransparentRegion();
    }
    return super.getTransparentRegion();
  }
  
  public void jumpToCurrentState()
  {
    if (this.qN != null) {
      this.qN.jumpToCurrentState();
    }
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    if (this.qN != null)
    {
      this.qN.setBounds(paramRect);
      return;
    }
    super.onBoundsChange(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    if (this.qN != null) {
      return this.qN.setLevel(paramInt);
    }
    return super.onLevelChange(paramInt);
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    if (this.qN != null)
    {
      this.qN.setChangingConfigurations(paramInt);
      return;
    }
    super.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(int paramInt, PorterDuff.Mode paramMode)
  {
    if (this.qN != null)
    {
      this.qN.setColorFilter(paramInt, paramMode);
      return;
    }
    super.setColorFilter(paramInt, paramMode);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    if (this.qN != null) {
      this.qN.setFilterBitmap(paramBoolean);
    }
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    if (this.qN != null) {
      a.a(this.qN, paramFloat1, paramFloat2);
    }
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.qN != null) {
      a.a(this.qN, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    if (this.qN != null) {
      return this.qN.setState(paramArrayOfInt);
    }
    return super.setState(paramArrayOfInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/c/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */