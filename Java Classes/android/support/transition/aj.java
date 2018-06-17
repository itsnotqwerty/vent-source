package android.support.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

final class aj
  implements ak
{
  private final ViewOverlay vx;
  
  aj(View paramView)
  {
    this.vx = paramView.getOverlay();
  }
  
  public final void add(Drawable paramDrawable)
  {
    this.vx.add(paramDrawable);
  }
  
  public final void remove(Drawable paramDrawable)
  {
    this.vx.remove(paramDrawable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */