package android.support.design.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.c.a;
import android.support.v4.view.e;
import android.support.v4.view.r;
import android.support.v4.view.z;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import java.util.List;

abstract class j
  extends q<View>
{
  final Rect ng = new Rect();
  final Rect nh = new Rect();
  int ni = 0;
  int nj;
  
  public j() {}
  
  public j(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = paramView.getLayoutParams().height;
    if ((j == -1) || (j == -2))
    {
      View localView = f(paramCoordinatorLayout.n(paramView));
      if (localView != null)
      {
        if ((r.X(localView)) && (!r.X(paramView)))
        {
          r.e(paramView, true);
          if (r.X(paramView))
          {
            paramView.requestLayout();
            return true;
          }
        }
        int i = View.MeasureSpec.getSize(paramInt3);
        paramInt3 = i;
        if (i == 0) {
          paramInt3 = paramCoordinatorLayout.getHeight();
        }
        int k = localView.getMeasuredHeight();
        int m = f(localView);
        if (j == -1) {}
        for (i = 1073741824;; i = Integer.MIN_VALUE)
        {
          paramCoordinatorLayout.a(paramView, paramInt1, paramInt2, View.MeasureSpec.makeMeasureSpec(m + (paramInt3 - k), i), paramInt4);
          return true;
        }
      }
    }
    return false;
  }
  
  protected final void d(CoordinatorLayout paramCoordinatorLayout, View paramView, int paramInt)
  {
    View localView = f(paramCoordinatorLayout.n(paramView));
    if (localView != null)
    {
      CoordinatorLayout.e locale = (CoordinatorLayout.e)paramView.getLayoutParams();
      Rect localRect = this.ng;
      localRect.set(paramCoordinatorLayout.getPaddingLeft() + locale.leftMargin, localView.getBottom() + locale.topMargin, paramCoordinatorLayout.getWidth() - paramCoordinatorLayout.getPaddingRight() - locale.rightMargin, paramCoordinatorLayout.getHeight() + localView.getBottom() - paramCoordinatorLayout.getPaddingBottom() - locale.bottomMargin);
      z localz = paramCoordinatorLayout.getLastWindowInsets();
      if ((localz != null) && (r.X(paramCoordinatorLayout)) && (!r.X(paramView)))
      {
        localRect.left += localz.getSystemWindowInsetLeft();
        localRect.right -= localz.getSystemWindowInsetRight();
      }
      paramCoordinatorLayout = this.nh;
      int j = locale.gravity;
      int i = j;
      if (j == 0) {
        i = 8388659;
      }
      e.apply(i, paramView.getMeasuredWidth(), paramView.getMeasuredHeight(), localRect, paramCoordinatorLayout, paramInt);
      paramInt = p(localView);
      paramView.layout(paramCoordinatorLayout.left, paramCoordinatorLayout.top - paramInt, paramCoordinatorLayout.right, paramCoordinatorLayout.bottom - paramInt);
      this.ni = (paramCoordinatorLayout.top - localView.getBottom());
      return;
    }
    super.d(paramCoordinatorLayout, paramView, paramInt);
    this.ni = 0;
  }
  
  float e(View paramView)
  {
    return 1.0F;
  }
  
  int f(View paramView)
  {
    return paramView.getMeasuredHeight();
  }
  
  abstract View f(List<View> paramList);
  
  final int p(View paramView)
  {
    if (this.nj == 0) {
      return 0;
    }
    return a.b((int)(e(paramView) * this.nj), 0, this.nj);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */