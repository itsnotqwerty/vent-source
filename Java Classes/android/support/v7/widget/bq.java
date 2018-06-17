package android.support.v7.widget;

import android.os.Build.VERSION;
import android.view.View;

public final class bq
{
  public static void a(View paramView, CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 26)
    {
      paramView.setTooltipText(paramCharSequence);
      return;
    }
    br.a(paramView, paramCharSequence);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */