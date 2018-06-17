package io.intercom.android.sdk.views;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

public class AvatarInitialsDrawable
  extends Drawable
{
  private final Paint avatarBackground;
  private final String text;
  private final Rect textBounds = new Rect();
  private final Paint textPaint;
  
  public AvatarInitialsDrawable(String paramString, int paramInt)
  {
    this.text = paramString;
    this.avatarBackground = new Paint();
    this.avatarBackground.setAntiAlias(true);
    this.avatarBackground.setColor(paramInt);
    this.avatarBackground.setStyle(Paint.Style.FILL);
    this.textPaint = new Paint();
    this.textPaint.setAntiAlias(true);
    this.textPaint.setColor(-1);
    this.textPaint.setFakeBoldText(true);
    this.textPaint.setTextAlign(Paint.Align.LEFT);
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    this.textPaint.setTextSize(localRect.height() / 3);
    this.textPaint.getTextBounds(this.text, 0, this.text.length(), this.textBounds);
    paramCanvas.drawCircle(localRect.centerX(), localRect.centerY(), localRect.height() / 2, this.avatarBackground);
    paramCanvas.drawText(this.text, localRect.centerX() - this.textBounds.exactCenterX(), localRect.centerY() - this.textBounds.exactCenterY(), this.textPaint);
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public void setAlpha(int paramInt)
  {
    this.textPaint.setAlpha(paramInt);
    this.avatarBackground.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/AvatarInitialsDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */