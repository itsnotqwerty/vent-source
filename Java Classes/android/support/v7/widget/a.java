package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.support.v4.view.r;
import android.support.v4.view.v;
import android.support.v4.view.w;
import android.support.v7.a.a.j;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

abstract class a
  extends ViewGroup
{
  protected final a Te = new a();
  protected d Tf;
  protected int Tg;
  protected v Th;
  private boolean mEatingHover;
  private boolean mEatingTouch;
  protected ActionMenuView mMenuView;
  protected final Context mPopupContext;
  
  a(Context paramContext)
  {
    this(paramContext, null);
  }
  
  a(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = new TypedValue();
    if ((paramContext.getTheme().resolveAttribute(android.support.v7.a.a.a.actionBarPopupTheme, paramAttributeSet, true)) && (paramAttributeSet.resourceId != 0))
    {
      this.mPopupContext = new ContextThemeWrapper(paramContext, paramAttributeSet.resourceId);
      return;
    }
    this.mPopupContext = paramContext;
  }
  
  protected static int a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramInt1 - paramInt2;
    }
    return paramInt1 + paramInt2;
  }
  
  protected static int a(View paramView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    paramInt2 = (paramInt3 - j) / 2 + paramInt2;
    if (paramBoolean) {
      paramView.layout(paramInt1 - i, paramInt2, paramInt1, j + paramInt2);
    }
    for (;;)
    {
      paramInt1 = i;
      if (paramBoolean) {
        paramInt1 = -i;
      }
      return paramInt1;
      paramView.layout(paramInt1, paramInt2, paramInt1 + i, j + paramInt2);
    }
  }
  
  protected static int e(View paramView, int paramInt1, int paramInt2)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, Integer.MIN_VALUE), paramInt2);
    return Math.max(0, paramInt1 - paramView.getMeasuredWidth() + 0);
  }
  
  public v b(int paramInt, long paramLong)
  {
    if (this.Th != null) {
      this.Th.cancel();
    }
    if (paramInt == 0)
    {
      if (getVisibility() != 0) {
        setAlpha(0.0F);
      }
      localv = r.S(this).k(1.0F);
      localv.e(paramLong);
      localv.a(this.Te.a(localv, paramInt));
      return localv;
    }
    v localv = r.S(this).k(0.0F);
    localv.e(paramLong);
    localv.a(this.Te.a(localv, paramInt));
    return localv;
  }
  
  public int getAnimatedVisibility()
  {
    if (this.Th != null) {
      return this.Te.vQ;
    }
    return getVisibility();
  }
  
  public int getContentHeight()
  {
    return this.Tg;
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = getContext().obtainStyledAttributes(null, a.j.ActionBar, android.support.v7.a.a.a.actionBarStyle, 0);
    setContentHeight(paramConfiguration.getLayoutDimension(a.j.ActionBar_height, 0));
    paramConfiguration.recycle();
    if (this.Tf != null) {
      this.Tf.fG();
    }
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if (i == 9) {
      this.mEatingHover = false;
    }
    if (!this.mEatingHover)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i == 9) && (!bool)) {
        this.mEatingHover = true;
      }
    }
    if ((i == 10) || (i == 3)) {
      this.mEatingHover = false;
    }
    return true;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if (i == 0) {
      this.mEatingTouch = false;
    }
    if (!this.mEatingTouch)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i == 0) && (!bool)) {
        this.mEatingTouch = true;
      }
    }
    if ((i == 1) || (i == 3)) {
      this.mEatingTouch = false;
    }
    return true;
  }
  
  public void setContentHeight(int paramInt)
  {
    this.Tg = paramInt;
    requestLayout();
  }
  
  public void setVisibility(int paramInt)
  {
    if (paramInt != getVisibility())
    {
      if (this.Th != null) {
        this.Th.cancel();
      }
      super.setVisibility(paramInt);
    }
  }
  
  public boolean showOverflowMenu()
  {
    if (this.Tf != null) {
      return this.Tf.showOverflowMenu();
    }
    return false;
  }
  
  protected final class a
    implements w
  {
    private boolean tB = false;
    int vQ;
    
    protected a() {}
    
    public final a a(v paramv, int paramInt)
    {
      a.this.Th = paramv;
      this.vQ = paramInt;
      return this;
    }
    
    public final void ao(View paramView)
    {
      a.a(a.this);
      this.tB = false;
    }
    
    public final void ap(View paramView)
    {
      if (this.tB) {
        return;
      }
      a.this.Th = null;
      a.a(a.this, this.vQ);
    }
    
    public final void aq(View paramView)
    {
      this.tB = true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */