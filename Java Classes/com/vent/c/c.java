package com.vent.c;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import android.text.style.UpdateLayout;

abstract class c
  extends MetricAffectingSpan
  implements UpdateLayout, h.a
{
  private final String cmw;
  
  c(String paramString)
  {
    this.cmw = paramString;
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    h.a(paramTextPaint, this.cmw);
  }
  
  public void updateMeasureState(TextPaint paramTextPaint)
  {
    h.a(paramTextPaint, this.cmw);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/c/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */