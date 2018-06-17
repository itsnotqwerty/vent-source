package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.a.a.a;

final class p
{
  private static final int[] qb = { a.a.colorPrimary };
  
  static void d(Context paramContext)
  {
    int i = 0;
    paramContext = paramContext.obtainStyledAttributes(qb);
    if (!paramContext.hasValue(0)) {
      i = 1;
    }
    paramContext.recycle();
    if (i != 0) {
      throw new IllegalArgumentException("You need to use a Theme.AppCompat theme (or descendant) with the design library.");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */