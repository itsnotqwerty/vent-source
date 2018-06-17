package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.support.v4.a.a;
import android.util.TypedValue;

final class bk
{
  static final int[] EMPTY_STATE_SET = new int[0];
  static final int[] FOCUSED_STATE_SET;
  static final int[] PRESSED_STATE_SET;
  private static final ThreadLocal<TypedValue> Pm = new ThreadLocal();
  static final int[] SELECTED_STATE_SET;
  static final int[] ajJ = { -16842910 };
  static final int[] ajK;
  static final int[] ajL;
  private static final int[] ajM = new int[1];
  static final int[] ik;
  
  static
  {
    FOCUSED_STATE_SET = new int[] { 16842908 };
    ajK = new int[] { 16843518 };
    PRESSED_STATE_SET = new int[] { 16842919 };
    ik = new int[] { 16842912 };
    SELECTED_STATE_SET = new int[] { 16842913 };
    ajL = new int[] { -16842919, -16842908 };
  }
  
  public static int k(Context paramContext, int paramInt)
  {
    ajM[0] = paramInt;
    paramContext = bo.a(paramContext, null, ajM);
    try
    {
      paramInt = paramContext.getColor(0, 0);
      return paramInt;
    }
    finally
    {
      paramContext.ajT.recycle();
    }
  }
  
  public static ColorStateList l(Context paramContext, int paramInt)
  {
    ajM[0] = paramInt;
    paramContext = bo.a(paramContext, null, ajM);
    try
    {
      ColorStateList localColorStateList = paramContext.getColorStateList(0);
      return localColorStateList;
    }
    finally
    {
      paramContext.ajT.recycle();
    }
  }
  
  public static int m(Context paramContext, int paramInt)
  {
    Object localObject = l(paramContext, paramInt);
    if ((localObject != null) && (((ColorStateList)localObject).isStateful())) {
      return ((ColorStateList)localObject).getColorForState(ajJ, ((ColorStateList)localObject).getDefaultColor());
    }
    TypedValue localTypedValue = (TypedValue)Pm.get();
    localObject = localTypedValue;
    if (localTypedValue == null)
    {
      localObject = new TypedValue();
      Pm.set(localObject);
    }
    paramContext.getTheme().resolveAttribute(16842803, (TypedValue)localObject, true);
    float f = ((TypedValue)localObject).getFloat();
    paramInt = k(paramContext, paramInt);
    return a.n(paramInt, Math.round(f * Color.alpha(paramInt)));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */