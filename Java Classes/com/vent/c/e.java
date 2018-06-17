package com.vent.c;

import android.net.Uri;
import android.support.v4.app.i;
import android.support.v7.app.d;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.view.View;
import com.vent.ActVentList;
import com.vent.a;
import com.vent.bb;
import java.lang.ref.WeakReference;

public final class e
  extends ClickableSpan
  implements h.a
{
  private final WeakReference<a> bUM;
  private final WeakReference<?> caZ;
  private final String cmx;
  private final int color;
  
  public e(WeakReference<a> paramWeakReference, WeakReference<?> paramWeakReference1, int paramInt, String paramString)
  {
    this.bUM = paramWeakReference;
    this.caZ = paramWeakReference1;
    this.color = paramInt;
    this.cmx = paramString;
  }
  
  public final CharacterStyle Fx()
  {
    return new e(this.bUM, this.caZ, this.color, this.cmx);
  }
  
  public final void onClick(View paramView)
  {
    if (this.bUM == null) {}
    d locald;
    do
    {
      return;
      locald = (d)this.bUM.get();
    } while (locald == null);
    if (bb.eb(this.cmx)) {
      bb.EB();
    }
    if (this.caZ != null) {}
    for (paramView = (i)this.caZ.get();; paramView = null)
    {
      ActVentList.a(locald, paramView, this.cmx, "api/v2/vents/search.json?q=" + Uri.encode(this.cmx), 1, "SearchHashtags");
      return;
    }
  }
  
  public final void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
    paramTextPaint.setColor(this.color);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/c/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */