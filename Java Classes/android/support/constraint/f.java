package android.support.constraint;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;

public final class f
  extends View
{
  int dF;
  View dG;
  int dH;
  
  public final View getContent()
  {
    return this.dG;
  }
  
  public final int getEmptyVisibility()
  {
    return this.dH;
  }
  
  public final void onDraw(Canvas paramCanvas)
  {
    if (isInEditMode())
    {
      paramCanvas.drawRGB(223, 223, 223);
      Paint localPaint = new Paint();
      localPaint.setARGB(255, 210, 210, 210);
      localPaint.setTextAlign(Paint.Align.CENTER);
      localPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
      Rect localRect = new Rect();
      paramCanvas.getClipBounds(localRect);
      localPaint.setTextSize(localRect.height());
      int i = localRect.height();
      int j = localRect.width();
      localPaint.setTextAlign(Paint.Align.LEFT);
      localPaint.getTextBounds("?", 0, "?".length(), localRect);
      paramCanvas.drawText("?", j / 2.0F - localRect.width() / 2.0F - localRect.left, i / 2.0F + localRect.height() / 2.0F - localRect.bottom, localPaint);
    }
  }
  
  public final void setContentId(int paramInt)
  {
    if (this.dF == paramInt) {}
    View localView;
    do
    {
      do
      {
        return;
        if (this.dG != null)
        {
          this.dG.setVisibility(0);
          ((ConstraintLayout.a)this.dG.getLayoutParams()).cJ = false;
          this.dG = null;
        }
        this.dF = paramInt;
      } while (paramInt == -1);
      localView = ((View)getParent()).findViewById(paramInt);
    } while (localView == null);
    localView.setVisibility(8);
  }
  
  public final void setEmptyVisibility(int paramInt)
  {
    this.dH = paramInt;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */