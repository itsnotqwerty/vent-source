package android.support.design.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

class u
  extends ImageButton
{
  private int qk = getVisibility();
  
  public u(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public u(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public u(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  final void b(int paramInt, boolean paramBoolean)
  {
    super.setVisibility(paramInt);
    if (paramBoolean) {
      this.qk = paramInt;
    }
  }
  
  final int getUserSetVisibility()
  {
    return this.qk;
  }
  
  public void setVisibility(int paramInt)
  {
    b(paramInt, true);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */