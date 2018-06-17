package io.intercom.android.sdk.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.v4.content.a;
import io.intercom.android.sdk.R.drawable;

public class AvatarDefaultDrawable
  extends Drawable
{
  private final Paint avatarBackground;
  private final Drawable companyIcon;
  private final RectF roundRect = new RectF();
  
  public AvatarDefaultDrawable(Context paramContext, int paramInt)
  {
    this.companyIcon = a.a(paramContext, R.drawable.intercom_default_avatar_icon);
    this.avatarBackground = new Paint();
    this.avatarBackground.setAntiAlias(true);
    this.avatarBackground.setColor(paramInt);
    this.avatarBackground.setStyle(Paint.Style.FILL);
  }
  
  public void draw(Canvas paramCanvas)
  {
    this.roundRect.set(getBounds());
    paramCanvas.drawRoundRect(this.roundRect, paramCanvas.getHeight() / 2, paramCanvas.getHeight() / 2, this.avatarBackground);
    int i = (paramCanvas.getWidth() - this.companyIcon.getIntrinsicWidth()) / 2;
    int j = (paramCanvas.getHeight() - this.companyIcon.getIntrinsicHeight()) / 2;
    this.companyIcon.setBounds(i, j, this.companyIcon.getIntrinsicWidth() + i, this.companyIcon.getIntrinsicHeight() + j);
    this.companyIcon.draw(paramCanvas);
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/AvatarDefaultDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */