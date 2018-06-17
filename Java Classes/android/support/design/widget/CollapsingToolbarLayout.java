package android.support.design.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.design.a.f;
import android.support.design.a.j;
import android.support.design.a.k;
import android.support.v4.g.i;
import android.support.v4.view.n;
import android.support.v4.view.z;
import android.support.v4.widget.s;
import android.support.v7.a.a.i;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class CollapsingToolbarLayout
  extends FrameLayout
{
  z iK;
  private boolean kX = true;
  private int kY;
  private Toolbar kZ;
  private View la;
  private View lb;
  private int lc;
  private int ld;
  private int le;
  private int lf;
  private final Rect lg = new Rect();
  final e lh;
  private boolean li;
  private boolean lj;
  private Drawable lk;
  Drawable ll;
  private int lm;
  private boolean ln;
  private ValueAnimator lo;
  private long lp;
  private int lq = -1;
  private AppBarLayout.b lr;
  int ls;
  
  public CollapsingToolbarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    p.d(paramContext);
    this.lh = new e(this);
    this.lh.a(a.iE);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.CollapsingToolbarLayout, paramInt, a.j.Widget_Design_CollapsingToolbar);
    this.lh.z(paramContext.getInt(a.k.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
    this.lh.A(paramContext.getInt(a.k.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
    paramInt = paramContext.getDimensionPixelSize(a.k.CollapsingToolbarLayout_expandedTitleMargin, 0);
    this.lf = paramInt;
    this.le = paramInt;
    this.ld = paramInt;
    this.lc = paramInt;
    if (paramContext.hasValue(a.k.CollapsingToolbarLayout_expandedTitleMarginStart)) {
      this.lc = paramContext.getDimensionPixelSize(a.k.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
    }
    if (paramContext.hasValue(a.k.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
      this.le = paramContext.getDimensionPixelSize(a.k.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
    }
    if (paramContext.hasValue(a.k.CollapsingToolbarLayout_expandedTitleMarginTop)) {
      this.ld = paramContext.getDimensionPixelSize(a.k.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
    }
    if (paramContext.hasValue(a.k.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
      this.lf = paramContext.getDimensionPixelSize(a.k.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
    }
    this.li = paramContext.getBoolean(a.k.CollapsingToolbarLayout_titleEnabled, true);
    setTitle(paramContext.getText(a.k.CollapsingToolbarLayout_title));
    this.lh.C(a.j.TextAppearance_Design_CollapsingToolbar_Expanded);
    this.lh.B(a.i.TextAppearance_AppCompat_Widget_ActionBar_Title);
    if (paramContext.hasValue(a.k.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
      this.lh.C(paramContext.getResourceId(a.k.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
    }
    if (paramContext.hasValue(a.k.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
      this.lh.B(paramContext.getResourceId(a.k.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
    }
    this.lq = paramContext.getDimensionPixelSize(a.k.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
    this.lp = paramContext.getInt(a.k.CollapsingToolbarLayout_scrimAnimationDuration, 600);
    setContentScrim(paramContext.getDrawable(a.k.CollapsingToolbarLayout_contentScrim));
    setStatusBarScrim(paramContext.getDrawable(a.k.CollapsingToolbarLayout_statusBarScrim));
    this.kY = paramContext.getResourceId(a.k.CollapsingToolbarLayout_toolbarId, -1);
    paramContext.recycle();
    setWillNotDraw(false);
    android.support.v4.view.r.a(this, new n()
    {
      public final z a(View paramAnonymousView, z paramAnonymousz)
      {
        Object localObject = null;
        CollapsingToolbarLayout localCollapsingToolbarLayout = CollapsingToolbarLayout.this;
        if (android.support.v4.view.r.X(localCollapsingToolbarLayout)) {}
        for (paramAnonymousView = paramAnonymousz;; paramAnonymousView = null)
        {
          if (!i.equals(localCollapsingToolbarLayout.iK, paramAnonymousView))
          {
            localCollapsingToolbarLayout.iK = paramAnonymousView;
            localCollapsingToolbarLayout.requestLayout();
          }
          paramAnonymousView = (View)localObject;
          if (Build.VERSION.SDK_INT >= 20) {
            paramAnonymousView = new z(((WindowInsets)paramAnonymousz.HA).consumeSystemWindowInsets());
          }
          return paramAnonymousView;
        }
      }
    });
  }
  
  private void bv()
  {
    if (!this.kX) {
      return;
    }
    this.kZ = null;
    this.la = null;
    if (this.kY != -1)
    {
      this.kZ = ((Toolbar)findViewById(this.kY));
      if (this.kZ != null)
      {
        Object localObject2 = this.kZ;
        for (localObject1 = ((View)localObject2).getParent(); (localObject1 != this) && (localObject1 != null); localObject1 = ((ViewParent)localObject1).getParent()) {
          if ((localObject1 instanceof View)) {
            localObject2 = (View)localObject1;
          }
        }
        this.la = ((View)localObject2);
      }
    }
    int i;
    if (this.kZ == null)
    {
      int j = getChildCount();
      i = 0;
      if (i >= j) {
        break label157;
      }
      localObject1 = getChildAt(i);
      if (!(localObject1 instanceof Toolbar)) {
        break label150;
      }
    }
    label150:
    label157:
    for (Object localObject1 = (Toolbar)localObject1;; localObject1 = null)
    {
      this.kZ = ((Toolbar)localObject1);
      bw();
      this.kX = false;
      return;
      i += 1;
      break;
    }
  }
  
  private void bw()
  {
    if ((!this.li) && (this.lb != null))
    {
      ViewParent localViewParent = this.lb.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(this.lb);
      }
    }
    if ((this.li) && (this.kZ != null))
    {
      if (this.lb == null) {
        this.lb = new View(getContext());
      }
      if (this.lb.getParent() == null) {
        this.kZ.addView(this.lb, -1, -1);
      }
    }
  }
  
  private static int j(View paramView)
  {
    Object localObject = paramView.getLayoutParams();
    if ((localObject instanceof ViewGroup.MarginLayoutParams))
    {
      localObject = (ViewGroup.MarginLayoutParams)localObject;
      int i = paramView.getHeight();
      int j = ((ViewGroup.MarginLayoutParams)localObject).topMargin;
      return ((ViewGroup.MarginLayoutParams)localObject).bottomMargin + (i + j);
    }
    return paramView.getHeight();
  }
  
  static r k(View paramView)
  {
    r localr2 = (r)paramView.getTag(a.f.view_offset_helper);
    r localr1 = localr2;
    if (localr2 == null)
    {
      localr1 = new r(paramView);
      paramView.setTag(a.f.view_offset_helper, localr1);
    }
    return localr1;
  }
  
  final void bx()
  {
    if ((this.lk != null) || (this.ll != null)) {
      if (getHeight() + this.ls >= getScrimVisibleHeightTrigger()) {
        break label38;
      }
    }
    label38:
    for (boolean bool = true;; bool = false)
    {
      setScrimsShown(bool);
      return;
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof a;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    bv();
    if ((this.kZ == null) && (this.lk != null) && (this.lm > 0))
    {
      this.lk.mutate().setAlpha(this.lm);
      this.lk.draw(paramCanvas);
    }
    if ((this.li) && (this.lj)) {
      this.lh.draw(paramCanvas);
    }
    if ((this.ll != null) && (this.lm > 0)) {
      if (this.iK == null) {
        break label153;
      }
    }
    label153:
    for (int i = this.iK.getSystemWindowInsetTop();; i = 0)
    {
      if (i > 0)
      {
        this.ll.setBounds(0, -this.ls, getWidth(), i - this.ls);
        this.ll.mutate().setAlpha(this.lm);
        this.ll.draw(paramCanvas);
      }
      return;
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    boolean bool = false;
    if ((this.lk != null) && (this.lm > 0)) {
      if ((this.la == null) || (this.la == this)) {
        if (paramView == this.kZ)
        {
          i = 1;
          if (i == 0) {
            break label120;
          }
          this.lk.mutate().setAlpha(this.lm);
          this.lk.draw(paramCanvas);
        }
      }
    }
    label120:
    for (int i = 1;; i = 0)
    {
      if ((super.drawChild(paramCanvas, paramView, paramLong)) || (i != 0)) {
        bool = true;
      }
      return bool;
      i = 0;
      break;
      if (paramView == this.la)
      {
        i = 1;
        break;
      }
      i = 0;
      break;
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    boolean bool2 = false;
    Drawable localDrawable = this.ll;
    boolean bool1 = bool2;
    if (localDrawable != null)
    {
      bool1 = bool2;
      if (localDrawable.isStateful()) {
        bool1 = localDrawable.setState(arrayOfInt) | false;
      }
    }
    localDrawable = this.lk;
    bool2 = bool1;
    if (localDrawable != null)
    {
      bool2 = bool1;
      if (localDrawable.isStateful()) {
        bool2 = bool1 | localDrawable.setState(arrayOfInt);
      }
    }
    bool1 = bool2;
    if (this.lh != null) {
      bool1 = bool2 | this.lh.setState(arrayOfInt);
    }
    if (bool1) {
      invalidate();
    }
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new a(getContext(), paramAttributeSet);
  }
  
  public int getCollapsedTitleGravity()
  {
    return this.lh.kn;
  }
  
  public Typeface getCollapsedTitleTypeface()
  {
    return this.lh.bq();
  }
  
  public Drawable getContentScrim()
  {
    return this.lk;
  }
  
  public int getExpandedTitleGravity()
  {
    return this.lh.km;
  }
  
  public int getExpandedTitleMarginBottom()
  {
    return this.lf;
  }
  
  public int getExpandedTitleMarginEnd()
  {
    return this.le;
  }
  
  public int getExpandedTitleMarginStart()
  {
    return this.lc;
  }
  
  public int getExpandedTitleMarginTop()
  {
    return this.ld;
  }
  
  public Typeface getExpandedTitleTypeface()
  {
    e locale = this.lh;
    if (locale.kz != null) {
      return locale.kz;
    }
    return Typeface.DEFAULT;
  }
  
  int getScrimAlpha()
  {
    return this.lm;
  }
  
  public long getScrimAnimationDuration()
  {
    return this.lp;
  }
  
  public int getScrimVisibleHeightTrigger()
  {
    if (this.lq >= 0) {
      return this.lq;
    }
    if (this.iK != null) {}
    for (int i = this.iK.getSystemWindowInsetTop();; i = 0)
    {
      int j = android.support.v4.view.r.R(this);
      if (j <= 0) {
        break;
      }
      return Math.min(i + j * 2, getHeight());
    }
    return getHeight() / 3;
  }
  
  public Drawable getStatusBarScrim()
  {
    return this.ll;
  }
  
  public CharSequence getTitle()
  {
    if (this.li) {
      return this.lh.kB;
    }
    return null;
  }
  
  final int l(View paramView)
  {
    r localr = k(paramView);
    a locala = (a)paramView.getLayoutParams();
    return getHeight() - localr.qf - paramView.getHeight() - locala.bottomMargin;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ViewParent localViewParent = getParent();
    if ((localViewParent instanceof AppBarLayout))
    {
      android.support.v4.view.r.e(this, android.support.v4.view.r.X((View)localViewParent));
      if (this.lr == null) {
        this.lr = new b();
      }
      ((AppBarLayout)localViewParent).a(this.lr);
      android.support.v4.view.r.W(this);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    ViewParent localViewParent = getParent();
    if ((this.lr != null) && ((localViewParent instanceof AppBarLayout))) {
      ((AppBarLayout)localViewParent).b(this.lr);
    }
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = 1;
    int m = 0;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    int k;
    int n;
    Object localObject;
    if (this.iK != null)
    {
      k = this.iK.getSystemWindowInsetTop();
      n = getChildCount();
      i = 0;
      while (i < n)
      {
        localObject = getChildAt(i);
        if ((!android.support.v4.view.r.X((View)localObject)) && (((View)localObject).getTop() < k)) {
          android.support.v4.view.r.m((View)localObject, k);
        }
        i += 1;
      }
    }
    if ((this.li) && (this.lb != null))
    {
      if ((!android.support.v4.view.r.ah(this.lb)) || (this.lb.getVisibility() != 0)) {
        break label404;
      }
      paramBoolean = true;
      this.lj = paramBoolean;
      if (this.lj)
      {
        if (android.support.v4.view.r.K(this) != 1) {
          break label409;
        }
        i = j;
        label151:
        if (this.la == null) {
          break label415;
        }
        localObject = this.la;
        label164:
        n = l((View)localObject);
        s.a(this, this.lb, this.lg);
        localObject = this.lh;
        int i1 = this.lg.left;
        if (i == 0) {
          break label424;
        }
        j = this.kZ.getTitleMarginEnd();
        label213:
        int i2 = this.lg.top;
        int i3 = this.kZ.getTitleMarginTop();
        int i4 = this.lg.right;
        if (i == 0) {
          break label436;
        }
        k = this.kZ.getTitleMarginStart();
        label254:
        ((e)localObject).b(i1 + j, i3 + (i2 + n), k + i4, n + this.lg.bottom - this.kZ.getTitleMarginBottom());
        localObject = this.lh;
        if (i == 0) {
          break label448;
        }
        j = this.le;
        label312:
        k = this.lg.top;
        n = this.ld;
        if (i == 0) {
          break label457;
        }
      }
    }
    label404:
    label409:
    label415:
    label424:
    label436:
    label448:
    label457:
    for (int i = this.lc;; i = this.le)
    {
      ((e)localObject).a(j, k + n, paramInt3 - paramInt1 - i, paramInt4 - paramInt2 - this.lf);
      this.lh.bt();
      paramInt2 = getChildCount();
      paramInt1 = m;
      while (paramInt1 < paramInt2)
      {
        k(getChildAt(paramInt1)).cc();
        paramInt1 += 1;
      }
      paramBoolean = false;
      break;
      i = 0;
      break label151;
      localObject = this.kZ;
      break label164;
      j = this.kZ.getTitleMarginStart();
      break label213;
      k = this.kZ.getTitleMarginEnd();
      break label254;
      j = this.lc;
      break label312;
    }
    if (this.kZ != null)
    {
      if ((this.li) && (TextUtils.isEmpty(this.lh.kB))) {
        this.lh.setText(this.kZ.getTitle());
      }
      if ((this.la != null) && (this.la != this)) {
        break label538;
      }
      setMinimumHeight(j(this.kZ));
    }
    for (;;)
    {
      bx();
      return;
      label538:
      setMinimumHeight(j(this.la));
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    bv();
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getMode(paramInt2);
    if (this.iK != null) {}
    for (paramInt2 = this.iK.getSystemWindowInsetTop();; paramInt2 = 0)
    {
      if ((i == 0) && (paramInt2 > 0)) {
        super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(paramInt2 + getMeasuredHeight(), 1073741824));
      }
      return;
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.lk != null) {
      this.lk.setBounds(0, 0, paramInt1, paramInt2);
    }
  }
  
  public void setCollapsedTitleGravity(int paramInt)
  {
    this.lh.A(paramInt);
  }
  
  public void setCollapsedTitleTextAppearance(int paramInt)
  {
    this.lh.B(paramInt);
  }
  
  public void setCollapsedTitleTextColor(int paramInt)
  {
    setCollapsedTitleTextColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setCollapsedTitleTextColor(ColorStateList paramColorStateList)
  {
    this.lh.b(paramColorStateList);
  }
  
  public void setCollapsedTitleTypeface(Typeface paramTypeface)
  {
    e locale = this.lh;
    if (e.a(locale.ky, paramTypeface))
    {
      locale.ky = paramTypeface;
      locale.bt();
    }
  }
  
  public void setContentScrim(Drawable paramDrawable)
  {
    Drawable localDrawable = null;
    if (this.lk != paramDrawable)
    {
      if (this.lk != null) {
        this.lk.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable = paramDrawable.mutate();
      }
      this.lk = localDrawable;
      if (this.lk != null)
      {
        this.lk.setBounds(0, 0, getWidth(), getHeight());
        this.lk.setCallback(this);
        this.lk.setAlpha(this.lm);
      }
      android.support.v4.view.r.I(this);
    }
  }
  
  public void setContentScrimColor(int paramInt)
  {
    setContentScrim(new ColorDrawable(paramInt));
  }
  
  public void setContentScrimResource(int paramInt)
  {
    setContentScrim(android.support.v4.content.a.a(getContext(), paramInt));
  }
  
  public void setExpandedTitleColor(int paramInt)
  {
    setExpandedTitleTextColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setExpandedTitleGravity(int paramInt)
  {
    this.lh.z(paramInt);
  }
  
  public void setExpandedTitleMarginBottom(int paramInt)
  {
    this.lf = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginEnd(int paramInt)
  {
    this.le = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginStart(int paramInt)
  {
    this.lc = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginTop(int paramInt)
  {
    this.ld = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleTextAppearance(int paramInt)
  {
    this.lh.C(paramInt);
  }
  
  public void setExpandedTitleTextColor(ColorStateList paramColorStateList)
  {
    this.lh.c(paramColorStateList);
  }
  
  public void setExpandedTitleTypeface(Typeface paramTypeface)
  {
    e locale = this.lh;
    if (e.a(locale.kz, paramTypeface))
    {
      locale.kz = paramTypeface;
      locale.bt();
    }
  }
  
  void setScrimAlpha(int paramInt)
  {
    if (paramInt != this.lm)
    {
      if ((this.lk != null) && (this.kZ != null)) {
        android.support.v4.view.r.I(this.kZ);
      }
      this.lm = paramInt;
      android.support.v4.view.r.I(this);
    }
  }
  
  public void setScrimAnimationDuration(long paramLong)
  {
    this.lp = paramLong;
  }
  
  public void setScrimVisibleHeightTrigger(int paramInt)
  {
    if (this.lq != paramInt)
    {
      this.lq = paramInt;
      bx();
    }
  }
  
  public void setScrimsShown(boolean paramBoolean)
  {
    int j = 255;
    label40:
    Interpolator localInterpolator;
    if ((android.support.v4.view.r.ae(this)) && (!isInEditMode()))
    {
      i = 1;
      if (this.ln != paramBoolean)
      {
        if (i == 0) {
          break label187;
        }
        if (!paramBoolean) {
          break label154;
        }
        i = 255;
        bv();
        if (this.lo != null) {
          break label167;
        }
        this.lo = new ValueAnimator();
        this.lo.setDuration(this.lp);
        ValueAnimator localValueAnimator = this.lo;
        if (i <= this.lm) {
          break label159;
        }
        localInterpolator = a.iC;
        label93:
        localValueAnimator.setInterpolator(localInterpolator);
        this.lo.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
        {
          public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
          {
            CollapsingToolbarLayout.this.setScrimAlpha(((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
          }
        });
      }
    }
    for (;;)
    {
      this.lo.setIntValues(new int[] { this.lm, i });
      this.lo.start();
      this.ln = paramBoolean;
      return;
      i = 0;
      break;
      label154:
      i = 0;
      break label40;
      label159:
      localInterpolator = a.iD;
      break label93;
      label167:
      if (this.lo.isRunning()) {
        this.lo.cancel();
      }
    }
    label187:
    if (paramBoolean) {}
    for (int i = j;; i = 0)
    {
      setScrimAlpha(i);
      break;
    }
  }
  
  public void setStatusBarScrim(Drawable paramDrawable)
  {
    Drawable localDrawable = null;
    if (this.ll != paramDrawable)
    {
      if (this.ll != null) {
        this.ll.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable = paramDrawable.mutate();
      }
      this.ll = localDrawable;
      if (this.ll != null)
      {
        if (this.ll.isStateful()) {
          this.ll.setState(getDrawableState());
        }
        android.support.v4.a.a.a.b(this.ll, android.support.v4.view.r.K(this));
        paramDrawable = this.ll;
        if (getVisibility() != 0) {
          break label125;
        }
      }
    }
    label125:
    for (boolean bool = true;; bool = false)
    {
      paramDrawable.setVisible(bool, false);
      this.ll.setCallback(this);
      this.ll.setAlpha(this.lm);
      android.support.v4.view.r.I(this);
      return;
    }
  }
  
  public void setStatusBarScrimColor(int paramInt)
  {
    setStatusBarScrim(new ColorDrawable(paramInt));
  }
  
  public void setStatusBarScrimResource(int paramInt)
  {
    setStatusBarScrim(android.support.v4.content.a.a(getContext(), paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.lh.setText(paramCharSequence);
  }
  
  public void setTitleEnabled(boolean paramBoolean)
  {
    if (paramBoolean != this.li)
    {
      this.li = paramBoolean;
      bw();
      requestLayout();
    }
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      if ((this.ll != null) && (this.ll.isVisible() != bool)) {
        this.ll.setVisible(bool, false);
      }
      if ((this.lk != null) && (this.lk.isVisible() != bool)) {
        this.lk.setVisible(bool, false);
      }
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.lk) || (paramDrawable == this.ll);
  }
  
  public static final class a
    extends FrameLayout.LayoutParams
  {
    int lu = 0;
    float lv = 0.5F;
    
    public a()
    {
      super(-1);
    }
    
    public a(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.CollapsingToolbarLayout_Layout);
      this.lu = paramContext.getInt(a.k.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
      this.lv = paramContext.getFloat(a.k.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5F);
      paramContext.recycle();
    }
    
    public a(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  private final class b
    implements AppBarLayout.b
  {
    b() {}
    
    public final void onOffsetChanged(AppBarLayout paramAppBarLayout, int paramInt)
    {
      CollapsingToolbarLayout.this.ls = paramInt;
      int i;
      label42:
      CollapsingToolbarLayout.a locala;
      r localr;
      if (CollapsingToolbarLayout.this.iK != null)
      {
        i = CollapsingToolbarLayout.this.iK.getSystemWindowInsetTop();
        k = CollapsingToolbarLayout.this.getChildCount();
        j = 0;
        if (j >= k) {
          break label161;
        }
        paramAppBarLayout = CollapsingToolbarLayout.this.getChildAt(j);
        locala = (CollapsingToolbarLayout.a)paramAppBarLayout.getLayoutParams();
        localr = CollapsingToolbarLayout.k(paramAppBarLayout);
        switch (locala.lu)
        {
        }
      }
      for (;;)
      {
        j += 1;
        break label42;
        i = 0;
        break;
        localr.r(android.support.v4.c.a.b(-paramInt, 0, CollapsingToolbarLayout.this.l(paramAppBarLayout)));
        continue;
        float f = -paramInt;
        localr.r(Math.round(locala.lv * f));
      }
      label161:
      CollapsingToolbarLayout.this.bx();
      if ((CollapsingToolbarLayout.this.ll != null) && (i > 0)) {
        android.support.v4.view.r.I(CollapsingToolbarLayout.this);
      }
      int j = CollapsingToolbarLayout.this.getHeight();
      int k = android.support.v4.view.r.R(CollapsingToolbarLayout.this);
      CollapsingToolbarLayout.this.lh.b(Math.abs(paramInt) / (j - k - i));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/CollapsingToolbarLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */