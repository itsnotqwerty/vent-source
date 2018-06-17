package android.support.v4.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;

class d
  extends Drawable
  implements Drawable.Callback, b, c
{
  static final PorterDuff.Mode qO = PorterDuff.Mode.SRC_IN;
  private int BX;
  private PorterDuff.Mode BY;
  private boolean BZ;
  a Ca;
  Drawable Cb;
  private boolean qS;
  
  d(Drawable paramDrawable)
  {
    this.Ca = df();
    h(paramDrawable);
  }
  
  d(a parama, Resources paramResources)
  {
    this.Ca = parama;
    if ((this.Ca != null) && (this.Ca.Cc != null)) {
      h(this.Ca.Cc.newDrawable(paramResources));
    }
  }
  
  private boolean b(int[] paramArrayOfInt)
  {
    if (!dg()) {}
    PorterDuff.Mode localMode;
    int i;
    do
    {
      return false;
      ColorStateList localColorStateList = this.Ca.rN;
      localMode = this.Ca.rO;
      if ((localColorStateList == null) || (localMode == null)) {
        break;
      }
      i = localColorStateList.getColorForState(paramArrayOfInt, localColorStateList.getDefaultColor());
    } while ((this.BZ) && (i == this.BX) && (localMode == this.BY));
    setColorFilter(i, localMode);
    this.BX = i;
    this.BY = localMode;
    this.BZ = true;
    return true;
    this.BZ = false;
    clearColorFilter();
    return false;
  }
  
  public final Drawable de()
  {
    return this.Cb;
  }
  
  a df()
  {
    return new b(this.Ca);
  }
  
  protected boolean dg()
  {
    return true;
  }
  
  public void draw(Canvas paramCanvas)
  {
    this.Cb.draw(paramCanvas);
  }
  
  public int getChangingConfigurations()
  {
    int j = super.getChangingConfigurations();
    if (this.Ca != null) {}
    for (int i = this.Ca.getChangingConfigurations();; i = 0) {
      return i | j | this.Cb.getChangingConfigurations();
    }
  }
  
  public Drawable.ConstantState getConstantState()
  {
    if (this.Ca != null)
    {
      if (this.Ca.Cc != null) {}
      for (int i = 1; i != 0; i = 0)
      {
        this.Ca.qD = getChangingConfigurations();
        return this.Ca;
      }
    }
    return null;
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
  
  public final void h(Drawable paramDrawable)
  {
    if (this.Cb != null) {
      this.Cb.setCallback(null);
    }
    this.Cb = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      setVisible(paramDrawable.isVisible(), true);
      setState(paramDrawable.getState());
      setLevel(paramDrawable.getLevel());
      setBounds(paramDrawable.getBounds());
      if (this.Ca != null) {
        this.Ca.Cc = paramDrawable.getConstantState();
      }
    }
    invalidateSelf();
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    invalidateSelf();
  }
  
  public boolean isStateful()
  {
    if ((dg()) && (this.Ca != null)) {}
    for (ColorStateList localColorStateList = this.Ca.rN; ((localColorStateList != null) && (localColorStateList.isStateful())) || (this.Cb.isStateful()); localColorStateList = null) {
      return true;
    }
    return false;
  }
  
  public void jumpToCurrentState()
  {
    this.Cb.jumpToCurrentState();
  }
  
  public Drawable mutate()
  {
    a locala;
    if ((!this.qS) && (super.mutate() == this))
    {
      this.Ca = df();
      if (this.Cb != null) {
        this.Cb.mutate();
      }
      if (this.Ca != null)
      {
        locala = this.Ca;
        if (this.Cb == null) {
          break label77;
        }
      }
    }
    label77:
    for (Drawable.ConstantState localConstantState = this.Cb.getConstantState();; localConstantState = null)
    {
      locala.Cc = localConstantState;
      this.qS = true;
      return this;
    }
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    if (this.Cb != null) {
      this.Cb.setBounds(paramRect);
    }
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
  
  public boolean setState(int[] paramArrayOfInt)
  {
    boolean bool = this.Cb.setState(paramArrayOfInt);
    return (b(paramArrayOfInt)) || (bool);
  }
  
  public void setTint(int paramInt)
  {
    setTintList(ColorStateList.valueOf(paramInt));
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    this.Ca.rN = paramColorStateList;
    b(getState());
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    this.Ca.rO = paramMode;
    b(getState());
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (super.setVisible(paramBoolean1, paramBoolean2)) || (this.Cb.setVisible(paramBoolean1, paramBoolean2));
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    unscheduleSelf(paramRunnable);
  }
  
  protected static abstract class a
    extends Drawable.ConstantState
  {
    Drawable.ConstantState Cc;
    int qD;
    ColorStateList rN = null;
    PorterDuff.Mode rO = d.qO;
    
    a(a parama)
    {
      if (parama != null)
      {
        this.qD = parama.qD;
        this.Cc = parama.Cc;
        this.rN = parama.rN;
        this.rO = parama.rO;
      }
    }
    
    public int getChangingConfigurations()
    {
      int j = this.qD;
      if (this.Cc != null) {}
      for (int i = this.Cc.getChangingConfigurations();; i = 0) {
        return i | j;
      }
    }
    
    public Drawable newDrawable()
    {
      return newDrawable(null);
    }
    
    public abstract Drawable newDrawable(Resources paramResources);
  }
  
  private static final class b
    extends d.a
  {
    b(d.a parama)
    {
      super();
    }
    
    public final Drawable newDrawable(Resources paramResources)
    {
      return new d(this, paramResources);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/a/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */