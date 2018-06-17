package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.view.e;
import android.support.v4.view.r;
import android.support.v7.a.a.f;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

public class AlertDialogLayout
  extends at
{
  public AlertDialogLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public AlertDialogLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = getPaddingLeft();
    int k = paramInt3 - paramInt1;
    int m = getPaddingRight();
    int n = getPaddingRight();
    paramInt1 = getMeasuredHeight();
    int i1 = getChildCount();
    int i2 = getGravity();
    Object localObject;
    label91:
    label94:
    int i3;
    int i4;
    at.a locala;
    int i;
    switch (i2 & 0x70)
    {
    default: 
      paramInt1 = getPaddingTop();
      localObject = getDividerDrawable();
      if (localObject == null)
      {
        paramInt3 = 0;
        paramInt4 = 0;
        if (paramInt4 >= i1) {
          return;
        }
        localObject = getChildAt(paramInt4);
        paramInt2 = paramInt1;
        if (localObject != null)
        {
          paramInt2 = paramInt1;
          if (((View)localObject).getVisibility() != 8)
          {
            i3 = ((View)localObject).getMeasuredWidth();
            i4 = ((View)localObject).getMeasuredHeight();
            locala = (at.a)((View)localObject).getLayoutParams();
            i = locala.gravity;
            paramInt2 = i;
            if (i < 0) {
              paramInt2 = 0x800007 & i2;
            }
            switch (e.getAbsoluteGravity(paramInt2, r.K(this)) & 0x7)
            {
            default: 
              paramInt2 = locala.leftMargin + j;
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      i = paramInt1;
      if (bx(paramInt4)) {
        i = paramInt1 + paramInt3;
      }
      paramInt1 = i + locala.topMargin;
      ((View)localObject).layout(paramInt2, paramInt1, i3 + paramInt2, paramInt1 + i4);
      paramInt2 = paramInt1 + (locala.bottomMargin + i4);
      paramInt4 += 1;
      paramInt1 = paramInt2;
      break label94;
      paramInt1 = getPaddingTop() + paramInt4 - paramInt2 - paramInt1;
      break;
      paramInt3 = getPaddingTop();
      paramInt1 = (paramInt4 - paramInt2 - paramInt1) / 2 + paramInt3;
      break;
      paramInt3 = ((Drawable)localObject).getIntrinsicHeight();
      break label91;
      paramInt2 = (k - j - n - i3) / 2 + j + locala.leftMargin - locala.rightMargin;
      continue;
      paramInt2 = k - m - i3 - locala.rightMargin;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Object localObject4 = null;
    Object localObject2 = null;
    Object localObject1 = null;
    int i3 = getChildCount();
    int i = 0;
    Object localObject3;
    int j;
    if (i < i3)
    {
      localObject3 = getChildAt(i);
      if (((View)localObject3).getVisibility() == 8) {
        break label737;
      }
      j = ((View)localObject3).getId();
      if (j == a.f.topPanel) {
        localObject4 = localObject3;
      }
    }
    label222:
    label266:
    label737:
    for (;;)
    {
      i += 1;
      break;
      if (j == a.f.buttonPanel)
      {
        localObject2 = localObject3;
      }
      else
      {
        if ((j == a.f.contentPanel) || (j == a.f.customPanel)) {
          if (localObject1 == null) {}
        }
        for (i = 0;; i = 0)
        {
          if (i == 0) {
            super.onMeasure(paramInt1, paramInt2);
          }
          return;
          localObject1 = localObject3;
          break;
        }
        int i5 = View.MeasureSpec.getMode(paramInt2);
        int i2 = View.MeasureSpec.getSize(paramInt2);
        int i4 = View.MeasureSpec.getMode(paramInt1);
        j = 0;
        int k = getPaddingTop() + getPaddingBottom();
        if (localObject4 != null)
        {
          ((View)localObject4).measure(paramInt1, 0);
          i = ((View)localObject4).getMeasuredHeight();
          j = View.combineMeasuredStates(0, ((View)localObject4).getMeasuredState());
          k += i;
        }
        for (;;)
        {
          i = 0;
          int m;
          if (localObject2 != null)
          {
            ((View)localObject2).measure(paramInt1, 0);
            localObject3 = localObject2;
            i = r.R((View)localObject3);
            if (i > 0)
            {
              m = ((View)localObject2).getMeasuredHeight();
              k += i;
              j = View.combineMeasuredStates(j, ((View)localObject2).getMeasuredState());
              m -= i;
            }
          }
          for (;;)
          {
            int n;
            int i1;
            if (localObject1 != null) {
              if (i5 == 0)
              {
                n = 0;
                ((View)localObject1).measure(paramInt1, n);
                i1 = ((View)localObject1).getMeasuredHeight();
                k += i1;
                j = View.combineMeasuredStates(j, ((View)localObject1).getMeasuredState());
              }
            }
            for (;;)
            {
              i2 -= k;
              if (localObject2 != null)
              {
                int i6 = Math.min(i2, m);
                m = i2;
                n = i;
                if (i6 > 0)
                {
                  m = i2 - i6;
                  n = i + i6;
                }
                ((View)localObject2).measure(paramInt1, View.MeasureSpec.makeMeasureSpec(n, 1073741824));
                k = ((View)localObject2).getMeasuredHeight() + (k - i);
                i = View.combineMeasuredStates(j, ((View)localObject2).getMeasuredState());
              }
              for (j = k;; j = k)
              {
                if ((localObject1 != null) && (m > 0))
                {
                  ((View)localObject1).measure(paramInt1, View.MeasureSpec.makeMeasureSpec(m + i1, i5));
                  k = ((View)localObject1).getMeasuredHeight() + (j - i1);
                  j = View.combineMeasuredStates(i, ((View)localObject1).getMeasuredState());
                  i = k;
                }
                for (;;)
                {
                  m = 0;
                  k = 0;
                  for (;;)
                  {
                    if (k < i3)
                    {
                      localObject1 = getChildAt(k);
                      n = m;
                      if (((View)localObject1).getVisibility() != 8) {
                        n = Math.max(m, ((View)localObject1).getMeasuredWidth());
                      }
                      k += 1;
                      m = n;
                      continue;
                      if ((localObject3 instanceof ViewGroup))
                      {
                        localObject3 = (ViewGroup)localObject3;
                        if (((ViewGroup)localObject3).getChildCount() == 1)
                        {
                          localObject3 = ((ViewGroup)localObject3).getChildAt(0);
                          break;
                        }
                      }
                      i = 0;
                      break label222;
                      n = View.MeasureSpec.makeMeasureSpec(Math.max(0, i2 - k), i5);
                      break label266;
                    }
                  }
                  setMeasuredDimension(View.resolveSizeAndState(m + (getPaddingLeft() + getPaddingRight()), paramInt1, j), View.resolveSizeAndState(i, paramInt2, 0));
                  if (i4 != 1073741824)
                  {
                    j = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
                    i = 0;
                    while (i < i3)
                    {
                      localObject1 = getChildAt(i);
                      if (((View)localObject1).getVisibility() != 8)
                      {
                        localObject2 = (at.a)((View)localObject1).getLayoutParams();
                        if (((at.a)localObject2).width == -1)
                        {
                          k = ((at.a)localObject2).height;
                          ((at.a)localObject2).height = ((View)localObject1).getMeasuredHeight();
                          measureChildWithMargins((View)localObject1, j, 0, paramInt2, 0);
                          ((at.a)localObject2).height = k;
                        }
                      }
                      i += 1;
                    }
                  }
                  i = 1;
                  break;
                  k = i;
                  i = j;
                  j = k;
                }
                i = j;
                m = i2;
              }
              i1 = 0;
            }
            m = 0;
          }
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/AlertDialogLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */