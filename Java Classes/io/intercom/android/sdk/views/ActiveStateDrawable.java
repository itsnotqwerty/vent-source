package io.intercom.android.sdk.views;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public class ActiveStateDrawable
  extends Drawable
{
  private final Paint paint = new Paint();
  private final RectF roundRect = new RectF();
  private final int stateColor;
  private final int strokeColor;
  private final float strokeWidth;
  
  public ActiveStateDrawable(int paramInt1, int paramInt2, float paramFloat)
  {
    this.stateColor = paramInt1;
    this.strokeColor = paramInt2;
    this.strokeWidth = paramFloat;
    this.paint.setAntiAlias(true);
  }
  
  public void draw(Canvas paramCanvas)
  {
    this.roundRect.set(getBounds());
    this.roundRect.inset(this.strokeWidth, this.strokeWidth);
    this.paint.setColor(this.stateColor);
    this.paint.setStyle(Paint.Style.FILL);
    paramCanvas.drawRoundRect(this.roundRect, paramCanvas.getHeight() / 2, paramCanvas.getHeight() / 2, this.paint);
    this.paint.setColor(this.strokeColor);
    this.paint.setStyle(Paint.Style.STROKE);
    this.paint.setStrokeWidth(this.strokeWidth);
    paramCanvas.drawRoundRect(this.roundRect, paramCanvas.getHeight() / 2, paramCanvas.getHeight() / 2, this.paint);
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public void setAlpha(int paramInt)
  {
    this.paint.setAlpha(paramInt);
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.paint.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/ActiveStateDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */