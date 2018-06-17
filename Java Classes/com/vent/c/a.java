package com.vent.c;

import android.text.TextPaint;
import android.text.style.URLSpan;
import com.vent.d.e;

public final class a
  extends URLSpan
{
  private final int color;
  
  public a(URLSpan paramURLSpan, int paramInt)
  {
    super(paramURLSpan.getURL());
    this.color = paramInt;
  }
  
  public final void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setColor(this.color);
    paramTextPaint.setUnderlineText(false);
    paramTextPaint.setTypeface(e.cmW);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */