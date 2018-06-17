package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a.a;
import android.util.AttributeSet;
import android.widget.SeekBar;

public final class x
  extends SeekBar
{
  private final y Ws = new y(this);
  
  public x(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.seekBarStyle);
  }
  
  private x(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.Ws.a(paramAttributeSet, paramInt);
  }
  
  protected final void drawableStateChanged()
  {
    super.drawableStateChanged();
    y localy = this.Ws;
    Drawable localDrawable = localy.Wu;
    if ((localDrawable != null) && (localDrawable.isStateful()) && (localDrawable.setState(localy.Wt.getDrawableState()))) {
      localy.Wt.invalidateDrawable(localDrawable);
    }
  }
  
  public final void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    y localy = this.Ws;
    if (localy.Wu != null) {
      localy.Wu.jumpToCurrentState();
    }
  }
  
  protected final void onDraw(Canvas paramCanvas)
  {
    int j = 1;
    for (;;)
    {
      try
      {
        super.onDraw(paramCanvas);
        y localy = this.Ws;
        if (localy.Wu != null)
        {
          int k = localy.Wt.getMax();
          if (k > 1)
          {
            i = localy.Wu.getIntrinsicWidth();
            int m = localy.Wu.getIntrinsicHeight();
            if (i < 0) {
              break label200;
            }
            i /= 2;
            if (m >= 0) {
              j = m / 2;
            }
            localy.Wu.setBounds(-i, -j, i, j);
            float f = (localy.Wt.getWidth() - localy.Wt.getPaddingLeft() - localy.Wt.getPaddingRight()) / k;
            j = paramCanvas.save();
            paramCanvas.translate(localy.Wt.getPaddingLeft(), localy.Wt.getHeight() / 2);
            i = 0;
            if (i <= k)
            {
              localy.Wu.draw(paramCanvas);
              paramCanvas.translate(f, 0.0F);
              i += 1;
              continue;
            }
            paramCanvas.restoreToCount(j);
          }
        }
        return;
      }
      finally {}
      label200:
      int i = 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */