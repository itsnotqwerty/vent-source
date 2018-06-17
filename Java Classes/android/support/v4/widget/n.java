package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.content.a;
import android.support.v4.view.h;
import android.support.v4.view.j;
import android.support.v4.view.k;
import android.support.v4.view.m;
import android.support.v4.view.r;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import android.widget.ListView;

public class n
  extends ViewGroup
  implements h, k
{
  private static final int[] Gf = { 16842766 };
  private static final String JS = n.class.getSimpleName();
  private float GL;
  private View HL;
  b JT;
  boolean JU = false;
  private float JV = -1.0F;
  private float JW;
  private final j JX;
  private final int[] JY = new int[2];
  private final int[] JZ = new int[2];
  private boolean Ka;
  private int Kb;
  int Kc;
  private float Kd;
  boolean Ke;
  private boolean Kf;
  private final DecelerateInterpolator Kg;
  c Kh;
  private int Ki = -1;
  protected int Kj;
  float Kk;
  protected int Kl;
  int Km;
  d Kn;
  private Animation Ko;
  private Animation Kp;
  private Animation Kq;
  private Animation Kr;
  private Animation Ks;
  boolean Kt;
  private int Ku;
  boolean Kv;
  private a Kw;
  private Animation.AnimationListener Kx = new Animation.AnimationListener()
  {
    public final void onAnimationEnd(Animation paramAnonymousAnimation)
    {
      if (n.this.JU)
      {
        n.this.Kn.setAlpha(255);
        n.this.Kn.start();
        if ((n.this.Kt) && (n.this.JT != null)) {
          n.this.JT.em();
        }
        n.this.Kc = n.this.Kh.getTop();
        return;
      }
      n.this.reset();
    }
    
    public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
    
    public final void onAnimationStart(Animation paramAnonymousAnimation) {}
  };
  private final Animation Ky = new Animation()
  {
    public final void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
    {
      if (!n.this.Kv) {}
      for (int i = n.this.Km - Math.abs(n.this.Kl);; i = n.this.Km)
      {
        int j = n.this.Kj;
        i = (int)((i - n.this.Kj) * paramAnonymousFloat);
        int k = n.this.Kh.getTop();
        n.this.setTargetOffsetTopAndBottom(i + j - k);
        n.this.Kn.m(1.0F - paramAnonymousFloat);
        return;
      }
    }
  };
  private final Animation Kz = new Animation()
  {
    public final void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
    {
      n.this.r(paramAnonymousFloat);
    }
  };
  private int jK = -1;
  private final m lR;
  private boolean na;
  private int nc;
  
  public n(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public n(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.nc = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    this.Kb = getResources().getInteger(17694721);
    setWillNotDraw(false);
    this.Kg = new DecelerateInterpolator(2.0F);
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    this.Ku = ((int)(40.0F * localDisplayMetrics.density));
    this.Kh = new c(getContext());
    this.Kn = new d(getContext());
    this.Kn.aE(1);
    this.Kh.setImageDrawable(this.Kn);
    this.Kh.setVisibility(8);
    addView(this.Kh);
    setChildrenDrawingOrderEnabled(true);
    this.Km = ((int)(localDisplayMetrics.density * 64.0F));
    this.JV = this.Km;
    this.lR = new m(this);
    this.JX = new j(this);
    setNestedScrollingEnabled(true);
    int i = -this.Ku;
    this.Kc = i;
    this.Kl = i;
    r(1.0F);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, Gf);
    setEnabled(paramContext.getBoolean(0, true));
    paramContext.recycle();
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i) == this.jK) {
      if (i != 0) {
        break label33;
      }
    }
    label33:
    for (i = 1;; i = 0)
    {
      this.jK = paramMotionEvent.getPointerId(i);
      return;
    }
  }
  
  private static boolean b(Animation paramAnimation)
  {
    return (paramAnimation != null) && (paramAnimation.hasStarted()) && (!paramAnimation.hasEnded());
  }
  
  private void c(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.JU != paramBoolean1)
    {
      this.Kt = paramBoolean2;
      ej();
      this.JU = paramBoolean1;
      if (this.JU)
      {
        int i = this.Kc;
        Animation.AnimationListener localAnimationListener = this.Kx;
        this.Kj = i;
        this.Ky.reset();
        this.Ky.setDuration(200L);
        this.Ky.setInterpolator(this.Kg);
        if (localAnimationListener != null) {
          this.Kh.In = localAnimationListener;
        }
        this.Kh.clearAnimation();
        this.Kh.startAnimation(this.Ky);
      }
    }
    else
    {
      return;
    }
    a(this.Kx);
  }
  
  private void ej()
  {
    int i;
    if (this.HL == null) {
      i = 0;
    }
    for (;;)
    {
      if (i < getChildCount())
      {
        View localView = getChildAt(i);
        if (!localView.equals(this.Kh)) {
          this.HL = localView;
        }
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
  
  private boolean ek()
  {
    if (this.Kw != null) {
      return this.Kw.el();
    }
    if ((this.HL instanceof ListView))
    {
      ListView localListView = (ListView)this.HL;
      if (Build.VERSION.SDK_INT >= 19) {
        return localListView.canScrollList(-1);
      }
      if (localListView.getChildCount() != 0)
      {
        int i = localListView.getFirstVisiblePosition();
        int j = localListView.getChildAt(0).getTop();
        if ((i > 0) || (j < localListView.getListPaddingTop())) {
          return true;
        }
      }
      return false;
    }
    return this.HL.canScrollVertically(-1);
  }
  
  private void o(float paramFloat)
  {
    this.Kn.x(true);
    float f2 = Math.min(1.0F, Math.abs(paramFloat / this.JV));
    float f3 = (float)Math.max(f2 - 0.4D, 0.0D) * 5.0F / 3.0F;
    float f4 = Math.abs(paramFloat);
    float f5 = this.JV;
    float f1;
    int i;
    int j;
    if (this.Kv)
    {
      f1 = this.Km - this.Kl;
      f4 = Math.max(0.0F, Math.min(f4 - f5, f1 * 2.0F) / f1);
      f4 = (float)(f4 / 4.0F - Math.pow(f4 / 4.0F, 2.0D)) * 2.0F;
      i = this.Kl;
      j = (int)(f1 * f2 + f1 * f4 * 2.0F);
      if (this.Kh.getVisibility() != 0) {
        this.Kh.setVisibility(0);
      }
      if (!this.Ke)
      {
        this.Kh.setScaleX(1.0F);
        this.Kh.setScaleY(1.0F);
      }
      if (this.Ke) {
        setAnimationProgress(Math.min(1.0F, paramFloat / this.JV));
      }
      if (paramFloat >= this.JV) {
        break label341;
      }
      if ((this.Kn.getAlpha() > 76) && (!b(this.Kq))) {
        this.Kq = s(this.Kn.getAlpha(), 76);
      }
    }
    for (;;)
    {
      this.Kn.n(Math.min(0.8F, f3 * 0.8F));
      this.Kn.m(Math.min(1.0F, f3));
      d locald = this.Kn;
      locald.Iu.ke = ((-0.25F + f3 * 0.4F + f4 * 2.0F) * 0.5F);
      locald.invalidateSelf();
      setTargetOffsetTopAndBottom(j + i - this.Kc);
      return;
      f1 = this.Km;
      break;
      label341:
      if ((this.Kn.getAlpha() < 255) && (!b(this.Kr))) {
        this.Kr = s(this.Kn.getAlpha(), 255);
      }
    }
  }
  
  private void p(float paramFloat)
  {
    if (paramFloat > this.JV)
    {
      c(true, true);
      return;
    }
    this.JU = false;
    this.Kn.n(0.0F);
    Animation.AnimationListener local5 = null;
    if (!this.Ke) {
      local5 = new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          if (!n.this.Ke) {
            n.this.a(null);
          }
        }
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation) {}
      };
    }
    int i = this.Kc;
    if (this.Ke)
    {
      this.Kj = i;
      this.Kk = this.Kh.getScaleX();
      this.Ks = new Animation()
      {
        public final void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
        {
          float f1 = n.this.Kk;
          float f2 = -n.this.Kk;
          n.this.setAnimationProgress(f1 + f2 * paramAnonymousFloat);
          n.this.r(paramAnonymousFloat);
        }
      };
      this.Ks.setDuration(150L);
      if (local5 != null) {
        this.Kh.In = local5;
      }
      this.Kh.clearAnimation();
      this.Kh.startAnimation(this.Ks);
    }
    for (;;)
    {
      this.Kn.x(false);
      return;
      this.Kj = i;
      this.Kz.reset();
      this.Kz.setDuration(200L);
      this.Kz.setInterpolator(this.Kg);
      if (local5 != null) {
        this.Kh.In = local5;
      }
      this.Kh.clearAnimation();
      this.Kh.startAnimation(this.Kz);
    }
  }
  
  private void q(float paramFloat)
  {
    if ((paramFloat - this.Kd > this.nc) && (!this.na))
    {
      this.GL = (this.Kd + this.nc);
      this.na = true;
      this.Kn.setAlpha(76);
    }
  }
  
  private Animation s(final int paramInt1, final int paramInt2)
  {
    Animation local4 = new Animation()
    {
      public final void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        n.this.Kn.setAlpha((int)(paramInt1 + (paramInt2 - paramInt1) * paramAnonymousFloat));
      }
    };
    local4.setDuration(300L);
    this.Kh.In = null;
    this.Kh.clearAnimation();
    this.Kh.startAnimation(local4);
    return local4;
  }
  
  private void setColorViewAlpha(int paramInt)
  {
    this.Kh.getBackground().setAlpha(paramInt);
    this.Kn.setAlpha(paramInt);
  }
  
  final void a(Animation.AnimationListener paramAnimationListener)
  {
    this.Kp = new Animation()
    {
      public final void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        n.this.setAnimationProgress(1.0F - paramAnonymousFloat);
      }
    };
    this.Kp.setDuration(150L);
    this.Kh.In = paramAnimationListener;
    this.Kh.clearAnimation();
    this.Kh.startAnimation(this.Kp);
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return this.JX.dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return this.JX.dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return this.JX.dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return this.JX.dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (this.Ki < 0) {}
    do
    {
      return paramInt2;
      if (paramInt2 == paramInt1 - 1) {
        return this.Ki;
      }
    } while (paramInt2 < this.Ki);
    return paramInt2 + 1;
  }
  
  public int getNestedScrollAxes()
  {
    return this.lR.FM;
  }
  
  public int getProgressCircleDiameter()
  {
    return this.Ku;
  }
  
  public int getProgressViewEndOffset()
  {
    return this.Km;
  }
  
  public int getProgressViewStartOffset()
  {
    return this.Kl;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return this.JX.at(0);
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return this.JX.FJ;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    reset();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    ej();
    int i = paramMotionEvent.getActionMasked();
    if ((this.Kf) && (i == 0)) {
      this.Kf = false;
    }
    if ((!isEnabled()) || (this.Kf) || (ek()) || (this.JU) || (this.Ka)) {
      return false;
    }
    switch (i)
    {
    }
    for (;;)
    {
      return this.na;
      setTargetOffsetTopAndBottom(this.Kl - this.Kh.getTop());
      this.jK = paramMotionEvent.getPointerId(0);
      this.na = false;
      i = paramMotionEvent.findPointerIndex(this.jK);
      if (i < 0) {
        break;
      }
      this.Kd = paramMotionEvent.getY(i);
      continue;
      if (this.jK == -1)
      {
        Log.e(JS, "Got ACTION_MOVE event but don't have an active pointer id.");
        return false;
      }
      i = paramMotionEvent.findPointerIndex(this.jK);
      if (i < 0) {
        break;
      }
      q(paramMotionEvent.getY(i));
      continue;
      a(paramMotionEvent);
      continue;
      this.na = false;
      this.jK = -1;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = getMeasuredWidth();
    paramInt2 = getMeasuredHeight();
    if (getChildCount() == 0) {}
    do
    {
      return;
      if (this.HL == null) {
        ej();
      }
    } while (this.HL == null);
    View localView = this.HL;
    paramInt3 = getPaddingLeft();
    paramInt4 = getPaddingTop();
    localView.layout(paramInt3, paramInt4, paramInt1 - getPaddingLeft() - getPaddingRight() + paramInt3, paramInt2 - getPaddingTop() - getPaddingBottom() + paramInt4);
    paramInt2 = this.Kh.getMeasuredWidth();
    paramInt3 = this.Kh.getMeasuredHeight();
    this.Kh.layout(paramInt1 / 2 - paramInt2 / 2, this.Kc, paramInt1 / 2 + paramInt2 / 2, this.Kc + paramInt3);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.HL == null) {
      ej();
    }
    if (this.HL == null) {}
    for (;;)
    {
      return;
      this.HL.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), 1073741824));
      this.Kh.measure(View.MeasureSpec.makeMeasureSpec(this.Ku, 1073741824), View.MeasureSpec.makeMeasureSpec(this.Ku, 1073741824));
      this.Ki = -1;
      paramInt1 = 0;
      while (paramInt1 < getChildCount())
      {
        if (getChildAt(paramInt1) == this.Kh)
        {
          this.Ki = paramInt1;
          return;
        }
        paramInt1 += 1;
      }
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if ((paramInt2 > 0) && (this.JW > 0.0F))
    {
      if (paramInt2 <= this.JW) {
        break label141;
      }
      paramArrayOfInt[1] = (paramInt2 - (int)this.JW);
      this.JW = 0.0F;
    }
    for (;;)
    {
      o(this.JW);
      if ((this.Kv) && (paramInt2 > 0) && (this.JW == 0.0F) && (Math.abs(paramInt2 - paramArrayOfInt[1]) > 0)) {
        this.Kh.setVisibility(8);
      }
      paramView = this.JY;
      if (dispatchNestedPreScroll(paramInt1 - paramArrayOfInt[0], paramInt2 - paramArrayOfInt[1], paramView, null))
      {
        paramArrayOfInt[0] += paramView[0];
        paramInt1 = paramArrayOfInt[1];
        paramView[1] += paramInt1;
      }
      return;
      label141:
      this.JW -= paramInt2;
      paramArrayOfInt[1] = paramInt2;
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, this.JZ);
    paramInt1 = this.JZ[1] + paramInt4;
    if ((paramInt1 < 0) && (!ek()))
    {
      float f = this.JW;
      this.JW = (Math.abs(paramInt1) + f);
      o(this.JW);
    }
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    this.lR.FM = paramInt;
    startNestedScroll(paramInt & 0x2);
    this.JW = 0.0F;
    this.Ka = true;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    return (isEnabled()) && (!this.Kf) && (!this.JU) && ((paramInt & 0x2) != 0);
  }
  
  public void onStopNestedScroll(View paramView)
  {
    this.lR.FM = 0;
    this.Ka = false;
    if (this.JW > 0.0F)
    {
      p(this.JW);
      this.JW = 0.0F;
    }
    stopNestedScroll();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if ((this.Kf) && (i == 0)) {
      this.Kf = false;
    }
    if ((!isEnabled()) || (this.Kf) || (ek()) || (this.JU) || (this.Ka)) {
      return false;
    }
    float f1;
    switch (i)
    {
    case 3: 
    case 4: 
    default: 
    case 0: 
    case 2: 
    case 5: 
    case 6: 
      for (;;)
      {
        return true;
        this.jK = paramMotionEvent.getPointerId(0);
        this.na = false;
        continue;
        i = paramMotionEvent.findPointerIndex(this.jK);
        if (i < 0)
        {
          Log.e(JS, "Got ACTION_MOVE event but have an invalid active pointer id.");
          return false;
        }
        f1 = paramMotionEvent.getY(i);
        q(f1);
        if (this.na)
        {
          f1 = (f1 - this.GL) * 0.5F;
          if (f1 <= 0.0F) {
            break;
          }
          o(f1);
          continue;
          i = paramMotionEvent.getActionIndex();
          if (i < 0)
          {
            Log.e(JS, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
            return false;
          }
          this.jK = paramMotionEvent.getPointerId(i);
          continue;
          a(paramMotionEvent);
        }
      }
    }
    i = paramMotionEvent.findPointerIndex(this.jK);
    if (i < 0)
    {
      Log.e(JS, "Got ACTION_UP event but don't have an active pointer id.");
      return false;
    }
    if (this.na)
    {
      f1 = paramMotionEvent.getY(i);
      float f2 = this.GL;
      this.na = false;
      p((f1 - f2) * 0.5F);
    }
    this.jK = -1;
    return false;
  }
  
  final void r(float paramFloat)
  {
    setTargetOffsetTopAndBottom(this.Kj + (int)((this.Kl - this.Kj) * paramFloat) - this.Kh.getTop());
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if (((Build.VERSION.SDK_INT >= 21) || (!(this.HL instanceof AbsListView))) && ((this.HL == null) || (r.ac(this.HL)))) {
      super.requestDisallowInterceptTouchEvent(paramBoolean);
    }
  }
  
  final void reset()
  {
    this.Kh.clearAnimation();
    this.Kn.stop();
    this.Kh.setVisibility(8);
    setColorViewAlpha(255);
    if (this.Ke) {
      setAnimationProgress(0.0F);
    }
    for (;;)
    {
      this.Kc = this.Kh.getTop();
      return;
      setTargetOffsetTopAndBottom(this.Kl - this.Kc);
    }
  }
  
  void setAnimationProgress(float paramFloat)
  {
    this.Kh.setScaleX(paramFloat);
    this.Kh.setScaleY(paramFloat);
  }
  
  @Deprecated
  public void setColorScheme(int... paramVarArgs)
  {
    setColorSchemeResources(paramVarArgs);
  }
  
  public void setColorSchemeColors(int... paramVarArgs)
  {
    ej();
    d locald = this.Kn;
    locald.Iu.setColors(paramVarArgs);
    locald.Iu.aF(0);
    locald.invalidateSelf();
  }
  
  public void setColorSchemeResources(int... paramVarArgs)
  {
    Context localContext = getContext();
    int[] arrayOfInt = new int[paramVarArgs.length];
    int i = 0;
    while (i < paramVarArgs.length)
    {
      arrayOfInt[i] = a.c(localContext, paramVarArgs[i]);
      i += 1;
    }
    setColorSchemeColors(arrayOfInt);
  }
  
  public void setDistanceToTriggerSync(int paramInt)
  {
    this.JV = paramInt;
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (!paramBoolean) {
      reset();
    }
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    this.JX.setNestedScrollingEnabled(paramBoolean);
  }
  
  public void setOnChildScrollUpCallback(a parama)
  {
    this.Kw = parama;
  }
  
  public void setOnRefreshListener(b paramb)
  {
    this.JT = paramb;
  }
  
  @Deprecated
  public void setProgressBackgroundColor(int paramInt)
  {
    setProgressBackgroundColorSchemeResource(paramInt);
  }
  
  public void setProgressBackgroundColorSchemeColor(int paramInt)
  {
    this.Kh.setBackgroundColor(paramInt);
  }
  
  public void setProgressBackgroundColorSchemeResource(int paramInt)
  {
    setProgressBackgroundColorSchemeColor(a.c(getContext(), paramInt));
  }
  
  public void setRefreshing(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.JU != paramBoolean))
    {
      this.JU = paramBoolean;
      if (!this.Kv) {}
      for (int i = this.Km + this.Kl;; i = this.Km)
      {
        setTargetOffsetTopAndBottom(i - this.Kc);
        this.Kt = false;
        Animation.AnimationListener localAnimationListener = this.Kx;
        this.Kh.setVisibility(0);
        this.Kn.setAlpha(255);
        this.Ko = new Animation()
        {
          public final void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
          {
            n.this.setAnimationProgress(paramAnonymousFloat);
          }
        };
        this.Ko.setDuration(this.Kb);
        if (localAnimationListener != null) {
          this.Kh.In = localAnimationListener;
        }
        this.Kh.clearAnimation();
        this.Kh.startAnimation(this.Ko);
        return;
      }
    }
    c(paramBoolean, false);
  }
  
  public void setSize(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      return;
    }
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    if (paramInt == 0) {}
    for (this.Ku = ((int)(localDisplayMetrics.density * 56.0F));; this.Ku = ((int)(localDisplayMetrics.density * 40.0F)))
    {
      this.Kh.setImageDrawable(null);
      this.Kn.aE(paramInt);
      this.Kh.setImageDrawable(this.Kn);
      return;
    }
  }
  
  void setTargetOffsetTopAndBottom(int paramInt)
  {
    this.Kh.bringToFront();
    r.m(this.Kh, paramInt);
    this.Kc = this.Kh.getTop();
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return this.JX.p(paramInt, 0);
  }
  
  public void stopNestedScroll()
  {
    this.JX.au(0);
  }
  
  public static abstract interface a
  {
    public abstract boolean el();
  }
  
  public static abstract interface b
  {
    public abstract void em();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */