package android.support.design.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class BaselineLayout
  extends ViewGroup
{
  private int ic = -1;
  
  public BaselineLayout(Context paramContext)
  {
    super(paramContext, null, 0);
  }
  
  public BaselineLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0);
  }
  
  public BaselineLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public int getBaseline()
  {
    return this.ic;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = getChildCount();
    int k = getPaddingLeft();
    int m = getPaddingRight();
    int i = getPaddingTop();
    paramInt2 = 0;
    if (paramInt2 < j)
    {
      View localView = getChildAt(paramInt2);
      int n;
      int i1;
      int i2;
      if (localView.getVisibility() != 8)
      {
        n = localView.getMeasuredWidth();
        i1 = localView.getMeasuredHeight();
        i2 = k + (paramInt3 - paramInt1 - m - k - n) / 2;
        if ((this.ic == -1) || (localView.getBaseline() == -1)) {
          break label141;
        }
      }
      label141:
      for (paramInt4 = this.ic + i - localView.getBaseline();; paramInt4 = i)
      {
        localView.layout(i2, paramInt4, n + i2, i1 + paramInt4);
        paramInt2 += 1;
        break;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i7 = getChildCount();
    int i3 = 0;
    int i1 = 0;
    int k = -1;
    int j = -1;
    int i = 0;
    int i4;
    for (int i2 = 0; i3 < i7; i2 = i4)
    {
      View localView = getChildAt(i3);
      m = k;
      int n = j;
      int i6 = i1;
      int i5 = i;
      i4 = i2;
      if (localView.getVisibility() != 8)
      {
        measureChild(localView, paramInt1, paramInt2);
        i4 = localView.getBaseline();
        m = k;
        n = j;
        if (i4 != -1)
        {
          n = Math.max(j, i4);
          m = Math.max(k, localView.getMeasuredHeight() - i4);
        }
        i4 = Math.max(i2, localView.getMeasuredWidth());
        i5 = Math.max(i, localView.getMeasuredHeight());
        i6 = View.combineMeasuredStates(i1, localView.getMeasuredState());
      }
      i3 += 1;
      k = m;
      j = n;
      i1 = i6;
      i = i5;
    }
    int m = i;
    if (j != -1)
    {
      m = Math.max(i, Math.max(k, getPaddingBottom()) + j);
      this.ic = j;
    }
    i = Math.max(m, getSuggestedMinimumHeight());
    setMeasuredDimension(View.resolveSizeAndState(Math.max(i2, getSuggestedMinimumWidth()), paramInt1, i1), View.resolveSizeAndState(i, paramInt2, i1 << 16));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/internal/BaselineLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */