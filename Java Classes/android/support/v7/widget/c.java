package android.support.v7.widget;

import android.graphics.Outline;
import android.graphics.drawable.Drawable;

final class c
  extends b
{
  public c(ActionBarContainer paramActionBarContainer)
  {
    super(paramActionBarContainer);
  }
  
  public final void getOutline(Outline paramOutline)
  {
    if (this.Tj.Tq) {
      if (this.Tj.Tp != null) {
        this.Tj.Tp.getOutline(paramOutline);
      }
    }
    while (this.Tj.RK == null) {
      return;
    }
    this.Tj.RK.getOutline(paramOutline);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */