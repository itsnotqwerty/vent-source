package io.intercom.android.sdk.inbox;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.support.v4.content.a;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import io.intercom.android.sdk.R.color;

public class InboxEmptyRowsView
  extends View
{
  private static final int CIRCLE_RADIUS = 24;
  private static final int CIRCLE_TOP_PADDING = 20;
  private static final int ITEM_HEIGHT = 68;
  private static final int LINE_CORNER_RADIUS = 4;
  private static final int LINE_LEFT_X = 80;
  private static final int LOWER_LINE_BOTTOM_Y = 64;
  private static final int LOWER_LINE_TOP_Y = 52;
  private static final int NUMBER_OF_ROWS = 3;
  private static final int PADDING_X = 16;
  private static final int UPPER_LINE_BOTTOM_Y = 40;
  private static final int UPPER_LINE_TOP_Y = 28;
  private static final int UPPER_LINE_WIDTH = 116;
  private final float density;
  private final Paint paint = new Paint();
  private final RectF rect = new RectF();
  
  public InboxEmptyRowsView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public InboxEmptyRowsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.paint.setStyle(Paint.Style.FILL);
    this.paint.setColor(a.c(paramContext, R.color.intercom_error_state_empty_avatar));
    this.density = getResources().getDisplayMetrics().density;
  }
  
  private float dpToPx(int paramInt)
  {
    return paramInt * this.density;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i = 0;
    while (i < 3)
    {
      int j = i * 68;
      paramCanvas.drawCircle(dpToPx(40), dpToPx(j + 44), dpToPx(24), this.paint);
      this.rect.set(dpToPx(80), dpToPx(j + 28), dpToPx(196), dpToPx(j + 40));
      paramCanvas.drawRoundRect(this.rect, dpToPx(4), dpToPx(4), this.paint);
      this.rect.set(dpToPx(80), dpToPx(j + 52), getWidth() - dpToPx(16), dpToPx(j + 64));
      paramCanvas.drawRoundRect(this.rect, dpToPx(4), dpToPx(4), this.paint);
      i += 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/inbox/InboxEmptyRowsView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */