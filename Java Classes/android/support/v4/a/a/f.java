package android.support.v4.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.util.Log;
import java.lang.reflect.Method;

final class f
  extends e
{
  private static Method Cd;
  
  f(Drawable paramDrawable)
  {
    super(paramDrawable);
    dh();
  }
  
  f(d.a parama, Resources paramResources)
  {
    super(parama, paramResources);
    dh();
  }
  
  private static void dh()
  {
    if (Cd == null) {}
    try
    {
      Cd = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
      return;
    }
    catch (Exception localException)
    {
      Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", localException);
    }
  }
  
  final d.a df()
  {
    return new a(this.Ca);
  }
  
  protected final boolean dg()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (Build.VERSION.SDK_INT == 21)
    {
      Drawable localDrawable = this.Cb;
      if ((!(localDrawable instanceof GradientDrawable)) && (!(localDrawable instanceof DrawableContainer)) && (!(localDrawable instanceof InsetDrawable)))
      {
        bool1 = bool2;
        if (!(localDrawable instanceof RippleDrawable)) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public final Rect getDirtyBounds()
  {
    return this.Cb.getDirtyBounds();
  }
  
  public final void getOutline(Outline paramOutline)
  {
    this.Cb.getOutline(paramOutline);
  }
  
  public final void setHotspot(float paramFloat1, float paramFloat2)
  {
    this.Cb.setHotspot(paramFloat1, paramFloat2);
  }
  
  public final void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.Cb.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public final boolean setState(int[] paramArrayOfInt)
  {
    if (super.setState(paramArrayOfInt))
    {
      invalidateSelf();
      return true;
    }
    return false;
  }
  
  public final void setTint(int paramInt)
  {
    if (dg())
    {
      super.setTint(paramInt);
      return;
    }
    this.Cb.setTint(paramInt);
  }
  
  public final void setTintList(ColorStateList paramColorStateList)
  {
    if (dg())
    {
      super.setTintList(paramColorStateList);
      return;
    }
    this.Cb.setTintList(paramColorStateList);
  }
  
  public final void setTintMode(PorterDuff.Mode paramMode)
  {
    if (dg())
    {
      super.setTintMode(paramMode);
      return;
    }
    this.Cb.setTintMode(paramMode);
  }
  
  private static final class a
    extends d.a
  {
    a(d.a parama)
    {
      super();
    }
    
    public final Drawable newDrawable(Resources paramResources)
    {
      return new f(this, paramResources);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/a/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */