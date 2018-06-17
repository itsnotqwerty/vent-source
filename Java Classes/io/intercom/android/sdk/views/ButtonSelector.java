package io.intercom.android.sdk.views;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;

public class ButtonSelector
  extends StateListDrawable
{
  private final int color;
  
  public ButtonSelector(Context paramContext, int paramInt1, int paramInt2)
  {
    this.color = paramInt2;
    Drawable localDrawable = paramContext.getResources().getDrawable(paramInt1);
    addState(new int[] { 16842910 }, localDrawable);
    localDrawable = paramContext.getResources().getDrawable(paramInt1);
    addState(new int[] { 16842908 }, localDrawable);
    paramContext = paramContext.getResources().getDrawable(paramInt1);
    addState(new int[] { 16842919 }, paramContext);
  }
  
  private static int darken(int paramInt, double paramDouble)
  {
    return Color.argb(255, (int)(Color.red(paramInt) * paramDouble), (int)(Color.green(paramInt) * paramDouble), (int)(Color.blue(paramInt) * paramDouble));
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    int k = paramArrayOfInt.length;
    int i = 0;
    int j = 0;
    while (i < k)
    {
      int m = paramArrayOfInt[i];
      if ((m == 16842919) || (m == 16842908)) {
        j = 1;
      }
      i += 1;
    }
    if (j != 0) {
      setColorFilter(darken(this.color, 0.9D), PorterDuff.Mode.SRC);
    }
    for (;;)
    {
      return super.onStateChange(paramArrayOfInt);
      setColorFilter(this.color, PorterDuff.Mode.SRC);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/ButtonSelector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */