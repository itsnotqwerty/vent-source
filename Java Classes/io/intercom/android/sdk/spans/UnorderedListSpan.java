package io.intercom.android.sdk.spans;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;

public class UnorderedListSpan
  implements LeadingMarginSpan
{
  private static final int BULLET_RADIUS_IN_DP = 2;
  private static final int INDENT_IN_DP = 5;
  private final int bulletRadius;
  private final int gapWidth;
  private final int indent;
  
  public UnorderedListSpan(int paramInt, Context paramContext)
  {
    this.gapWidth = paramInt;
    this.bulletRadius = ScreenUtils.dpToPx(2.0F, paramContext);
    this.indent = ScreenUtils.dpToPx(5.0F, paramContext);
  }
  
  public void drawLeadingMargin(Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, CharSequence paramCharSequence, int paramInt6, int paramInt7, boolean paramBoolean, Layout paramLayout)
  {
    if (((Spanned)paramCharSequence).getSpanStart(this) == paramInt6)
    {
      paramCharSequence = paramPaint.getStyle();
      paramPaint.setStyle(Paint.Style.FILL);
      paramCanvas.drawCircle(this.bulletRadius * paramInt2 + paramInt1 + this.indent, (paramInt3 + paramInt5) / 2.0F, this.bulletRadius, paramPaint);
      paramPaint.setStyle(paramCharSequence);
    }
  }
  
  public int getLeadingMargin(boolean paramBoolean)
  {
    return this.bulletRadius * 2 + this.gapWidth;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/spans/UnorderedListSpan.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */