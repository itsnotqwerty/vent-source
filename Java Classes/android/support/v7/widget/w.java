package android.support.v7.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v7.a.a.a;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;

public final class w
  extends RatingBar
{
  private final u Wr = new u(this);
  
  public w(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.ratingBarStyle);
  }
  
  private w(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.Wr.a(paramAttributeSet, paramInt);
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    try
    {
      super.onMeasure(paramInt1, paramInt2);
      Bitmap localBitmap = this.Wr.Wq;
      if (localBitmap != null) {
        setMeasuredDimension(View.resolveSizeAndState(localBitmap.getWidth() * getNumStars(), paramInt1, 0), getMeasuredHeight());
      }
      return;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */