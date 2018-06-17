package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.WindowInsets;

public final class z
{
  public final Object HA;
  
  public z(Object paramObject)
  {
    this.HA = paramObject;
  }
  
  static z F(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    return new z(paramObject);
  }
  
  static Object a(z paramz)
  {
    if (paramz == null) {
      return null;
    }
    return paramz.HA;
  }
  
  public final z e(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return new z(((WindowInsets)this.HA).replaceSystemWindowInsets(paramInt1, paramInt2, paramInt3, paramInt4));
    }
    return null;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (z)paramObject;
      if (this.HA != null) {
        break;
      }
    } while (((z)paramObject).HA == null);
    return false;
    return this.HA.equals(((z)paramObject).HA);
  }
  
  public final int getSystemWindowInsetBottom()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return ((WindowInsets)this.HA).getSystemWindowInsetBottom();
    }
    return 0;
  }
  
  public final int getSystemWindowInsetLeft()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return ((WindowInsets)this.HA).getSystemWindowInsetLeft();
    }
    return 0;
  }
  
  public final int getSystemWindowInsetRight()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return ((WindowInsets)this.HA).getSystemWindowInsetRight();
    }
    return 0;
  }
  
  public final int getSystemWindowInsetTop()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return ((WindowInsets)this.HA).getSystemWindowInsetTop();
    }
    return 0;
  }
  
  public final int hashCode()
  {
    if (this.HA == null) {
      return 0;
    }
    return this.HA.hashCode();
  }
  
  public final boolean isConsumed()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return ((WindowInsets)this.HA).isConsumed();
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */