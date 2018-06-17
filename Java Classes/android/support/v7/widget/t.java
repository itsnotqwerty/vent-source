package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.widget.l;
import android.support.v7.a.a.j;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;

final class t
  extends PopupWindow
{
  private static final boolean Wn;
  private boolean Wo;
  
  static
  {
    if (Build.VERSION.SDK_INT < 21) {}
    for (boolean bool = true;; bool = false)
    {
      Wn = bool;
      return;
    }
  }
  
  public t(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = bo.a(paramContext, paramAttributeSet, a.j.PopupWindow, paramInt1, paramInt2);
    boolean bool;
    if (paramContext.hasValue(a.j.PopupWindow_overlapAnchor))
    {
      bool = paramContext.getBoolean(a.j.PopupWindow_overlapAnchor, false);
      if (!Wn) {
        break label72;
      }
      this.Wo = bool;
    }
    for (;;)
    {
      setBackgroundDrawable(paramContext.getDrawable(a.j.PopupWindow_android_popupBackground));
      paramContext.ajT.recycle();
      return;
      label72:
      l.a(this, bool);
    }
  }
  
  public final void showAsDropDown(View paramView, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (Wn)
    {
      i = paramInt2;
      if (this.Wo) {
        i = paramInt2 - paramView.getHeight();
      }
    }
    super.showAsDropDown(paramView, paramInt1, i);
  }
  
  public final void showAsDropDown(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt2;
    if (Wn)
    {
      i = paramInt2;
      if (this.Wo) {
        i = paramInt2 - paramView.getHeight();
      }
    }
    super.showAsDropDown(paramView, paramInt1, i, paramInt3);
  }
  
  public final void update(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((Wn) && (this.Wo)) {
      paramInt2 -= paramView.getHeight();
    }
    for (;;)
    {
      super.update(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */