package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.r;
import android.support.v7.a.a.f;
import android.support.v7.a.a.j;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class ActionBarContainer
  extends FrameLayout
{
  Drawable RK;
  private boolean Tk;
  private View Tl;
  private View Tm;
  private View Tn;
  Drawable To;
  Drawable Tp;
  boolean Tq;
  boolean Tr;
  private int dc;
  
  public ActionBarContainer(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    Object localObject;
    boolean bool;
    if (Build.VERSION.SDK_INT >= 21)
    {
      localObject = new c(this);
      r.setBackground(this, (Drawable)localObject);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.j.ActionBar);
      this.RK = paramContext.getDrawable(a.j.ActionBar_background);
      this.To = paramContext.getDrawable(a.j.ActionBar_backgroundStacked);
      this.dc = paramContext.getDimensionPixelSize(a.j.ActionBar_height, -1);
      if (getId() == a.f.split_action_bar)
      {
        this.Tq = true;
        this.Tp = paramContext.getDrawable(a.j.ActionBar_backgroundSplit);
      }
      paramContext.recycle();
      if (!this.Tq) {
        break label143;
      }
      if (this.Tp != null) {
        break label138;
      }
      bool = true;
    }
    for (;;)
    {
      setWillNotDraw(bool);
      return;
      localObject = new b(this);
      break;
      label138:
      bool = false;
      continue;
      label143:
      if ((this.RK == null) && (this.To == null)) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
  
  private static boolean aw(View paramView)
  {
    return (paramView == null) || (paramView.getVisibility() == 8) || (paramView.getMeasuredHeight() == 0);
  }
  
  private static int ax(View paramView)
  {
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)paramView.getLayoutParams();
    int i = paramView.getMeasuredHeight();
    int j = localLayoutParams.topMargin;
    return localLayoutParams.bottomMargin + (i + j);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if ((this.RK != null) && (this.RK.isStateful())) {
      this.RK.setState(getDrawableState());
    }
    if ((this.To != null) && (this.To.isStateful())) {
      this.To.setState(getDrawableState());
    }
    if ((this.Tp != null) && (this.Tp.isStateful())) {
      this.Tp.setState(getDrawableState());
    }
  }
  
  public View getTabContainer()
  {
    return this.Tl;
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (this.RK != null) {
      this.RK.jumpToCurrentState();
    }
    if (this.To != null) {
      this.To.jumpToCurrentState();
    }
    if (this.Tp != null) {
      this.Tp.jumpToCurrentState();
    }
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
    this.Tm = findViewById(a.f.action_bar);
    this.Tn = findViewById(a.f.action_context_bar);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    super.onHoverEvent(paramMotionEvent);
    return true;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return (this.Tk) || (super.onInterceptTouchEvent(paramMotionEvent));
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 1;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    View localView = this.Tl;
    if ((localView != null) && (localView.getVisibility() != 8))
    {
      paramBoolean = true;
      if ((localView != null) && (localView.getVisibility() != 8))
      {
        paramInt2 = getMeasuredHeight();
        FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
        localView.layout(paramInt1, paramInt2 - localView.getMeasuredHeight() - localLayoutParams.bottomMargin, paramInt3, paramInt2 - localLayoutParams.bottomMargin);
      }
      if (!this.Tq) {
        break label143;
      }
      if (this.Tp == null) {
        break label323;
      }
      this.Tp.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
      paramInt1 = i;
    }
    for (;;)
    {
      if (paramInt1 != 0) {
        invalidate();
      }
      return;
      paramBoolean = false;
      break;
      label143:
      if (this.RK != null) {
        if (this.Tm.getVisibility() == 0) {
          this.RK.setBounds(this.Tm.getLeft(), this.Tm.getTop(), this.Tm.getRight(), this.Tm.getBottom());
        }
      }
      label195:
      for (paramInt1 = 1;; paramInt1 = 0)
      {
        this.Tr = paramBoolean;
        if ((paramBoolean) && (this.To != null))
        {
          this.To.setBounds(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom());
          paramInt1 = i;
          break;
          if ((this.Tn != null) && (this.Tn.getVisibility() == 0))
          {
            this.RK.setBounds(this.Tn.getLeft(), this.Tn.getTop(), this.Tn.getRight(), this.Tn.getBottom());
            break label195;
          }
          this.RK.setBounds(0, 0, 0, 0);
          break label195;
        }
        break;
      }
      label323:
      paramInt1 = 0;
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (this.Tm == null)
    {
      i = paramInt2;
      if (View.MeasureSpec.getMode(paramInt2) == Integer.MIN_VALUE)
      {
        i = paramInt2;
        if (this.dc >= 0) {
          i = View.MeasureSpec.makeMeasureSpec(Math.min(this.dc, View.MeasureSpec.getSize(paramInt2)), Integer.MIN_VALUE);
        }
      }
    }
    super.onMeasure(paramInt1, i);
    if (this.Tm == null) {}
    do
    {
      return;
      paramInt2 = View.MeasureSpec.getMode(i);
    } while ((this.Tl == null) || (this.Tl.getVisibility() == 8) || (paramInt2 == 1073741824));
    if (!aw(this.Tm))
    {
      paramInt1 = ax(this.Tm);
      if (paramInt2 != Integer.MIN_VALUE) {
        break label167;
      }
    }
    label167:
    for (paramInt2 = View.MeasureSpec.getSize(i);; paramInt2 = Integer.MAX_VALUE)
    {
      setMeasuredDimension(getMeasuredWidth(), Math.min(paramInt1 + ax(this.Tl), paramInt2));
      return;
      if (!aw(this.Tn))
      {
        paramInt1 = ax(this.Tn);
        break;
      }
      paramInt1 = 0;
      break;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }
  
  public void setPrimaryBackground(Drawable paramDrawable)
  {
    boolean bool = true;
    if (this.RK != null)
    {
      this.RK.setCallback(null);
      unscheduleDrawable(this.RK);
    }
    this.RK = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      if (this.Tm != null) {
        this.RK.setBounds(this.Tm.getLeft(), this.Tm.getTop(), this.Tm.getRight(), this.Tm.getBottom());
      }
    }
    if (this.Tq) {
      if (this.Tp != null) {}
    }
    for (;;)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
      bool = false;
      continue;
      if ((this.RK != null) || (this.To != null)) {
        bool = false;
      }
    }
  }
  
  public void setSplitBackground(Drawable paramDrawable)
  {
    boolean bool = true;
    if (this.Tp != null)
    {
      this.Tp.setCallback(null);
      unscheduleDrawable(this.Tp);
    }
    this.Tp = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      if ((this.Tq) && (this.Tp != null)) {
        this.Tp.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
      }
    }
    if (this.Tq) {
      if (this.Tp != null) {}
    }
    for (;;)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
      bool = false;
      continue;
      if ((this.RK != null) || (this.To != null)) {
        bool = false;
      }
    }
  }
  
  public void setStackedBackground(Drawable paramDrawable)
  {
    boolean bool = true;
    if (this.To != null)
    {
      this.To.setCallback(null);
      unscheduleDrawable(this.To);
    }
    this.To = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      if ((this.Tr) && (this.To != null)) {
        this.To.setBounds(this.Tl.getLeft(), this.Tl.getTop(), this.Tl.getRight(), this.Tl.getBottom());
      }
    }
    if (this.Tq) {
      if (this.Tp != null) {}
    }
    for (;;)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
      bool = false;
      continue;
      if ((this.RK != null) || (this.To != null)) {
        bool = false;
      }
    }
  }
  
  public void setTabContainer(bh parambh)
  {
    if (this.Tl != null) {
      removeView(this.Tl);
    }
    this.Tl = parambh;
    if (parambh != null)
    {
      addView(parambh);
      ViewGroup.LayoutParams localLayoutParams = parambh.getLayoutParams();
      localLayoutParams.width = -1;
      localLayoutParams.height = -2;
      parambh.setAllowCollapse(false);
    }
  }
  
  public void setTransitioning(boolean paramBoolean)
  {
    this.Tk = paramBoolean;
    if (paramBoolean) {}
    for (int i = 393216;; i = 262144)
    {
      setDescendantFocusability(i);
      return;
    }
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      if (this.RK != null) {
        this.RK.setVisible(bool, false);
      }
      if (this.To != null) {
        this.To.setVisible(bool, false);
      }
      if (this.Tp != null) {
        this.Tp.setVisible(bool, false);
      }
      return;
    }
  }
  
  public ActionMode startActionModeForChild(View paramView, ActionMode.Callback paramCallback)
  {
    return null;
  }
  
  public ActionMode startActionModeForChild(View paramView, ActionMode.Callback paramCallback, int paramInt)
  {
    if (paramInt != 0) {
      return super.startActionModeForChild(paramView, paramCallback, paramInt);
    }
    return null;
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return ((paramDrawable == this.RK) && (!this.Tq)) || ((paramDrawable == this.To) && (this.Tr)) || ((paramDrawable == this.Tp) && (this.Tq)) || (super.verifyDrawable(paramDrawable));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ActionBarContainer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */