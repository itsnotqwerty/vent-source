package android.support.constraint;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

public final class e
  extends View
{
  public e(Context paramContext)
  {
    super(paramContext);
    super.setVisibility(8);
  }
  
  public final void draw(Canvas paramCanvas) {}
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(0, 0);
  }
  
  public final void setGuidelineBegin(int paramInt)
  {
    ConstraintLayout.a locala = (ConstraintLayout.a)getLayoutParams();
    locala.bM = paramInt;
    setLayoutParams(locala);
  }
  
  public final void setGuidelineEnd(int paramInt)
  {
    ConstraintLayout.a locala = (ConstraintLayout.a)getLayoutParams();
    locala.bN = paramInt;
    setLayoutParams(locala);
  }
  
  public final void setGuidelinePercent(float paramFloat)
  {
    ConstraintLayout.a locala = (ConstraintLayout.a)getLayoutParams();
    locala.bO = paramFloat;
    setLayoutParams(locala);
  }
  
  public final void setVisibility(int paramInt) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */