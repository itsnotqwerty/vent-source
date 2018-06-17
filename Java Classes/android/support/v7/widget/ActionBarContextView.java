package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.r;
import android.support.v7.a.a.a;
import android.support.v7.a.a.f;
import android.support.v7.a.a.g;
import android.support.v7.a.a.j;
import android.support.v7.view.b;
import android.support.v7.view.menu.h;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;

public class ActionBarContextView
  extends a
{
  private CharSequence Ch;
  private CharSequence Ci;
  private TextView LC;
  public View Ts;
  private LinearLayout Tt;
  private TextView Tu;
  private int Tv;
  private int Tw;
  public boolean Tx;
  private int Ty;
  private View oZ;
  
  public ActionBarContextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.actionModeStyle);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = bo.a(paramContext, paramAttributeSet, a.j.ActionMode, paramInt, 0);
    r.setBackground(this, paramContext.getDrawable(a.j.ActionMode_background));
    this.Tv = paramContext.getResourceId(a.j.ActionMode_titleTextStyle, 0);
    this.Tw = paramContext.getResourceId(a.j.ActionMode_subtitleTextStyle, 0);
    this.Tg = paramContext.getLayoutDimension(a.j.ActionMode_height, 0);
    this.Ty = paramContext.getResourceId(a.j.ActionMode_closeItemLayout, a.g.abc_action_mode_close_item_material);
    paramContext.ajT.recycle();
  }
  
  private void fB()
  {
    int m = 8;
    int j = 1;
    if (this.Tt == null)
    {
      LayoutInflater.from(getContext()).inflate(a.g.abc_action_bar_title_item, this);
      this.Tt = ((LinearLayout)getChildAt(getChildCount() - 1));
      this.LC = ((TextView)this.Tt.findViewById(a.f.action_bar_title));
      this.Tu = ((TextView)this.Tt.findViewById(a.f.action_bar_subtitle));
      if (this.Tv != 0) {
        this.LC.setTextAppearance(getContext(), this.Tv);
      }
      if (this.Tw != 0) {
        this.Tu.setTextAppearance(getContext(), this.Tw);
      }
    }
    this.LC.setText(this.Ch);
    this.Tu.setText(this.Ci);
    int i;
    label167:
    Object localObject;
    if (!TextUtils.isEmpty(this.Ch))
    {
      i = 1;
      if (TextUtils.isEmpty(this.Ci)) {
        break label234;
      }
      localObject = this.Tu;
      if (j == 0) {
        break label239;
      }
    }
    label234:
    label239:
    for (int k = 0;; k = 8)
    {
      ((TextView)localObject).setVisibility(k);
      localObject = this.Tt;
      if (i == 0)
      {
        i = m;
        if (j == 0) {}
      }
      else
      {
        i = 0;
      }
      ((LinearLayout)localObject).setVisibility(i);
      if (this.Tt.getParent() == null) {
        addView(this.Tt);
      }
      return;
      i = 0;
      break;
      j = 0;
      break label167;
    }
  }
  
  public final void c(final b paramb)
  {
    if (this.Ts == null)
    {
      this.Ts = LayoutInflater.from(getContext()).inflate(this.Ty, this, false);
      addView(this.Ts);
    }
    for (;;)
    {
      this.Ts.findViewById(a.f.action_mode_close_button).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramb.finish();
        }
      });
      paramb = (h)paramb.getMenu();
      if (this.Tf != null) {
        this.Tf.fI();
      }
      this.Tf = new d(getContext());
      this.Tf.fH();
      ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
      paramb.a(this.Tf, this.mPopupContext);
      this.mMenuView = ((ActionMenuView)this.Tf.f(this));
      r.setBackground(this.mMenuView, null);
      addView(this.mMenuView, localLayoutParams);
      return;
      if (this.Ts.getParent() == null) {
        addView(this.Ts);
      }
    }
  }
  
  public final void fC()
  {
    removeAllViews();
    this.oZ = null;
    this.mMenuView = null;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.MarginLayoutParams(-1, -2);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  public CharSequence getSubtitle()
  {
    return this.Ci;
  }
  
  public CharSequence getTitle()
  {
    return this.Ch;
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.Tf != null)
    {
      this.Tf.hideOverflowMenu();
      this.Tf.fJ();
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      paramAccessibilityEvent.setSource(this);
      paramAccessibilityEvent.setClassName(getClass().getName());
      paramAccessibilityEvent.setPackageName(getContext().getPackageName());
      paramAccessibilityEvent.setContentDescription(this.Ch);
      return;
    }
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramBoolean = bw.bj(this);
    int i;
    int j;
    int k;
    Object localObject;
    if (paramBoolean)
    {
      i = paramInt3 - paramInt1 - getPaddingRight();
      j = getPaddingTop();
      k = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
      paramInt2 = i;
      if (this.Ts != null)
      {
        paramInt2 = i;
        if (this.Ts.getVisibility() != 8)
        {
          localObject = (ViewGroup.MarginLayoutParams)this.Ts.getLayoutParams();
          if (!paramBoolean) {
            break label254;
          }
          paramInt2 = ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
          label89:
          if (!paramBoolean) {
            break label263;
          }
          paramInt4 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
          label100:
          paramInt2 = a(i, paramInt2, paramBoolean);
          paramInt2 = a(paramInt2 + a(this.Ts, paramInt2, j, k, paramBoolean), paramInt4, paramBoolean);
        }
      }
      paramInt4 = paramInt2;
      if (this.Tt != null)
      {
        paramInt4 = paramInt2;
        if (this.oZ == null)
        {
          paramInt4 = paramInt2;
          if (this.Tt.getVisibility() != 8) {
            paramInt4 = paramInt2 + a(this.Tt, paramInt2, j, k, paramBoolean);
          }
        }
      }
      if (this.oZ != null) {
        a(this.oZ, paramInt4, j, k, paramBoolean);
      }
      if (!paramBoolean) {
        break label273;
      }
      paramInt1 = getPaddingLeft();
      label213:
      if (this.mMenuView != null)
      {
        localObject = this.mMenuView;
        if (paramBoolean) {
          break label286;
        }
      }
    }
    label254:
    label263:
    label273:
    label286:
    for (paramBoolean = true;; paramBoolean = false)
    {
      a((View)localObject, paramInt1, j, k, paramBoolean);
      return;
      i = getPaddingLeft();
      break;
      paramInt2 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
      break label89;
      paramInt4 = ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
      break label100;
      paramInt1 = paramInt3 - paramInt1 - getPaddingRight();
      break label213;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int k = 1073741824;
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
    }
    if (View.MeasureSpec.getMode(paramInt2) == 0) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
    }
    int n = View.MeasureSpec.getSize(paramInt1);
    int i;
    int m;
    int j;
    if (this.Tg > 0)
    {
      i = this.Tg;
      int i1 = getPaddingTop() + getPaddingBottom();
      paramInt1 = n - getPaddingLeft() - getPaddingRight();
      m = i - i1;
      j = View.MeasureSpec.makeMeasureSpec(m, Integer.MIN_VALUE);
      paramInt2 = paramInt1;
      Object localObject;
      if (this.Ts != null)
      {
        paramInt1 = e(this.Ts, paramInt1, j);
        localObject = (ViewGroup.MarginLayoutParams)this.Ts.getLayoutParams();
        paramInt2 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
        paramInt2 = paramInt1 - (((ViewGroup.MarginLayoutParams)localObject).rightMargin + paramInt2);
      }
      paramInt1 = paramInt2;
      if (this.mMenuView != null)
      {
        paramInt1 = paramInt2;
        if (this.mMenuView.getParent() == this) {
          paramInt1 = e(this.mMenuView, paramInt2, j);
        }
      }
      paramInt2 = paramInt1;
      if (this.Tt != null)
      {
        paramInt2 = paramInt1;
        if (this.oZ == null)
        {
          if (!this.Tx) {
            break label492;
          }
          paramInt2 = View.MeasureSpec.makeMeasureSpec(0, 0);
          this.Tt.measure(paramInt2, j);
          int i2 = this.Tt.getMeasuredWidth();
          if (i2 > paramInt1) {
            break label480;
          }
          j = 1;
          label288:
          paramInt2 = paramInt1;
          if (j != 0) {
            paramInt2 = paramInt1 - i2;
          }
          localObject = this.Tt;
          if (j == 0) {
            break label486;
          }
          paramInt1 = 0;
          label313:
          ((LinearLayout)localObject).setVisibility(paramInt1);
        }
      }
      label319:
      if (this.oZ != null)
      {
        localObject = this.oZ.getLayoutParams();
        if (((ViewGroup.LayoutParams)localObject).width == -2) {
          break label506;
        }
        paramInt1 = 1073741824;
        label349:
        j = paramInt2;
        if (((ViewGroup.LayoutParams)localObject).width >= 0) {
          j = Math.min(((ViewGroup.LayoutParams)localObject).width, paramInt2);
        }
        if (((ViewGroup.LayoutParams)localObject).height == -2) {
          break label513;
        }
        paramInt2 = k;
        label384:
        if (((ViewGroup.LayoutParams)localObject).height < 0) {
          break label520;
        }
        k = Math.min(((ViewGroup.LayoutParams)localObject).height, m);
        label404:
        this.oZ.measure(View.MeasureSpec.makeMeasureSpec(j, paramInt1), View.MeasureSpec.makeMeasureSpec(k, paramInt2));
      }
      if (this.Tg > 0) {
        break label535;
      }
      j = getChildCount();
      paramInt2 = 0;
      paramInt1 = 0;
      label440:
      if (paramInt2 >= j) {
        break label527;
      }
      i = getChildAt(paramInt2).getMeasuredHeight() + i1;
      if (i <= paramInt1) {
        break label543;
      }
      paramInt1 = i;
    }
    label480:
    label486:
    label492:
    label506:
    label513:
    label520:
    label527:
    label535:
    label543:
    for (;;)
    {
      paramInt2 += 1;
      break label440;
      i = View.MeasureSpec.getSize(paramInt2);
      break;
      j = 0;
      break label288;
      paramInt1 = 8;
      break label313;
      paramInt2 = e(this.Tt, paramInt1, j);
      break label319;
      paramInt1 = Integer.MIN_VALUE;
      break label349;
      paramInt2 = Integer.MIN_VALUE;
      break label384;
      k = m;
      break label404;
      setMeasuredDimension(n, paramInt1);
      return;
      setMeasuredDimension(n, i);
      return;
    }
  }
  
  public void setContentHeight(int paramInt)
  {
    this.Tg = paramInt;
  }
  
  public void setCustomView(View paramView)
  {
    if (this.oZ != null) {
      removeView(this.oZ);
    }
    this.oZ = paramView;
    if ((paramView != null) && (this.Tt != null))
    {
      removeView(this.Tt);
      this.Tt = null;
    }
    if (paramView != null) {
      addView(paramView);
    }
    requestLayout();
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.Ci = paramCharSequence;
    fB();
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.Ch = paramCharSequence;
    fB();
  }
  
  public void setTitleOptional(boolean paramBoolean)
  {
    if (paramBoolean != this.Tx) {
      requestLayout();
    }
    this.Tx = paramBoolean;
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public final boolean showOverflowMenu()
  {
    if (this.Tf != null) {
      return this.Tf.showOverflowMenu();
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ActionBarContextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */