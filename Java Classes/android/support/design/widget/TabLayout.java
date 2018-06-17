package android.support.design.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.design.a.d;
import android.support.design.a.h;
import android.support.design.a.k;
import android.support.v4.g.k.a;
import android.support.v4.g.k.b;
import android.support.v4.g.k.c;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.a;
import android.support.v4.view.ViewPager.e;
import android.support.v4.view.ViewPager.f;
import android.support.v4.view.r;
import android.support.v7.app.a.b;
import android.support.v7.c.a.b;
import android.support.v7.widget.bq;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.PointerIcon;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@ViewPager.a
public class TabLayout
  extends HorizontalScrollView
{
  private static final k.a<e> oc = new k.c(16);
  private ValueAnimator oA;
  ViewPager oB;
  private android.support.v4.view.o oC;
  private DataSetObserver oD;
  private f oE;
  private a oF;
  private boolean oG;
  private final k.a<g> oH = new k.b(12);
  private final ArrayList<e> od = new ArrayList();
  private e oe;
  private final d of;
  int og;
  int oh;
  int oi;
  int oj;
  int ok;
  ColorStateList ol;
  float om;
  float oo;
  final int op;
  int oq = Integer.MAX_VALUE;
  private final int or;
  private final int os;
  private final int ot;
  private int ou;
  int ov;
  int ow;
  private b ox;
  private final ArrayList<b> oy = new ArrayList();
  private b oz;
  
  public TabLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    p.d(paramContext);
    setHorizontalScrollBarEnabled(false);
    this.of = new d(paramContext);
    super.addView(this.of, 0, new FrameLayout.LayoutParams(-2, -1));
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.TabLayout, paramInt, android.support.design.a.j.Widget_Design_TabLayout);
    this.of.O(paramAttributeSet.getDimensionPixelSize(a.k.TabLayout_tabIndicatorHeight, 0));
    this.of.N(paramAttributeSet.getColor(a.k.TabLayout_tabIndicatorColor, 0));
    paramInt = paramAttributeSet.getDimensionPixelSize(a.k.TabLayout_tabPadding, 0);
    this.oj = paramInt;
    this.oi = paramInt;
    this.oh = paramInt;
    this.og = paramInt;
    this.og = paramAttributeSet.getDimensionPixelSize(a.k.TabLayout_tabPaddingStart, this.og);
    this.oh = paramAttributeSet.getDimensionPixelSize(a.k.TabLayout_tabPaddingTop, this.oh);
    this.oi = paramAttributeSet.getDimensionPixelSize(a.k.TabLayout_tabPaddingEnd, this.oi);
    this.oj = paramAttributeSet.getDimensionPixelSize(a.k.TabLayout_tabPaddingBottom, this.oj);
    this.ok = paramAttributeSet.getResourceId(a.k.TabLayout_tabTextAppearance, android.support.design.a.j.TextAppearance_Design_Tab);
    paramContext = paramContext.obtainStyledAttributes(this.ok, android.support.v7.a.a.j.TextAppearance);
    try
    {
      this.om = paramContext.getDimensionPixelSize(android.support.v7.a.a.j.TextAppearance_android_textSize, 0);
      this.ol = paramContext.getColorStateList(android.support.v7.a.a.j.TextAppearance_android_textColor);
      paramContext.recycle();
      if (paramAttributeSet.hasValue(a.k.TabLayout_tabTextColor)) {
        this.ol = paramAttributeSet.getColorStateList(a.k.TabLayout_tabTextColor);
      }
      if (paramAttributeSet.hasValue(a.k.TabLayout_tabSelectedTextColor))
      {
        paramInt = paramAttributeSet.getColor(a.k.TabLayout_tabSelectedTextColor, 0);
        int i = this.ol.getDefaultColor();
        this.ol = new ColorStateList(new int[][] { SELECTED_STATE_SET, EMPTY_STATE_SET }, new int[] { paramInt, i });
      }
      this.or = paramAttributeSet.getDimensionPixelSize(a.k.TabLayout_tabMinWidth, -1);
      this.os = paramAttributeSet.getDimensionPixelSize(a.k.TabLayout_tabMaxWidth, -1);
      this.op = paramAttributeSet.getResourceId(a.k.TabLayout_tabBackground, 0);
      this.ou = paramAttributeSet.getDimensionPixelSize(a.k.TabLayout_tabContentStart, 0);
      this.ow = paramAttributeSet.getInt(a.k.TabLayout_tabMode, 1);
      this.ov = paramAttributeSet.getInt(a.k.TabLayout_tabGravity, 0);
      paramAttributeSet.recycle();
      paramContext = getResources();
      this.oo = paramContext.getDimensionPixelSize(a.d.design_tab_text_size_2line);
      this.ot = paramContext.getDimensionPixelSize(a.d.design_tab_scrollable_min_width);
      bS();
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  private void M(int paramInt)
  {
    if (paramInt == -1) {
      return;
    }
    if ((getWindowToken() != null) && (r.ae(this)))
    {
      d locald = this.of;
      j = locald.getChildCount();
      i = 0;
      if (i >= j) {
        break label70;
      }
      if (locald.getChildAt(i).getWidth() > 0) {
        break label63;
      }
    }
    label63:
    label70:
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        break label75;
      }
      setScrollPosition$4867b5c2(paramInt);
      return;
      i += 1;
      break;
    }
    label75:
    i = getScrollX();
    int j = a(paramInt, 0.0F);
    if (i != j)
    {
      bR();
      this.oA.setIntValues(new int[] { i, j });
      this.oA.start();
    }
    this.of.i(paramInt, 300);
  }
  
  private int a(int paramInt, float paramFloat)
  {
    int i = 0;
    int j = 0;
    View localView2;
    View localView1;
    if (this.ow == 0)
    {
      localView2 = this.of.getChildAt(paramInt);
      if (paramInt + 1 >= this.of.getChildCount()) {
        break label116;
      }
      localView1 = this.of.getChildAt(paramInt + 1);
      if (localView2 == null) {
        break label122;
      }
    }
    label116:
    label122:
    for (paramInt = localView2.getWidth();; paramInt = 0)
    {
      i = j;
      if (localView1 != null) {
        i = localView1.getWidth();
      }
      j = localView2.getLeft() + paramInt / 2 - getWidth() / 2;
      paramInt = (int)((i + paramInt) * 0.5F * paramFloat);
      if (r.K(this) != 0) {
        break label127;
      }
      i = paramInt + j;
      return i;
      localView1 = null;
      break;
    }
    label127:
    return j - paramInt;
  }
  
  private void a(e parame, int paramInt)
  {
    parame.mPosition = paramInt;
    this.od.add(paramInt, parame);
    int i = this.od.size();
    paramInt += 1;
    while (paramInt < i)
    {
      ((e)this.od.get(paramInt)).mPosition = paramInt;
      paramInt += 1;
    }
  }
  
  private void a(e parame, boolean paramBoolean)
  {
    int i = this.od.size();
    if (parame.pa != this) {
      throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }
    a(parame, i);
    g localg = parame.pb;
    d locald = this.of;
    i = parame.mPosition;
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
    a(localLayoutParams);
    locald.addView(localg, i, localLayoutParams);
    if (paramBoolean) {
      parame.select();
    }
  }
  
  private void a(ViewPager paramViewPager, boolean paramBoolean)
  {
    Object localObject1;
    if (this.oB != null)
    {
      Object localObject2;
      if (this.oE != null)
      {
        localObject1 = this.oB;
        localObject2 = this.oE;
        if (((ViewPager)localObject1).GX != null) {
          ((ViewPager)localObject1).GX.remove(localObject2);
        }
      }
      if (this.oF != null)
      {
        localObject1 = this.oB;
        localObject2 = this.oF;
        if (((ViewPager)localObject1).Ha != null) {
          ((ViewPager)localObject1).Ha.remove(localObject2);
        }
      }
    }
    if (this.oz != null)
    {
      b(this.oz);
      this.oz = null;
    }
    if (paramViewPager != null)
    {
      this.oB = paramViewPager;
      if (this.oE == null) {
        this.oE = new f(this);
      }
      localObject1 = this.oE;
      ((f)localObject1).pe = 0;
      ((f)localObject1).pd = 0;
      paramViewPager.a(this.oE);
      this.oz = new h(paramViewPager);
      a(this.oz);
      localObject1 = paramViewPager.getAdapter();
      if (localObject1 != null) {
        a((android.support.v4.view.o)localObject1, true);
      }
      if (this.oF == null) {
        this.oF = new a();
      }
      this.oF.oJ = true;
      localObject1 = this.oF;
      if (paramViewPager.Ha == null) {
        paramViewPager.Ha = new ArrayList();
      }
      paramViewPager.Ha.add(localObject1);
      setScrollPosition$4867b5c2(paramViewPager.getCurrentItem());
    }
    for (;;)
    {
      this.oG = paramBoolean;
      return;
      this.oB = null;
      a(null, false);
    }
  }
  
  private void a(LinearLayout.LayoutParams paramLayoutParams)
  {
    if ((this.ow == 1) && (this.ov == 0))
    {
      paramLayoutParams.width = 0;
      paramLayoutParams.weight = 1.0F;
      return;
    }
    paramLayoutParams.width = -2;
    paramLayoutParams.weight = 0.0F;
  }
  
  private void b(b paramb)
  {
    this.oy.remove(paramb);
  }
  
  private e bP()
  {
    e locale = (e)oc.as();
    if (locale == null) {
      locale = new e();
    }
    for (;;)
    {
      locale.pa = this;
      if (this.oH != null) {}
      for (g localg1 = (g)this.oH.as();; localg1 = null)
      {
        g localg2 = localg1;
        if (localg1 == null) {
          localg2 = new g(getContext());
        }
        localg2.c(locale);
        localg2.setFocusable(true);
        localg2.setMinimumWidth(getTabMinWidth());
        locale.pb = localg2;
        return locale;
      }
    }
  }
  
  private void bR()
  {
    if (this.oA == null)
    {
      this.oA = new ValueAnimator();
      this.oA.setInterpolator(a.iB);
      this.oA.setDuration(300L);
      this.oA.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          TabLayout.this.scrollTo(((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue(), 0);
        }
      });
    }
  }
  
  private void bS()
  {
    if (this.ow == 0) {}
    for (int i = Math.max(0, this.ou - this.og);; i = 0)
    {
      r.c(this.of, i, 0, 0, 0);
      switch (this.ow)
      {
      }
      for (;;)
      {
        i(true);
        return;
        this.of.setGravity(1);
        continue;
        this.of.setGravity(8388611);
      }
    }
  }
  
  private int getDefaultHeight()
  {
    int j = this.od.size();
    int i = 0;
    if (i < j)
    {
      e locale = (e)this.od.get(i);
      if ((locale == null) || (locale.oa == null) || (TextUtils.isEmpty(locale.kB))) {}
    }
    for (i = 1;; i = 0)
    {
      if (i != 0)
      {
        return 72;
        i += 1;
        break;
      }
      return 48;
    }
  }
  
  private float getScrollPosition()
  {
    d locald = this.of;
    float f = locald.oM;
    return locald.oN + f;
  }
  
  private int getTabMinWidth()
  {
    if (this.or != -1) {
      return this.or;
    }
    if (this.ow == 0) {
      return this.ot;
    }
    return 0;
  }
  
  private int getTabScrollRange()
  {
    return Math.max(0, this.of.getWidth() - getWidth() - getPaddingLeft() - getPaddingRight());
  }
  
  private void r(View paramView)
  {
    if ((paramView instanceof o))
    {
      paramView = (o)paramView;
      e locale = bP();
      if (paramView.kB != null) {
        locale.b(paramView.kB);
      }
      if (paramView.oa != null)
      {
        locale.oa = paramView.oa;
        locale.bV();
      }
      if (paramView.ob != 0)
      {
        int i = paramView.ob;
        locale.oZ = LayoutInflater.from(locale.pb.getContext()).inflate(i, locale.pb, false);
        locale.bV();
      }
      if (!TextUtils.isEmpty(paramView.getContentDescription()))
      {
        locale.oY = paramView.getContentDescription();
        locale.bV();
      }
      a(locale, this.od.isEmpty());
      return;
    }
    throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
  }
  
  private void setScrollPosition$4867b5c2(int paramInt)
  {
    a(paramInt, 0.0F, true, true);
  }
  
  private void setSelectedTabView(int paramInt)
  {
    int j = this.of.getChildCount();
    if (paramInt < j)
    {
      int i = 0;
      if (i < j)
      {
        View localView = this.of.getChildAt(i);
        if (i == paramInt) {}
        for (boolean bool = true;; bool = false)
        {
          localView.setSelected(bool);
          i += 1;
          break;
        }
      }
    }
  }
  
  public final e K(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= getTabCount())) {
      return null;
    }
    return (e)this.od.get(paramInt);
  }
  
  final int L(int paramInt)
  {
    return Math.round(getResources().getDisplayMetrics().density * paramInt);
  }
  
  final void a(int paramInt, float paramFloat, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = Math.round(paramInt + paramFloat);
    if ((i < 0) || (i >= this.of.getChildCount())) {}
    do
    {
      return;
      if (paramBoolean2)
      {
        d locald = this.of;
        if ((locald.oR != null) && (locald.oR.isRunning())) {
          locald.oR.cancel();
        }
        locald.oM = paramInt;
        locald.oN = paramFloat;
        locald.bU();
      }
      if ((this.oA != null) && (this.oA.isRunning())) {
        this.oA.cancel();
      }
      scrollTo(a(paramInt, paramFloat), 0);
    } while (!paramBoolean1);
    setSelectedTabView(i);
  }
  
  public final void a(b paramb)
  {
    if (!this.oy.contains(paramb)) {
      this.oy.add(paramb);
    }
  }
  
  final void a(e parame)
  {
    b(parame, true);
  }
  
  final void a(android.support.v4.view.o paramo, boolean paramBoolean)
  {
    Object localObject;
    if ((this.oC != null) && (this.oD != null))
    {
      localObject = this.oC;
      DataSetObserver localDataSetObserver = this.oD;
      ((android.support.v4.view.o)localObject).FN.unregisterObserver(localDataSetObserver);
    }
    this.oC = paramo;
    if ((paramBoolean) && (paramo != null))
    {
      if (this.oD == null) {
        this.oD = new c();
      }
      localObject = this.oD;
      paramo.FN.registerObserver(localObject);
    }
    bQ();
  }
  
  public void addView(View paramView)
  {
    r(paramView);
  }
  
  public void addView(View paramView, int paramInt)
  {
    r(paramView);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    r(paramView);
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    r(paramView);
  }
  
  final void b(e parame, boolean paramBoolean)
  {
    e locale = this.oe;
    int i;
    if (locale == parame) {
      if (locale != null)
      {
        i = this.oy.size() - 1;
        while (i >= 0)
        {
          ((b)this.oy.get(i)).bT();
          i -= 1;
        }
        M(parame.mPosition);
      }
    }
    for (;;)
    {
      return;
      if (parame != null)
      {
        i = parame.mPosition;
        if (paramBoolean)
        {
          if (((locale != null) && (locale.mPosition != -1)) || (i == -1)) {
            break label150;
          }
          setScrollPosition$4867b5c2(i);
        }
      }
      for (;;)
      {
        if (i != -1) {
          setSelectedTabView(i);
        }
        if (locale == null) {
          break label158;
        }
        i = this.oy.size() - 1;
        while (i >= 0)
        {
          this.oy.get(i);
          i -= 1;
        }
        i = -1;
        break;
        label150:
        M(i);
      }
      label158:
      this.oe = parame;
      if (parame != null)
      {
        i = this.oy.size() - 1;
        while (i >= 0)
        {
          ((b)this.oy.get(i)).b(parame);
          i -= 1;
        }
      }
    }
  }
  
  final void bQ()
  {
    int i = this.of.getChildCount() - 1;
    while (i >= 0)
    {
      localObject = (g)this.of.getChildAt(i);
      this.of.removeViewAt(i);
      if (localObject != null)
      {
        ((g)localObject).c(null);
        ((g)localObject).setSelected(false);
        this.oH.j(localObject);
      }
      requestLayout();
      i -= 1;
    }
    Object localObject = this.od.iterator();
    while (((Iterator)localObject).hasNext())
    {
      e locale = (e)((Iterator)localObject).next();
      ((Iterator)localObject).remove();
      locale.pa = null;
      locale.pb = null;
      locale.oX = null;
      locale.oa = null;
      locale.kB = null;
      locale.oY = null;
      locale.mPosition = -1;
      locale.oZ = null;
      oc.j(locale);
    }
    this.oe = null;
    if (this.oC != null)
    {
      int j = this.oC.getCount();
      i = 0;
      while (i < j)
      {
        a(bP().b(this.oC.aw(i)), false);
        i += 1;
      }
      if ((this.oB != null) && (j > 0))
      {
        i = this.oB.getCurrentItem();
        if ((i != getSelectedTabPosition()) && (i < getTabCount())) {
          b(K(i), true);
        }
      }
    }
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return generateDefaultLayoutParams();
  }
  
  public int getSelectedTabPosition()
  {
    if (this.oe != null) {
      return this.oe.mPosition;
    }
    return -1;
  }
  
  public int getTabCount()
  {
    return this.od.size();
  }
  
  public int getTabGravity()
  {
    return this.ov;
  }
  
  int getTabMaxWidth()
  {
    return this.oq;
  }
  
  public int getTabMode()
  {
    return this.ow;
  }
  
  public ColorStateList getTabTextColors()
  {
    return this.ol;
  }
  
  final void i(boolean paramBoolean)
  {
    int i = 0;
    while (i < this.of.getChildCount())
    {
      View localView = this.of.getChildAt(i);
      localView.setMinimumWidth(getTabMinWidth());
      a((LinearLayout.LayoutParams)localView.getLayoutParams());
      if (paramBoolean) {
        localView.requestLayout();
      }
      i += 1;
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.oB == null)
    {
      ViewParent localViewParent = getParent();
      if ((localViewParent instanceof ViewPager)) {
        a((ViewPager)localViewParent, true);
      }
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.oG)
    {
      setupWithViewPager(null);
      this.oG = false;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = 1;
    int i = L(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
    label76:
    View localView;
    switch (View.MeasureSpec.getMode(paramInt2))
    {
    default: 
      i = View.MeasureSpec.getSize(paramInt1);
      if (View.MeasureSpec.getMode(paramInt1) != 0)
      {
        if (this.os > 0)
        {
          i = this.os;
          this.oq = i;
        }
      }
      else
      {
        super.onMeasure(paramInt1, paramInt2);
        if (getChildCount() == 1)
        {
          localView = getChildAt(0);
          switch (this.ow)
          {
          default: 
            paramInt1 = 0;
          }
        }
      }
      break;
    }
    for (;;)
    {
      if (paramInt1 != 0)
      {
        paramInt1 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom(), localView.getLayoutParams().height);
        localView.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), paramInt1);
      }
      return;
      paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.min(i, View.MeasureSpec.getSize(paramInt2)), 1073741824);
      break;
      paramInt2 = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
      break;
      i -= L(56);
      break label76;
      if (localView.getMeasuredWidth() < getMeasuredWidth()) {
        paramInt1 = 1;
      } else {
        paramInt1 = 0;
      }
    }
    if (localView.getMeasuredWidth() != getMeasuredWidth()) {}
    for (paramInt1 = j;; paramInt1 = 0) {
      break;
    }
  }
  
  @Deprecated
  public void setOnTabSelectedListener(b paramb)
  {
    if (this.ox != null) {
      b(this.ox);
    }
    this.ox = paramb;
    if (paramb != null) {
      a(paramb);
    }
  }
  
  void setScrollAnimatorListener(Animator.AnimatorListener paramAnimatorListener)
  {
    bR();
    this.oA.addListener(paramAnimatorListener);
  }
  
  public void setSelectedTabIndicatorColor(int paramInt)
  {
    this.of.N(paramInt);
  }
  
  public void setSelectedTabIndicatorHeight(int paramInt)
  {
    this.of.O(paramInt);
  }
  
  public void setTabGravity(int paramInt)
  {
    if (this.ov != paramInt)
    {
      this.ov = paramInt;
      bS();
    }
  }
  
  public void setTabMode(int paramInt)
  {
    if (paramInt != this.ow)
    {
      this.ow = paramInt;
      bS();
    }
  }
  
  public void setTabTextColors(ColorStateList paramColorStateList)
  {
    if (this.ol != paramColorStateList)
    {
      this.ol = paramColorStateList;
      int j = this.od.size();
      int i = 0;
      while (i < j)
      {
        ((e)this.od.get(i)).bV();
        i += 1;
      }
    }
  }
  
  @Deprecated
  public void setTabsFromPagerAdapter(android.support.v4.view.o paramo)
  {
    a(paramo, false);
  }
  
  public void setupWithViewPager(ViewPager paramViewPager)
  {
    a(paramViewPager, false);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return getTabScrollRange() > 0;
  }
  
  private final class a
    implements ViewPager.e
  {
    boolean oJ;
    
    a() {}
    
    public final void a(ViewPager paramViewPager, android.support.v4.view.o paramo)
    {
      if (TabLayout.this.oB == paramViewPager) {
        TabLayout.this.a(paramo, this.oJ);
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void b(TabLayout.e parame);
    
    public abstract void bT();
  }
  
  private final class c
    extends DataSetObserver
  {
    c() {}
    
    public final void onChanged()
    {
      TabLayout.this.bQ();
    }
    
    public final void onInvalidated()
    {
      TabLayout.this.bQ();
    }
  }
  
  private final class d
    extends LinearLayout
  {
    private int oK;
    private final Paint oL;
    int oM = -1;
    float oN;
    private int oO = -1;
    private int oP = -1;
    private int oQ = -1;
    ValueAnimator oR;
    
    d(Context paramContext)
    {
      super();
      setWillNotDraw(false);
      this.oL = new Paint();
    }
    
    final void N(int paramInt)
    {
      if (this.oL.getColor() != paramInt)
      {
        this.oL.setColor(paramInt);
        r.I(this);
      }
    }
    
    final void O(int paramInt)
    {
      if (this.oK != paramInt)
      {
        this.oK = paramInt;
        r.I(this);
      }
    }
    
    final void bU()
    {
      View localView = getChildAt(this.oM);
      int i;
      int j;
      if ((localView != null) && (localView.getWidth() > 0))
      {
        i = localView.getLeft();
        j = localView.getRight();
        if ((this.oN <= 0.0F) || (this.oM >= getChildCount() - 1)) {
          break label151;
        }
        localView = getChildAt(this.oM + 1);
        float f1 = this.oN;
        float f2 = localView.getLeft();
        float f3 = this.oN;
        i = (int)(i * (1.0F - f3) + f1 * f2);
        f1 = this.oN;
        f2 = localView.getRight();
        f3 = this.oN;
        j = (int)(j * (1.0F - f3) + f2 * f1);
      }
      label151:
      for (;;)
      {
        h(i, j);
        return;
        i = -1;
        j = -1;
      }
    }
    
    public final void draw(Canvas paramCanvas)
    {
      super.draw(paramCanvas);
      if ((this.oP >= 0) && (this.oQ > this.oP)) {
        paramCanvas.drawRect(this.oP, getHeight() - this.oK, this.oQ, getHeight(), this.oL);
      }
    }
    
    final void h(int paramInt1, int paramInt2)
    {
      if ((paramInt1 != this.oP) || (paramInt2 != this.oQ))
      {
        this.oP = paramInt1;
        this.oQ = paramInt2;
        r.I(this);
      }
    }
    
    final void i(final int paramInt1, int paramInt2)
    {
      if ((this.oR != null) && (this.oR.isRunning())) {
        this.oR.cancel();
      }
      final int i;
      Object localObject;
      if (r.K(this) == 1)
      {
        i = 1;
        localObject = getChildAt(paramInt1);
        if (localObject != null) {
          break label56;
        }
        bU();
      }
      for (;;)
      {
        return;
        i = 0;
        break;
        label56:
        final int k = ((View)localObject).getLeft();
        final int m = ((View)localObject).getRight();
        final int j;
        if (Math.abs(paramInt1 - this.oM) <= 1)
        {
          i = this.oP;
          j = this.oQ;
        }
        while ((i != k) || (j != m))
        {
          localObject = new ValueAnimator();
          this.oR = ((ValueAnimator)localObject);
          ((ValueAnimator)localObject).setInterpolator(a.iB);
          ((ValueAnimator)localObject).setDuration(paramInt2);
          ((ValueAnimator)localObject).setFloatValues(new float[] { 0.0F, 1.0F });
          ((ValueAnimator)localObject).addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
          {
            public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
            {
              float f = paramAnonymousValueAnimator.getAnimatedFraction();
              TabLayout.d.this.h(a.a(i, k, f), a.a(j, m, f));
            }
          });
          ((ValueAnimator)localObject).addListener(new AnimatorListenerAdapter()
          {
            public final void onAnimationEnd(Animator paramAnonymousAnimator)
            {
              TabLayout.d.this.oM = paramInt1;
              TabLayout.d.this.oN = 0.0F;
            }
          });
          ((ValueAnimator)localObject).start();
          return;
          j = TabLayout.this.L(24);
          if (paramInt1 < this.oM)
          {
            if (i == 0)
            {
              i = m + j;
              j = i;
            }
          }
          else if (i != 0)
          {
            i = m + j;
            j = i;
            continue;
          }
          i = k - j;
          j = i;
        }
      }
    }
    
    protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      if ((this.oR != null) && (this.oR.isRunning()))
      {
        this.oR.cancel();
        long l = this.oR.getDuration();
        paramInt1 = this.oM;
        float f = this.oR.getAnimatedFraction();
        i(paramInt1, Math.round((float)l * (1.0F - f)));
        return;
      }
      bU();
    }
    
    protected final void onMeasure(int paramInt1, int paramInt2)
    {
      super.onMeasure(paramInt1, paramInt2);
      if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
        break label15;
      }
      label15:
      while ((TabLayout.this.ow != 1) || (TabLayout.this.ov != 1)) {
        return;
      }
      int n = getChildCount();
      int k = 0;
      int j = 0;
      label50:
      Object localObject;
      if (k < n)
      {
        localObject = getChildAt(k);
        if (((View)localObject).getVisibility() != 0) {
          break label234;
        }
      }
      label132:
      label219:
      label231:
      label234:
      for (int i = Math.max(j, ((View)localObject).getMeasuredWidth());; i = j)
      {
        k += 1;
        j = i;
        break label50;
        if (j <= 0) {
          break;
        }
        i = TabLayout.this.L(16);
        int m;
        if (j * n <= getMeasuredWidth() - i * 2)
        {
          k = 0;
          i = 0;
          m = i;
          if (k >= n) {
            break label219;
          }
          localObject = (LinearLayout.LayoutParams)getChildAt(k).getLayoutParams();
          if ((((LinearLayout.LayoutParams)localObject).width == j) && (((LinearLayout.LayoutParams)localObject).weight == 0.0F)) {
            break label231;
          }
          ((LinearLayout.LayoutParams)localObject).width = j;
          ((LinearLayout.LayoutParams)localObject).weight = 0.0F;
          i = 1;
        }
        for (;;)
        {
          k += 1;
          break label132;
          TabLayout.this.ov = 0;
          TabLayout.this.i(false);
          m = 1;
          if (m == 0) {
            break;
          }
          super.onMeasure(paramInt1, paramInt2);
          return;
        }
      }
    }
    
    public final void onRtlPropertiesChanged(int paramInt)
    {
      super.onRtlPropertiesChanged(paramInt);
      if ((Build.VERSION.SDK_INT < 23) && (this.oO != paramInt))
      {
        requestLayout();
        this.oO = paramInt;
      }
    }
  }
  
  public static final class e
  {
    CharSequence kB;
    int mPosition = -1;
    Object oX;
    CharSequence oY;
    View oZ;
    Drawable oa;
    TabLayout pa;
    TabLayout.g pb;
    
    public final e b(CharSequence paramCharSequence)
    {
      this.kB = paramCharSequence;
      bV();
      return this;
    }
    
    final void bV()
    {
      if (this.pb != null) {
        this.pb.update();
      }
    }
    
    public final void select()
    {
      if (this.pa == null) {
        throw new IllegalArgumentException("Tab not attached to a TabLayout");
      }
      this.pa.a(this);
    }
  }
  
  public static final class f
    implements ViewPager.f
  {
    private final WeakReference<TabLayout> pc;
    int pd;
    int pe;
    
    public f(TabLayout paramTabLayout)
    {
      this.pc = new WeakReference(paramTabLayout);
    }
    
    public final void P(int paramInt)
    {
      this.pd = this.pe;
      this.pe = paramInt;
    }
    
    public final void Q(int paramInt)
    {
      TabLayout localTabLayout = (TabLayout)this.pc.get();
      if ((localTabLayout != null) && (localTabLayout.getSelectedTabPosition() != paramInt) && (paramInt < localTabLayout.getTabCount())) {
        if ((this.pe != 0) && ((this.pe != 2) || (this.pd != 0))) {
          break label66;
        }
      }
      label66:
      for (boolean bool = true;; bool = false)
      {
        localTabLayout.b(localTabLayout.K(paramInt), bool);
        return;
      }
    }
    
    public final void a(int paramInt1, float paramFloat, int paramInt2)
    {
      boolean bool2 = false;
      TabLayout localTabLayout = (TabLayout)this.pc.get();
      if (localTabLayout != null) {
        if ((this.pe == 2) && (this.pd != 1)) {
          break label69;
        }
      }
      label69:
      for (boolean bool1 = true;; bool1 = false)
      {
        if ((this.pe != 2) || (this.pd != 0)) {
          bool2 = true;
        }
        localTabLayout.a(paramInt1, paramFloat, bool1, bool2);
        return;
      }
    }
  }
  
  final class g
    extends LinearLayout
  {
    private View oZ;
    private TabLayout.e pf;
    private TextView pg;
    private ImageView ph;
    private TextView pi;
    private ImageView pj;
    private int pk = 2;
    
    public g(Context paramContext)
    {
      super();
      if (TabLayout.this.op != 0) {
        r.setBackground(this, b.a(paramContext, TabLayout.this.op));
      }
      r.c(this, TabLayout.this.og, TabLayout.this.oh, TabLayout.this.oi, TabLayout.this.oj);
      setGravity(17);
      setOrientation(1);
      setClickable(true);
      this$1 = getContext();
      if (Build.VERSION.SDK_INT >= 24) {}
      for (this$1 = new android.support.v4.view.p(PointerIcon.getSystemIcon(TabLayout.this, 1002));; this$1 = new android.support.v4.view.p(null))
      {
        r.a(this, TabLayout.this);
        return;
      }
    }
    
    private void a(TextView paramTextView, ImageView paramImageView)
    {
      Object localObject = null;
      Drawable localDrawable;
      CharSequence localCharSequence2;
      label35:
      CharSequence localCharSequence1;
      label51:
      label76:
      int i;
      if (this.pf != null)
      {
        localDrawable = this.pf.oa;
        if (this.pf == null) {
          break label194;
        }
        localCharSequence2 = this.pf.kB;
        if (this.pf == null) {
          break label200;
        }
        localCharSequence1 = this.pf.oY;
        if (paramImageView != null)
        {
          if (localDrawable == null) {
            break label206;
          }
          paramImageView.setImageDrawable(localDrawable);
          paramImageView.setVisibility(0);
          setVisibility(0);
          paramImageView.setContentDescription(localCharSequence1);
        }
        if (TextUtils.isEmpty(localCharSequence2)) {
          break label220;
        }
        i = 1;
        label92:
        if (paramTextView != null)
        {
          if (i == 0) {
            break label225;
          }
          paramTextView.setText(localCharSequence2);
          paramTextView.setVisibility(0);
          setVisibility(0);
          label116:
          paramTextView.setContentDescription(localCharSequence1);
        }
        if (paramImageView != null)
        {
          paramTextView = (ViewGroup.MarginLayoutParams)paramImageView.getLayoutParams();
          if ((i == 0) || (paramImageView.getVisibility() != 0)) {
            break label245;
          }
        }
      }
      label194:
      label200:
      label206:
      label220:
      label225:
      label245:
      for (int j = TabLayout.this.L(8);; j = 0)
      {
        if (j != paramTextView.bottomMargin)
        {
          paramTextView.bottomMargin = j;
          paramImageView.requestLayout();
        }
        if (i != 0) {}
        for (paramTextView = (TextView)localObject;; paramTextView = localCharSequence1)
        {
          bq.a(this, paramTextView);
          return;
          localDrawable = null;
          break;
          localCharSequence2 = null;
          break label35;
          localCharSequence1 = null;
          break label51;
          paramImageView.setVisibility(8);
          paramImageView.setImageDrawable(null);
          break label76;
          i = 0;
          break label92;
          paramTextView.setVisibility(8);
          paramTextView.setText(null);
          break label116;
        }
      }
    }
    
    final void c(TabLayout.e parame)
    {
      if (parame != this.pf)
      {
        this.pf = parame;
        update();
      }
    }
    
    public final void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(a.b.class.getName());
    }
    
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(a.b.class.getName());
    }
    
    public final void onMeasure(int paramInt1, int paramInt2)
    {
      int k = 1;
      int j = View.MeasureSpec.getSize(paramInt1);
      int m = View.MeasureSpec.getMode(paramInt1);
      int n = TabLayout.this.getTabMaxWidth();
      int i = paramInt1;
      if (n > 0) {
        if (m != 0)
        {
          i = paramInt1;
          if (j <= n) {}
        }
        else
        {
          i = View.MeasureSpec.makeMeasureSpec(TabLayout.this.oq, Integer.MIN_VALUE);
        }
      }
      super.onMeasure(i, paramInt2);
      float f2;
      float f1;
      if (this.pg != null)
      {
        getResources();
        f2 = TabLayout.this.om;
        j = this.pk;
        if ((this.ph == null) || (this.ph.getVisibility() != 0)) {
          break label289;
        }
        paramInt1 = 1;
        f1 = f2;
      }
      for (;;)
      {
        f2 = this.pg.getTextSize();
        m = this.pg.getLineCount();
        j = android.support.v4.widget.o.b(this.pg);
        if ((f1 != f2) || ((j >= 0) && (paramInt1 != j)))
        {
          j = k;
          if (TabLayout.this.ow == 1)
          {
            j = k;
            if (f1 > f2)
            {
              j = k;
              if (m == 1)
              {
                Layout localLayout = this.pg.getLayout();
                if (localLayout != null)
                {
                  f2 = localLayout.getLineWidth(0);
                  j = k;
                  if (f1 / localLayout.getPaint().getTextSize() * f2 <= getMeasuredWidth() - getPaddingLeft() - getPaddingRight()) {}
                }
                else
                {
                  j = 0;
                }
              }
            }
          }
          if (j != 0)
          {
            this.pg.setTextSize(0, f1);
            this.pg.setMaxLines(paramInt1);
            super.onMeasure(i, paramInt2);
          }
        }
        return;
        label289:
        paramInt1 = j;
        f1 = f2;
        if (this.pg != null)
        {
          paramInt1 = j;
          f1 = f2;
          if (this.pg.getLineCount() > 1)
          {
            f1 = TabLayout.this.oo;
            paramInt1 = j;
          }
        }
      }
    }
    
    public final boolean performClick()
    {
      boolean bool2 = super.performClick();
      boolean bool1 = bool2;
      if (this.pf != null)
      {
        if (!bool2) {
          playSoundEffect(0);
        }
        this.pf.select();
        bool1 = true;
      }
      return bool1;
    }
    
    public final void setSelected(boolean paramBoolean)
    {
      if (isSelected() != paramBoolean) {}
      for (int i = 1;; i = 0)
      {
        super.setSelected(paramBoolean);
        if ((i != 0) && (paramBoolean) && (Build.VERSION.SDK_INT < 16)) {
          sendAccessibilityEvent(4);
        }
        if (this.pg != null) {
          this.pg.setSelected(paramBoolean);
        }
        if (this.ph != null) {
          this.ph.setSelected(paramBoolean);
        }
        if (this.oZ != null) {
          this.oZ.setSelected(paramBoolean);
        }
        return;
      }
    }
    
    final void update()
    {
      TabLayout.e locale = this.pf;
      Object localObject;
      if (locale != null)
      {
        localObject = locale.oZ;
        if (localObject == null) {
          break label313;
        }
        ViewParent localViewParent = ((View)localObject).getParent();
        if (localViewParent != this)
        {
          if (localViewParent != null) {
            ((ViewGroup)localViewParent).removeView((View)localObject);
          }
          addView((View)localObject);
        }
        this.oZ = ((View)localObject);
        if (this.pg != null) {
          this.pg.setVisibility(8);
        }
        if (this.ph != null)
        {
          this.ph.setVisibility(8);
          this.ph.setImageDrawable(null);
        }
        this.pi = ((TextView)((View)localObject).findViewById(16908308));
        if (this.pi != null) {
          this.pk = android.support.v4.widget.o.b(this.pi);
        }
        this.pj = ((ImageView)((View)localObject).findViewById(16908294));
        label143:
        if (this.oZ != null) {
          break label346;
        }
        if (this.ph == null)
        {
          localObject = (ImageView)LayoutInflater.from(getContext()).inflate(a.h.design_layout_tab_icon, this, false);
          addView((View)localObject, 0);
          this.ph = ((ImageView)localObject);
        }
        if (this.pg == null)
        {
          localObject = (TextView)LayoutInflater.from(getContext()).inflate(a.h.design_layout_tab_text, this, false);
          addView((View)localObject);
          this.pg = ((TextView)localObject);
          this.pk = android.support.v4.widget.o.b(this.pg);
        }
        android.support.v4.widget.o.b(this.pg, TabLayout.this.ok);
        if (TabLayout.this.ol != null) {
          this.pg.setTextColor(TabLayout.this.ol);
        }
        a(this.pg, this.ph);
      }
      label313:
      label346:
      int i;
      for (;;)
      {
        if (locale != null)
        {
          if (locale.pa == null)
          {
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
            localObject = null;
            break;
            if (this.oZ != null)
            {
              removeView(this.oZ);
              this.oZ = null;
            }
            this.pi = null;
            this.pj = null;
            break label143;
            if ((this.pi == null) && (this.pj == null)) {
              continue;
            }
            a(this.pi, this.pj);
            continue;
          }
          if (locale.pa.getSelectedTabPosition() == locale.mPosition)
          {
            i = 1;
            if (i == 0) {
              break label410;
            }
          }
        }
      }
      label410:
      for (boolean bool = true;; bool = false)
      {
        setSelected(bool);
        return;
        i = 0;
        break;
      }
    }
  }
  
  public static final class h
    implements TabLayout.b
  {
    private final ViewPager oB;
    
    public h(ViewPager paramViewPager)
    {
      this.oB = paramViewPager;
    }
    
    public final void b(TabLayout.e parame)
    {
      this.oB.setCurrentItem(parame.mPosition);
    }
    
    public final void bT() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/TabLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */