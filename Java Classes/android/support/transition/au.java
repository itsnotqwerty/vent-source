package android.support.transition;

import android.view.View;
import android.view.WindowId;

final class au
  implements av
{
  private final WindowId wb;
  
  au(View paramView)
  {
    this.wb = paramView.getWindowId();
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof au)) && (((au)paramObject).wb.equals(this.wb));
  }
  
  public final int hashCode()
  {
    return this.wb.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */