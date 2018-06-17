package io.intercom.android.sdk.spans;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;

public class OrderedListSpan
  implements LeadingMarginSpan
{
  private final int gapWidth;
  private final String number;
  
  public OrderedListSpan(int paramInt, String paramString)
  {
    this.gapWidth = paramInt;
    this.number = paramString;
  }
  
  public void drawLeadingMargin(Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, CharSequence paramCharSequence, int paramInt6, int paramInt7, boolean paramBoolean, Layout paramLayout)
  {
    if (((Spanned)paramCharSequence).getSpanStart(this) == paramInt6)
    {
      paramCharSequence = paramPaint.getStyle();
      paramPaint.setStyle(Paint.Style.FILL);
      paramCanvas.drawText(this.number + " ", paramInt1 + paramInt2, paramInt4, paramPaint);
      paramPaint.setStyle(paramCharSequence);
    }
  }
  
  public int getLeadingMargin(boolean paramBoolean)
  {
    return (int)(new Paint().measureText(this.number) + this.gapWidth);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/spans/OrderedListSpan.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */