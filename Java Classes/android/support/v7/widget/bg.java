package android.support.v7.widget;

import android.view.View;

final class bg
{
  static int a(RecyclerView.u paramu, az paramaz, View paramView1, View paramView2, RecyclerView.i parami, boolean paramBoolean)
  {
    if ((parami.getChildCount() == 0) || (paramu.getItemCount() == 0) || (paramView1 == null) || (paramView2 == null)) {
      return 0;
    }
    if (!paramBoolean) {
      return Math.abs(RecyclerView.i.aT(paramView1) - RecyclerView.i.aT(paramView2)) + 1;
    }
    int i = paramaz.aH(paramView2);
    int j = paramaz.aG(paramView1);
    return Math.min(paramaz.hA(), i - j);
  }
  
  static int a(RecyclerView.u paramu, az paramaz, View paramView1, View paramView2, RecyclerView.i parami, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 0;
    int j = i;
    if (parami.getChildCount() != 0)
    {
      j = i;
      if (paramu.getItemCount() != 0)
      {
        j = i;
        if (paramView1 != null)
        {
          if (paramView2 != null) {
            break label45;
          }
          j = i;
        }
      }
    }
    return j;
    label45:
    i = Math.min(RecyclerView.i.aT(paramView1), RecyclerView.i.aT(paramView2));
    j = Math.max(RecyclerView.i.aT(paramView1), RecyclerView.i.aT(paramView2));
    if (paramBoolean2) {}
    for (i = Math.max(0, paramu.getItemCount() - j - 1);; i = Math.max(0, i))
    {
      j = i;
      if (!paramBoolean1) {
        break;
      }
      j = Math.abs(paramaz.aH(paramView2) - paramaz.aG(paramView1));
      int k = Math.abs(RecyclerView.i.aT(paramView1) - RecyclerView.i.aT(paramView2));
      float f = j / (k + 1);
      return Math.round(i * f + (paramaz.hy() - paramaz.aG(paramView1)));
    }
  }
  
  static int b(RecyclerView.u paramu, az paramaz, View paramView1, View paramView2, RecyclerView.i parami, boolean paramBoolean)
  {
    if ((parami.getChildCount() == 0) || (paramu.getItemCount() == 0) || (paramView1 == null) || (paramView2 == null)) {
      return 0;
    }
    if (!paramBoolean) {
      return paramu.getItemCount();
    }
    int i = paramaz.aH(paramView2);
    int j = paramaz.aG(paramView1);
    int k = Math.abs(RecyclerView.i.aT(paramView1) - RecyclerView.i.aT(paramView2));
    return (int)((i - j) / (k + 1) * paramu.getItemCount());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */