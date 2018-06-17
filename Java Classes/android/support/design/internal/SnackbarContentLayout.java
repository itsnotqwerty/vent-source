package android.support.design.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.design.a.d;
import android.support.design.a.f;
import android.support.design.a.k;
import android.support.design.widget.b.b;
import android.support.v4.view.r;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewPropertyAnimator;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class SnackbarContentLayout
  extends LinearLayout
  implements b.b
{
  private int by;
  private TextView ix;
  private Button iy;
  private int iz;
  
  public SnackbarContentLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SnackbarContentLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.SnackbarLayout);
    this.by = paramContext.getDimensionPixelSize(a.k.SnackbarLayout_android_maxWidth, -1);
    this.iz = paramContext.getDimensionPixelSize(a.k.SnackbarLayout_maxActionInlineWidth, -1);
    paramContext.recycle();
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = false;
    if (paramInt1 != getOrientation())
    {
      setOrientation(paramInt1);
      bool = true;
    }
    TextView localTextView;
    if ((this.ix.getPaddingTop() != paramInt2) || (this.ix.getPaddingBottom() != paramInt3))
    {
      localTextView = this.ix;
      if (!r.Z(localTextView)) {
        break label78;
      }
      r.c(localTextView, r.M(localTextView), paramInt2, r.N(localTextView), paramInt3);
    }
    for (;;)
    {
      bool = true;
      return bool;
      label78:
      localTextView.setPadding(localTextView.getPaddingLeft(), paramInt2, localTextView.getPaddingRight(), paramInt3);
    }
  }
  
  public final void aZ()
  {
    this.ix.setAlpha(0.0F);
    this.ix.animate().alpha(1.0F).setDuration(180L).setStartDelay(70L).start();
    if (this.iy.getVisibility() == 0)
    {
      this.iy.setAlpha(0.0F);
      this.iy.animate().alpha(1.0F).setDuration(180L).setStartDelay(70L).start();
    }
  }
  
  public final void ba()
  {
    this.ix.setAlpha(1.0F);
    this.ix.animate().alpha(0.0F).setDuration(180L).setStartDelay(0L).start();
    if (this.iy.getVisibility() == 0)
    {
      this.iy.setAlpha(1.0F);
      this.iy.animate().alpha(0.0F).setDuration(180L).setStartDelay(0L).start();
    }
  }
  
  public Button getActionView()
  {
    return this.iy;
  }
  
  public TextView getMessageView()
  {
    return this.ix;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.ix = ((TextView)findViewById(a.f.snackbar_text));
    this.iy = ((Button)findViewById(a.f.snackbar_action));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = paramInt1;
    if (this.by > 0)
    {
      i = paramInt1;
      if (getMeasuredWidth() > this.by)
      {
        i = View.MeasureSpec.makeMeasureSpec(this.by, 1073741824);
        super.onMeasure(i, paramInt2);
      }
    }
    int j = getResources().getDimensionPixelSize(a.d.design_snackbar_padding_vertical_2lines);
    int k = getResources().getDimensionPixelSize(a.d.design_snackbar_padding_vertical);
    if (this.ix.getLayout().getLineCount() > 1)
    {
      paramInt1 = 1;
      if ((paramInt1 == 0) || (this.iz <= 0) || (this.iy.getMeasuredWidth() <= this.iz)) {
        break label142;
      }
      if (!a(1, j, j - k)) {
        break label170;
      }
      paramInt1 = 1;
    }
    for (;;)
    {
      if (paramInt1 != 0) {
        super.onMeasure(i, paramInt2);
      }
      return;
      paramInt1 = 0;
      break;
      label142:
      if (paramInt1 != 0) {}
      for (paramInt1 = j;; paramInt1 = k)
      {
        if (!a(0, paramInt1, paramInt1)) {
          break label170;
        }
        paramInt1 = 1;
        break;
      }
      label170:
      paramInt1 = 0;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/internal/SnackbarContentLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */