package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.design.a.h;
import android.support.design.internal.SnackbarContentLayout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.TextView;

public final class Snackbar
  extends b<Snackbar>
{
  private Snackbar(ViewGroup paramViewGroup, View paramView, b.b paramb)
  {
    super(paramViewGroup, paramView, paramb);
  }
  
  public static Snackbar a(View paramView, CharSequence paramCharSequence, int paramInt)
  {
    View localView = null;
    Object localObject2 = paramView;
    if ((localObject2 instanceof CoordinatorLayout)) {
      paramView = (ViewGroup)localObject2;
    }
    label20:
    while (paramView == null)
    {
      throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
      paramView = localView;
      if ((localObject2 instanceof FrameLayout))
      {
        if (((View)localObject2).getId() == 16908290) {
          paramView = (ViewGroup)localObject2;
        } else {
          paramView = (ViewGroup)localObject2;
        }
      }
      else
      {
        localObject1 = localObject2;
        if (localObject2 != null)
        {
          localObject1 = ((View)localObject2).getParent();
          if (!(localObject1 instanceof View)) {
            break label109;
          }
        }
        label109:
        for (localObject1 = (View)localObject1;; localObject1 = null)
        {
          localObject2 = localObject1;
          localView = paramView;
          if (localObject1 != null) {
            break;
          }
          break label20;
        }
      }
    }
    Object localObject1 = (SnackbarContentLayout)LayoutInflater.from(paramView.getContext()).inflate(a.h.design_layout_snackbar_include, paramView, false);
    paramView = new Snackbar(paramView, (View)localObject1, (b.b)localObject1);
    ((SnackbarContentLayout)paramView.jh.getChildAt(0)).getMessageView().setText(paramCharSequence);
    paramView.jj = paramInt;
    return paramView;
  }
  
  public static Snackbar c(View paramView, int paramInt1, int paramInt2)
  {
    return a(paramView, paramView.getResources().getText(paramInt1), paramInt2);
  }
  
  public static final class SnackbarLayout
    extends b.e
  {
    public SnackbarLayout(Context paramContext)
    {
      super();
    }
    
    public SnackbarLayout(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    protected final void onMeasure(int paramInt1, int paramInt2)
    {
      super.onMeasure(paramInt1, paramInt2);
      paramInt2 = getChildCount();
      int i = getMeasuredWidth();
      int j = getPaddingLeft();
      int k = getPaddingRight();
      paramInt1 = 0;
      while (paramInt1 < paramInt2)
      {
        View localView = getChildAt(paramInt1);
        if (localView.getLayoutParams().width == -1) {
          localView.measure(View.MeasureSpec.makeMeasureSpec(i - j - k, 1073741824), View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824));
        }
        paramInt1 += 1;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/Snackbar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */