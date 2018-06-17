package com.vent.c;

import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.View;
import com.vent.a.r;
import com.vent.d.c;

public final class g
  extends ClickableSpan
  implements h.a
{
  private final r cmy;
  private final boolean cmz;
  private final int color;
  
  public g(r paramr, int paramInt, boolean paramBoolean)
  {
    this.cmy = paramr;
    this.color = paramInt;
    this.cmz = paramBoolean;
  }
  
  public final void onClick(View paramView)
  {
    if (!this.cmz) {}
    String str;
    do
    {
      do
      {
        return;
        str = this.cmy.ckA;
      } while (TextUtils.isEmpty(str));
      str = str.toLowerCase();
    } while (((!str.startsWith("http:")) && (!str.startsWith("https:"))) || (!str.contains(".")));
    c.x(paramView.getContext(), this.cmy.ckA);
  }
  
  public final void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
    paramTextPaint.setColor(this.color);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/c/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */