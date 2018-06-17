package io.intercom.android.sdk.conversation.composer;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import io.intercom.android.sdk.R.color;

public class InputDrawableManager
{
  private static final int[][] STATES = { { 16842919 }, { 16842913 }, new int[0] };
  private final ColorStateList colorStateList;
  
  public InputDrawableManager(Context paramContext, int paramInt)
  {
    int i = android.support.v4.content.a.c(paramContext, R.color.intercom_input_default_color);
    this.colorStateList = new ColorStateList(STATES, new int[] { paramInt, paramInt, i });
  }
  
  public Drawable createDrawable(Context paramContext, int paramInt)
  {
    paramContext = android.support.v4.a.a.a.f(android.support.v4.content.a.a(paramContext, paramInt));
    android.support.v4.a.a.a.a(paramContext, this.colorStateList);
    return paramContext;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/InputDrawableManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */