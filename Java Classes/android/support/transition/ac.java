package android.support.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

final class ac
  implements ad
{
  private final ViewGroupOverlay vh;
  
  ac(ViewGroup paramViewGroup)
  {
    this.vh = paramViewGroup.getOverlay();
  }
  
  public final void add(Drawable paramDrawable)
  {
    this.vh.add(paramDrawable);
  }
  
  public final void add(View paramView)
  {
    this.vh.add(paramView);
  }
  
  public final void remove(Drawable paramDrawable)
  {
    this.vh.remove(paramDrawable);
  }
  
  public final void remove(View paramView)
  {
    this.vh.remove(paramView);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */