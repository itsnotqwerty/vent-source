package io.intercom.android.sdk.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.content.a;
import android.text.TextUtils;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;

class BackButtonCountDrawable
  extends Drawable
{
  private static final String COUNT_BACKGROUND_COLOR = "#FE536C";
  private static final int COUNT_BACKGROUND_RADIUS_DP = 8;
  private static final int COUNT_TEXT_PADDING_TOP = 4;
  private static final int COUNT_TEXT_SIZE_DP = 11;
  private static final int ICON_PADDING_DP = 16;
  private static final int ICON_SIZE_DP = 24;
  private final Drawable backIcon;
  private final Paint countBackgroundPaint;
  private final int countBackgroundRadius;
  private final int iconPadding;
  private final int iconSize;
  private String text;
  private final Paint textPaint;
  private final int textTopPadding;
  
  BackButtonCountDrawable(Context paramContext, String paramString)
  {
    this.text = paramString;
    this.backIcon = a.a(paramContext, R.drawable.intercom_back);
    this.iconPadding = ScreenUtils.dpToPx(16.0F, paramContext);
    this.iconSize = ScreenUtils.dpToPx(24.0F, paramContext);
    this.countBackgroundPaint = new Paint();
    this.countBackgroundPaint.setAntiAlias(true);
    this.countBackgroundPaint.setColor(Color.parseColor("#FE536C"));
    this.countBackgroundPaint.setStyle(Paint.Style.FILL);
    this.countBackgroundRadius = ScreenUtils.dpToPx(8.0F, paramContext);
    this.textPaint = new Paint();
    this.textPaint.setAntiAlias(true);
    this.textPaint.setColor(-1);
    this.textPaint.setTextSize(ScreenUtils.dpToPx(11.0F, paramContext));
    this.textPaint.setFakeBoldText(true);
    this.textPaint.setStyle(Paint.Style.FILL);
    this.textPaint.setTextAlign(Paint.Align.CENTER);
    this.textTopPadding = ScreenUtils.dpToPx(4.0F, paramContext);
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int i = localRect.left + this.iconPadding;
    int j = localRect.top + this.iconPadding;
    int k = this.iconSize + i;
    int m = this.iconSize;
    this.backIcon.setBounds(i, j, k, m + j);
    this.backIcon.draw(paramCanvas);
    if (!TextUtils.isEmpty(this.text))
    {
      paramCanvas.drawCircle(k, j, this.countBackgroundRadius, this.countBackgroundPaint);
      paramCanvas.drawText(this.text, k, j + this.textTopPadding, this.textPaint);
    }
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public void setAlpha(int paramInt)
  {
    this.textPaint.setAlpha(paramInt);
    this.countBackgroundPaint.setAlpha(paramInt);
    this.backIcon.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.backIcon.setColorFilter(paramColorFilter);
  }
  
  public void setText(String paramString)
  {
    this.text = paramString;
    invalidateSelf();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/BackButtonCountDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */