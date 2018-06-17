package com.vent.c;

import android.support.v7.app.d;
import android.text.TextPaint;
import android.view.View;
import com.vent.ActProfile;
import com.vent.a;
import com.vent.a.x;
import java.lang.ref.WeakReference;

public final class i
  extends b
{
  private final WeakReference<a> bUM;
  private final x bXE;
  private final WeakReference<?> caZ;
  private final boolean cmA;
  private final int color;
  
  public i(WeakReference<a> paramWeakReference, WeakReference<?> paramWeakReference1, x paramx, int paramInt, boolean paramBoolean) {}
  
  public final void onClick(View paramView)
  {
    if (this.bUM == null) {}
    d locald;
    do
    {
      return;
      locald = (d)this.bUM.get();
    } while (locald == null);
    if (this.caZ != null) {}
    for (paramView = (android.support.v4.app.i)this.caZ.get();; paramView = null)
    {
      ActProfile.a(locald, paramView, this.bXE, null);
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/c/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */