package com.vent.c;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.text.style.UpdateLayout;

public abstract class b
  extends ClickableSpan
  implements UpdateLayout, h.a
{
  private final String cmw;
  
  b(String paramString)
  {
    this.cmw = paramString;
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    if (this.cmw != null) {
      h.a(paramTextPaint, this.cmw);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/c/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */