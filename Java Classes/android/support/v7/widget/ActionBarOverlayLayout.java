package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.k;
import android.support.v4.view.m;
import android.support.v4.view.r;
import android.support.v7.a.a.a;
import android.support.v7.a.a.f;
import android.support.v7.view.menu.o.a;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.Window.Callback;
import android.widget.OverScroller;

public class ActionBarOverlayLayout
  extends ViewGroup
  implements k, aj
{
  static final int[] Ub = { a.a.actionBarSize, 16842841 };
  private final m JG;
  private ak Ol;
  private boolean Pd;
  private int TB;
  private int TC = 0;
  private ContentFrameLayout TD;
  ActionBarContainer TF;
  private Drawable TG;
  private boolean TH;
  public boolean TI;
  private boolean TJ;
  boolean TK;
  private int TL;
  private int TM;
  private final Rect TN = new Rect();
  private final Rect TO = new Rect();
  private final Rect TP = new Rect();
  private final Rect TQ = new Rect();
  private final Rect TR = new Rect();
  private final Rect TS = new Rect();
  private final Rect TT = new Rect();
  private a TU;
  private final int TV = 600;
  private OverScroller TW;
  ViewPropertyAnimator TX;
  final AnimatorListenerAdapter TY = new AnimatorListenerAdapter()
  {
    public final void onAnimationCancel(Animator paramAnonymousAnimator)
    {
      ActionBarOverlayLayout.this.TX = null;
      ActionBarOverlayLayout.this.TK = false;
    }
    
    public final void onAnimationEnd(Animator paramAnonymousAnimator)
    {
      ActionBarOverlayLayout.this.TX = null;
      ActionBarOverlayLayout.this.TK = false;
    }
  };
  private final Runnable TZ = new Runnable()
  {
    public final void run()
    {
      ActionBarOverlayLayout.this.fE();
      ActionBarOverlayLayout.this.TX = ActionBarOverlayLayout.this.TF.animate().translationY(0.0F).setListener(ActionBarOverlayLayout.this.TY);
    }
  };
  private final Runnable Ua = new Runnable()
  {
    public final void run()
    {
      ActionBarOverlayLayout.this.fE();
      ActionBarOverlayLayout.this.TX = ActionBarOverlayLayout.this.TF.animate().translationY(-ActionBarOverlayLayout.this.TF.getHeight()).setListener(ActionBarOverlayLayout.this.TY);
    }
  };
  
  public ActionBarOverlayLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    l(paramContext);
    this.JG = new m(this);
  }
  
  private static boolean a(View paramView, Rect paramRect, boolean paramBoolean)
  {
    boolean bool = false;
    paramView = (b)paramView.getLayoutParams();
    if (paramView.leftMargin != paramRect.left)
    {
      paramView.leftMargin = paramRect.left;
      bool = true;
    }
    if (paramView.topMargin != paramRect.top)
    {
      paramView.topMargin = paramRect.top;
      bool = true;
    }
    if (paramView.rightMargin != paramRect.right)
    {
      paramView.rightMargin = paramRect.right;
      bool = true;
    }
    if ((paramBoolean) && (paramView.bottomMargin != paramRect.bottom))
    {
      paramView.bottomMargin = paramRect.bottom;
      return true;
    }
    return bool;
  }
  
  private void fD()
  {
    if (this.TD == null)
    {
      this.TD = ((ContentFrameLayout)findViewById(a.f.action_bar_activity_content));
      this.TF = ((ActionBarContainer)findViewById(a.f.action_bar_container));
      localObject = findViewById(a.f.action_bar);
      if (!(localObject instanceof ak)) {
        break label61;
      }
    }
    for (Object localObject = (ak)localObject;; localObject = ((Toolbar)localObject).getWrapper())
    {
      this.Ol = ((ak)localObject);
      return;
      label61:
      if (!(localObject instanceof Toolbar)) {
        break;
      }
    }
    throw new IllegalStateException("Can't make a decor toolbar out of " + localObject.getClass().getSimpleName());
  }
  
  private void l(Context paramContext)
  {
    boolean bool2 = true;
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(Ub);
    this.TB = localTypedArray.getDimensionPixelSize(0, 0);
    this.TG = localTypedArray.getDrawable(1);
    if (this.TG == null)
    {
      bool1 = true;
      setWillNotDraw(bool1);
      localTypedArray.recycle();
      if (paramContext.getApplicationInfo().targetSdkVersion >= 19) {
        break label94;
      }
    }
    label94:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.TH = bool1;
      this.TW = new OverScroller(paramContext);
      return;
      bool1 = false;
      break;
    }
  }
  
  public final void a(Menu paramMenu, o.a parama)
  {
    fD();
    this.Ol.a(paramMenu, parama);
  }
  
  public final void aX(int paramInt)
  {
    fD();
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      this.Ol.gz();
      return;
    case 5: 
      this.Ol.gA();
      return;
    }
    setOverlayMode(true);
  }
  
  public final boolean canShowOverflowMenu()
  {
    fD();
    return this.Ol.canShowOverflowMenu();
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof b;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((this.TG != null) && (!this.TH)) {
      if (this.TF.getVisibility() != 0) {
        break label82;
      }
    }
    label82:
    for (int i = (int)(this.TF.getBottom() + this.TF.getTranslationY() + 0.5F);; i = 0)
    {
      this.TG.setBounds(0, i, getWidth(), this.TG.getIntrinsicHeight() + i);
      this.TG.draw(paramCanvas);
      return;
    }
  }
  
  public final void eH()
  {
    fD();
    this.Ol.dismissPopupMenus();
  }
  
  final void fE()
  {
    removeCallbacks(this.TZ);
    removeCallbacks(this.Ua);
    if (this.TX != null) {
      this.TX.cancel();
    }
  }
  
  public final void fF()
  {
    fD();
    this.Ol.fF();
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    fD();
    r.V(this);
    boolean bool = a(this.TF, paramRect, false);
    this.TQ.set(paramRect);
    bw.a(this, this.TQ, this.TN);
    if (!this.TR.equals(this.TQ))
    {
      this.TR.set(this.TQ);
      bool = true;
    }
    if (!this.TO.equals(this.TN))
    {
      this.TO.set(this.TN);
      bool = true;
    }
    if (bool) {
      requestLayout();
    }
    return true;
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new b(paramLayoutParams);
  }
  
  public int getActionBarHideOffset()
  {
    if (this.TF != null) {
      return -(int)this.TF.getTranslationY();
    }
    return 0;
  }
  
  public int getNestedScrollAxes()
  {
    return this.JG.FM;
  }
  
  public CharSequence getTitle()
  {
    fD();
    return this.Ol.getTitle();
  }
  
  public final boolean hideOverflowMenu()
  {
    fD();
    return this.Ol.hideOverflowMenu();
  }
  
  public final boolean isOverflowMenuShowPending()
  {
    fD();
    return this.Ol.isOverflowMenuShowPending();
  }
  
  public final boolean isOverflowMenuShowing()
  {
    fD();
    return this.Ol.isOverflowMenuShowing();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    l(getContext());
    r.W(this);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    fE();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = getChildCount();
    paramInt3 = getPaddingLeft();
    getPaddingRight();
    paramInt4 = getPaddingTop();
    getPaddingBottom();
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      View localView = getChildAt(paramInt1);
      if (localView.getVisibility() != 8)
      {
        b localb = (b)localView.getLayoutParams();
        int i = localView.getMeasuredWidth();
        int j = localView.getMeasuredHeight();
        int k = localb.leftMargin + paramInt3;
        int m = localb.topMargin + paramInt4;
        localView.layout(k, m, i + k, j + m);
      }
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    fD();
    measureChildWithMargins(this.TF, paramInt1, 0, paramInt2, 0);
    Object localObject = (b)this.TF.getLayoutParams();
    int i1 = Math.max(0, this.TF.getMeasuredWidth() + ((b)localObject).leftMargin + ((b)localObject).rightMargin);
    int i = this.TF.getMeasuredHeight();
    int j = ((b)localObject).topMargin;
    int n = Math.max(0, ((b)localObject).bottomMargin + (i + j));
    int m = View.combineMeasuredStates(0, this.TF.getMeasuredState());
    int k;
    if ((r.V(this) & 0x100) != 0)
    {
      j = 1;
      if (j == 0) {
        break label444;
      }
      k = this.TB;
      i = k;
      if (this.TJ)
      {
        i = k;
        if (this.TF.getTabContainer() != null) {
          i = k + this.TB;
        }
      }
    }
    for (;;)
    {
      label153:
      this.TP.set(this.TN);
      this.TS.set(this.TQ);
      if ((!this.TI) && (j == 0))
      {
        localObject = this.TP;
        ((Rect)localObject).top = (i + ((Rect)localObject).top);
        localObject = this.TP;
      }
      for (((Rect)localObject).bottom += 0;; ((Rect)localObject).bottom += 0)
      {
        a(this.TD, this.TP, true);
        if (!this.TT.equals(this.TS))
        {
          this.TT.set(this.TS);
          this.TD.e(this.TS);
        }
        measureChildWithMargins(this.TD, paramInt1, 0, paramInt2, 0);
        localObject = (b)this.TD.getLayoutParams();
        i = Math.max(i1, this.TD.getMeasuredWidth() + ((b)localObject).leftMargin + ((b)localObject).rightMargin);
        j = this.TD.getMeasuredHeight();
        k = ((b)localObject).topMargin;
        j = Math.max(n, ((b)localObject).bottomMargin + (j + k));
        k = View.combineMeasuredStates(m, this.TD.getMeasuredState());
        m = getPaddingLeft();
        n = getPaddingRight();
        j = Math.max(j + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i + (m + n), getSuggestedMinimumWidth()), paramInt1, k), View.resolveSizeAndState(j, paramInt2, k << 16));
        return;
        j = 0;
        break;
        label444:
        if (this.TF.getVisibility() == 8) {
          break label506;
        }
        i = this.TF.getMeasuredHeight();
        break label153;
        localObject = this.TS;
        ((Rect)localObject).top = (i + ((Rect)localObject).top);
        localObject = this.TS;
      }
      label506:
      i = 0;
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    int i = 0;
    if ((!this.Pd) || (!paramBoolean)) {
      return false;
    }
    this.TW.fling(0, 0, 0, (int)paramFloat2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
    if (this.TW.getFinalY() > this.TF.getHeight()) {
      i = 1;
    }
    if (i != 0)
    {
      fE();
      this.Ua.run();
    }
    for (;;)
    {
      this.TK = true;
      return true;
      fE();
      this.TZ.run();
    }
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt) {}
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.TL += paramInt2;
    setActionBarHideOffset(this.TL);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    this.JG.FM = paramInt;
    this.TL = getActionBarHideOffset();
    fE();
    if (this.TU != null) {
      this.TU.eL();
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) == 0) || (this.TF.getVisibility() != 0)) {
      return false;
    }
    return this.Pd;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    if ((this.Pd) && (!this.TK))
    {
      if (this.TL <= this.TF.getHeight())
      {
        fE();
        postDelayed(this.TZ, 600L);
      }
    }
    else {
      return;
    }
    fE();
    postDelayed(this.Ua, 600L);
  }
  
  public void onWindowSystemUiVisibilityChanged(int paramInt)
  {
    boolean bool = true;
    if (Build.VERSION.SDK_INT >= 16) {
      super.onWindowSystemUiVisibilityChanged(paramInt);
    }
    fD();
    int k = this.TM;
    this.TM = paramInt;
    int i;
    int j;
    if ((paramInt & 0x4) == 0)
    {
      i = 1;
      if ((paramInt & 0x100) == 0) {
        break label120;
      }
      j = 1;
      label49:
      if (this.TU != null)
      {
        a locala = this.TU;
        if (j != 0) {
          break label125;
        }
        label66:
        locala.D(bool);
        if ((i == 0) && (j != 0)) {
          break label131;
        }
        this.TU.eJ();
      }
    }
    for (;;)
    {
      if ((((k ^ paramInt) & 0x100) != 0) && (this.TU != null)) {
        r.W(this);
      }
      return;
      i = 0;
      break;
      label120:
      j = 0;
      break label49;
      label125:
      bool = false;
      break label66;
      label131:
      this.TU.eK();
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    this.TC = paramInt;
    if (this.TU != null) {
      this.TU.onWindowVisibilityChanged(paramInt);
    }
  }
  
  public void setActionBarHideOffset(int paramInt)
  {
    fE();
    paramInt = Math.max(0, Math.min(paramInt, this.TF.getHeight()));
    this.TF.setTranslationY(-paramInt);
  }
  
  public void setActionBarVisibilityCallback(a parama)
  {
    this.TU = parama;
    if (getWindowToken() != null)
    {
      this.TU.onWindowVisibilityChanged(this.TC);
      if (this.TM != 0)
      {
        onWindowSystemUiVisibilityChanged(this.TM);
        r.W(this);
      }
    }
  }
  
  public void setHasNonEmbeddedTabs(boolean paramBoolean)
  {
    this.TJ = paramBoolean;
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean)
  {
    if (paramBoolean != this.Pd)
    {
      this.Pd = paramBoolean;
      if (!paramBoolean)
      {
        fE();
        setActionBarHideOffset(0);
      }
    }
  }
  
  public void setIcon(int paramInt)
  {
    fD();
    this.Ol.setIcon(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    fD();
    this.Ol.setIcon(paramDrawable);
  }
  
  public void setLogo(int paramInt)
  {
    fD();
    this.Ol.setLogo(paramInt);
  }
  
  public void setOverlayMode(boolean paramBoolean)
  {
    this.TI = paramBoolean;
    if ((paramBoolean) && (getContext().getApplicationInfo().targetSdkVersion < 19)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      this.TH = paramBoolean;
      return;
    }
  }
  
  public void setShowingForActionMode(boolean paramBoolean) {}
  
  public void setUiOptions(int paramInt) {}
  
  public void setWindowCallback(Window.Callback paramCallback)
  {
    fD();
    this.Ol.setWindowCallback(paramCallback);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    fD();
    this.Ol.setWindowTitle(paramCharSequence);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public final boolean showOverflowMenu()
  {
    fD();
    return this.Ol.showOverflowMenu();
  }
  
  public static abstract interface a
  {
    public abstract void D(boolean paramBoolean);
    
    public abstract void eJ();
    
    public abstract void eK();
    
    public abstract void eL();
    
    public abstract void onWindowVisibilityChanged(int paramInt);
  }
  
  public static final class b
    extends ViewGroup.MarginLayoutParams
  {
    public b()
    {
      super(-1);
    }
    
    public b(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public b(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ActionBarOverlayLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */