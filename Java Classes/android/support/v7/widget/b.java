package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

class b
  extends Drawable
{
  final ActionBarContainer Tj;
  
  public b(ActionBarContainer paramActionBarContainer)
  {
    this.Tj = paramActionBarContainer;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (this.Tj.Tq) {
      if (this.Tj.Tp != null) {
        this.Tj.Tp.draw(paramCanvas);
      }
    }
    do
    {
      return;
      if (this.Tj.RK != null) {
        this.Tj.RK.draw(paramCanvas);
      }
    } while ((this.Tj.To == null) || (!this.Tj.Tr));
    this.Tj.To.draw(paramCanvas);
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */