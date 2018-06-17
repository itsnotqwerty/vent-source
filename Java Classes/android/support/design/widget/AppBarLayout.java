package android.support.design.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.design.a.b;
import android.support.design.a.j;
import android.support.design.a.k;
import android.support.v4.view.n;
import android.support.v4.view.r;
import android.support.v4.view.z;
import android.support.v4.widget.h;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@CoordinatorLayout.c(Behavior.class)
public class AppBarLayout
  extends LinearLayout
{
  private int iF = -1;
  private int iG = -1;
  private int iH = -1;
  boolean iI;
  int iJ = 0;
  z iK;
  private List<b> iL;
  boolean iM;
  private int[] iN;
  private boolean mCollapsible;
  
  public AppBarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppBarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
    p.d(paramContext);
    if (Build.VERSION.SDK_INT >= 21)
    {
      t.s(this);
      t.a(this, paramAttributeSet, a.j.Widget_Design_AppBarLayout);
    }
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.AppBarLayout, 0, a.j.Widget_Design_AppBarLayout);
    r.setBackground(this, paramContext.getDrawable(a.k.AppBarLayout_android_background));
    if (paramContext.hasValue(a.k.AppBarLayout_expanded)) {
      a(paramContext.getBoolean(a.k.AppBarLayout_expanded, false), false, false);
    }
    if ((Build.VERSION.SDK_INT >= 21) && (paramContext.hasValue(a.k.AppBarLayout_elevation))) {
      t.b(this, paramContext.getDimensionPixelSize(a.k.AppBarLayout_elevation, 0));
    }
    if (Build.VERSION.SDK_INT >= 26)
    {
      if (paramContext.hasValue(a.k.AppBarLayout_android_keyboardNavigationCluster)) {
        setKeyboardNavigationCluster(paramContext.getBoolean(a.k.AppBarLayout_android_keyboardNavigationCluster, false));
      }
      if (paramContext.hasValue(a.k.AppBarLayout_android_touchscreenBlocksFocus)) {
        setTouchscreenBlocksFocus(paramContext.getBoolean(a.k.AppBarLayout_android_touchscreenBlocksFocus, false));
      }
    }
    paramContext.recycle();
    r.a(this, new n()
    {
      public final z a(View paramAnonymousView, z paramAnonymousz)
      {
        AppBarLayout localAppBarLayout = AppBarLayout.this;
        paramAnonymousView = null;
        if (r.X(localAppBarLayout)) {
          paramAnonymousView = paramAnonymousz;
        }
        if (!android.support.v4.g.i.equals(localAppBarLayout.iK, paramAnonymousView))
        {
          localAppBarLayout.iK = paramAnonymousView;
          localAppBarLayout.bb();
        }
        return paramAnonymousz;
      }
    });
  }
  
  private static a a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((Build.VERSION.SDK_INT >= 19) && ((paramLayoutParams instanceof LinearLayout.LayoutParams))) {
      return new a((LinearLayout.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new a((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new a(paramLayoutParams);
  }
  
  private a b(AttributeSet paramAttributeSet)
  {
    return new a(getContext(), paramAttributeSet);
  }
  
  public final void a(b paramb)
  {
    if (this.iL == null) {
      this.iL = new ArrayList();
    }
    if ((paramb != null) && (!this.iL.contains(paramb))) {
      this.iL.add(paramb);
    }
  }
  
  public final void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    int k = 0;
    int i;
    if (paramBoolean1)
    {
      i = 1;
      if (!paramBoolean2) {
        break label48;
      }
    }
    label48:
    for (int j = 4;; j = 0)
    {
      if (paramBoolean3) {
        k = 8;
      }
      this.iJ = (k | j | i);
      requestLayout();
      return;
      i = 2;
      break;
    }
  }
  
  public final void b(b paramb)
  {
    if ((this.iL != null) && (paramb != null)) {
      this.iL.remove(paramb);
    }
  }
  
  final void bb()
  {
    this.iF = -1;
    this.iG = -1;
    this.iH = -1;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof a;
  }
  
  int getDownNestedPreScrollRange()
  {
    if (this.iG != -1) {
      return this.iG;
    }
    int j = getChildCount() - 1;
    int i = 0;
    if (j >= 0)
    {
      View localView = getChildAt(j);
      a locala = (a)localView.getLayoutParams();
      int k = localView.getMeasuredHeight();
      int m = locala.jc;
      if ((m & 0x5) == 5)
      {
        n = locala.topMargin;
        i = locala.bottomMargin + n + i;
        if ((m & 0x8) != 0) {
          i += r.R(localView);
        }
      }
      while (i <= 0) {
        for (;;)
        {
          int n;
          j -= 1;
          break;
          if ((m & 0x2) != 0) {
            i += k - r.R(localView);
          } else {
            i += k - getTopInset();
          }
        }
      }
    }
    i = Math.max(0, i);
    this.iG = i;
    return i;
  }
  
  int getDownNestedScrollRange()
  {
    if (this.iH != -1) {
      return this.iH;
    }
    int k = getChildCount();
    int j = 0;
    int i = 0;
    if (j < k)
    {
      View localView = getChildAt(j);
      a locala = (a)localView.getLayoutParams();
      int n = localView.getMeasuredHeight();
      int i1 = locala.topMargin;
      int i2 = locala.bottomMargin;
      int m = locala.jc;
      if ((m & 0x1) != 0)
      {
        i += n + (i1 + i2);
        if ((m & 0x2) != 0) {
          i -= r.R(localView) + getTopInset();
        }
      }
    }
    for (;;)
    {
      i = Math.max(0, i);
      this.iH = i;
      return i;
      j += 1;
      break;
    }
  }
  
  final int getMinimumHeightForVisibleOverlappingContent()
  {
    int j = getTopInset();
    int i = r.R(this);
    if (i != 0) {
      return i * 2 + j;
    }
    i = getChildCount();
    if (i > 0) {}
    for (i = r.R(getChildAt(i - 1)); i != 0; i = 0) {
      return i * 2 + j;
    }
    return getHeight() / 3;
  }
  
  int getPendingAction()
  {
    return this.iJ;
  }
  
  @Deprecated
  public float getTargetElevation()
  {
    return 0.0F;
  }
  
  final int getTopInset()
  {
    if (this.iK != null) {
      return this.iK.getSystemWindowInsetTop();
    }
    return 0;
  }
  
  public final int getTotalScrollRange()
  {
    if (this.iF != -1) {
      return this.iF;
    }
    int k = getChildCount();
    int j = 0;
    int i = 0;
    if (j < k)
    {
      View localView = getChildAt(j);
      a locala = (a)localView.getLayoutParams();
      int n = localView.getMeasuredHeight();
      int m = locala.jc;
      if ((m & 0x1) != 0)
      {
        int i1 = locala.topMargin;
        i += locala.bottomMargin + (n + i1);
        if ((m & 0x2) != 0) {
          i -= r.R(localView);
        }
      }
    }
    for (;;)
    {
      i = Math.max(0, i - getTopInset());
      this.iF = i;
      return i;
      j += 1;
      break;
    }
  }
  
  int getUpNestedPreScrollRange()
  {
    return getTotalScrollRange();
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    if (this.iN == null) {
      this.iN = new int[2];
    }
    int[] arrayOfInt1 = this.iN;
    int[] arrayOfInt2 = super.onCreateDrawableState(arrayOfInt1.length + paramInt);
    if (this.mCollapsible)
    {
      paramInt = a.b.state_collapsible;
      arrayOfInt1[0] = paramInt;
      if ((!this.mCollapsible) || (!this.iM)) {
        break label79;
      }
    }
    label79:
    for (paramInt = a.b.state_collapsed;; paramInt = -a.b.state_collapsed)
    {
      arrayOfInt1[1] = paramInt;
      return mergeDrawableStates(arrayOfInt2, arrayOfInt1);
      paramInt = -a.b.state_collapsible;
      break;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    bb();
    this.iI = false;
    paramInt2 = getChildCount();
    paramInt1 = 0;
    if (paramInt1 < paramInt2)
    {
      if (((a)getChildAt(paramInt1).getLayoutParams()).jd != null) {
        this.iI = true;
      }
    }
    else
    {
      paramInt3 = getChildCount();
      paramInt1 = 0;
      label62:
      if (paramInt1 >= paramInt3) {
        break label148;
      }
      a locala = (a)getChildAt(paramInt1).getLayoutParams();
      if (((locala.jc & 0x1) != 1) || ((locala.jc & 0xA) == 0)) {
        break label136;
      }
      paramInt2 = 1;
      label105:
      if (paramInt2 == 0) {
        break label141;
      }
    }
    label136:
    label141:
    label148:
    for (paramBoolean = true;; paramBoolean = false)
    {
      if (this.mCollapsible != paramBoolean)
      {
        this.mCollapsible = paramBoolean;
        refreshDrawableState();
      }
      return;
      paramInt1 += 1;
      break;
      paramInt2 = 0;
      break label105;
      paramInt1 += 1;
      break label62;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    bb();
  }
  
  final void q(int paramInt)
  {
    if (this.iL != null)
    {
      int j = this.iL.size();
      int i = 0;
      while (i < j)
      {
        b localb = (b)this.iL.get(i);
        if (localb != null) {
          localb.onOffsetChanged(this, paramInt);
        }
        i += 1;
      }
    }
  }
  
  public void setExpanded(boolean paramBoolean)
  {
    a(paramBoolean, r.ae(this), true);
  }
  
  public void setOrientation(int paramInt)
  {
    if (paramInt != 1) {
      throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }
    super.setOrientation(paramInt);
  }
  
  @Deprecated
  public void setTargetElevation(float paramFloat)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      t.b(this, paramFloat);
    }
  }
  
  public static class Behavior
    extends i<AppBarLayout>
  {
    private int iP;
    private ValueAnimator iQ;
    private int iR = -1;
    private boolean iS;
    private float iT;
    private WeakReference<View> iU;
    private a iV;
    
    public Behavior() {}
    
    public Behavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    private void a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout)
    {
      int n = bc();
      int j = paramAppBarLayout.getChildCount();
      int i = 0;
      View localView;
      label49:
      int i1;
      int m;
      int k;
      if (i < j)
      {
        localView = paramAppBarLayout.getChildAt(i);
        if ((localView.getTop() <= -n) && (localView.getBottom() >= -n)) {
          if (i >= 0)
          {
            localView = paramAppBarLayout.getChildAt(i);
            i1 = ((AppBarLayout.a)localView.getLayoutParams()).jc;
            if ((i1 & 0x11) == 17)
            {
              m = -localView.getTop();
              k = -localView.getBottom();
              j = k;
              if (i == paramAppBarLayout.getChildCount() - 1) {
                j = k + paramAppBarLayout.getTopInset();
              }
              if (!f(i1, 2)) {
                break label184;
              }
              i = j + r.R(localView);
              k = m;
              label144:
              if (n >= (i + k) / 2) {
                break label231;
              }
            }
          }
        }
      }
      for (;;)
      {
        a(paramCoordinatorLayout, paramAppBarLayout, android.support.v4.c.a.b(i, -paramAppBarLayout.getTotalScrollRange(), 0));
        return;
        i += 1;
        break;
        i = -1;
        break label49;
        label184:
        i = j;
        k = m;
        if (!f(i1, 5)) {
          break label144;
        }
        i = r.R(localView) + j;
        if (n < i)
        {
          k = i;
          i = j;
          break label144;
        }
        k = m;
        break label144;
        label231:
        i = k;
      }
    }
    
    private void a(final CoordinatorLayout paramCoordinatorLayout, final AppBarLayout paramAppBarLayout, int paramInt)
    {
      int i = Math.abs(bc() - paramInt);
      float f = Math.abs(0.0F);
      if (f > 0.0F) {}
      int j;
      for (i = Math.round(i / f * 1000.0F) * 3;; i = (int)((i / paramAppBarLayout.getHeight() + 1.0F) * 150.0F))
      {
        j = bc();
        if (j != paramInt) {
          break;
        }
        if ((this.iQ != null) && (this.iQ.isRunning())) {
          this.iQ.cancel();
        }
        return;
      }
      if (this.iQ == null)
      {
        this.iQ = new ValueAnimator();
        this.iQ.setInterpolator(a.iE);
        this.iQ.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
        {
          public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
          {
            AppBarLayout.Behavior.this.c(paramCoordinatorLayout, paramAppBarLayout, ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
          }
        });
      }
      for (;;)
      {
        this.iQ.setDuration(Math.min(i, 600));
        this.iQ.setIntValues(new int[] { j, paramInt });
        this.iQ.start();
        return;
        this.iQ.cancel();
      }
    }
    
    private static void a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      int j = 0;
      int k = Math.abs(paramInt1);
      int m = paramAppBarLayout.getChildCount();
      int i = 0;
      Object localObject;
      label53:
      boolean bool;
      if (i < m)
      {
        localObject = paramAppBarLayout.getChildAt(i);
        if ((k >= ((View)localObject).getTop()) && (k <= ((View)localObject).getBottom())) {
          if (localObject != null)
          {
            i = ((AppBarLayout.a)((View)localObject).getLayoutParams()).jc;
            if ((i & 0x1) == 0) {
              break label340;
            }
            k = r.R((View)localObject);
            if ((paramInt2 <= 0) || ((i & 0xC) == 0)) {
              break label291;
            }
            if (-paramInt1 < ((View)localObject).getBottom() - k - paramAppBarLayout.getTopInset()) {
              break label285;
            }
            bool = true;
          }
        }
      }
      for (;;)
      {
        label118:
        if (paramAppBarLayout.iM != bool)
        {
          paramAppBarLayout.iM = bool;
          paramAppBarLayout.refreshDrawableState();
          paramInt1 = 1;
          label139:
          if (Build.VERSION.SDK_INT >= 11) {
            if (!paramBoolean)
            {
              if (paramInt1 == 0) {
                break label269;
              }
              localObject = paramCoordinatorLayout.lC.I(paramAppBarLayout);
              paramCoordinatorLayout.lE.clear();
              if (localObject != null) {
                paramCoordinatorLayout.lE.addAll((Collection)localObject);
              }
              paramCoordinatorLayout = paramCoordinatorLayout.lE;
              i = paramCoordinatorLayout.size();
              paramInt1 = 0;
            }
          }
        }
        for (;;)
        {
          paramInt2 = j;
          if (paramInt1 < i)
          {
            localObject = ((CoordinatorLayout.e)((View)paramCoordinatorLayout.get(paramInt1)).getLayoutParams()).lT;
            if (!(localObject instanceof AppBarLayout.ScrollingViewBehavior)) {
              break label333;
            }
            paramInt2 = j;
            if (((AppBarLayout.ScrollingViewBehavior)localObject).nj != 0) {
              paramInt2 = 1;
            }
          }
          if (paramInt2 != 0) {
            paramAppBarLayout.jumpDrawablesToCurrentState();
          }
          label269:
          return;
          i += 1;
          break;
          localObject = null;
          break label53;
          label285:
          bool = false;
          break label118;
          label291:
          if ((i & 0x2) == 0) {
            break label340;
          }
          if (-paramInt1 >= ((View)localObject).getBottom() - k - paramAppBarLayout.getTopInset())
          {
            bool = true;
            break label118;
          }
          bool = false;
          break label118;
          paramInt1 = 0;
          break label139;
          label333:
          paramInt1 += 1;
        }
        label340:
        bool = false;
      }
    }
    
    private static boolean f(int paramInt1, int paramInt2)
    {
      return (paramInt1 & paramInt2) == paramInt2;
    }
    
    final int bc()
    {
      return super.be() + this.iP;
    }
    
    public static abstract class a
    {
      public abstract boolean bf();
    }
    
    protected static final class b
      extends android.support.v4.view.a
    {
      public static final Parcelable.Creator<b> CREATOR = new Parcelable.ClassLoaderCreator() {};
      int iZ;
      float ja;
      boolean jb;
      
      public b(Parcel paramParcel, ClassLoader paramClassLoader)
      {
        super(paramClassLoader);
        this.iZ = paramParcel.readInt();
        this.ja = paramParcel.readFloat();
        if (paramParcel.readByte() != 0) {}
        for (boolean bool = true;; bool = false)
        {
          this.jb = bool;
          return;
        }
      }
      
      public b(Parcelable paramParcelable)
      {
        super();
      }
      
      public final void writeToParcel(Parcel paramParcel, int paramInt)
      {
        super.writeToParcel(paramParcel, paramInt);
        paramParcel.writeInt(this.iZ);
        paramParcel.writeFloat(this.ja);
        if (this.jb) {}
        for (paramInt = 1;; paramInt = 0)
        {
          paramParcel.writeByte((byte)paramInt);
          return;
        }
      }
    }
  }
  
  public static class ScrollingViewBehavior
    extends j
  {
    public ScrollingViewBehavior() {}
    
    public ScrollingViewBehavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.ScrollingViewBehavior_Layout);
      this.nj = paramContext.getDimensionPixelSize(a.k.ScrollingViewBehavior_Layout_behavior_overlapTop, 0);
      paramContext.recycle();
    }
    
    private static AppBarLayout e(List<View> paramList)
    {
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        View localView = (View)paramList.get(i);
        if ((localView instanceof AppBarLayout)) {
          return (AppBarLayout)localView;
        }
        i += 1;
      }
      return null;
    }
    
    public final boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView, Rect paramRect, boolean paramBoolean)
    {
      AppBarLayout localAppBarLayout = e(paramCoordinatorLayout.n(paramView));
      if (localAppBarLayout != null)
      {
        paramRect.offset(paramView.getLeft(), paramView.getTop());
        paramView = this.ng;
        paramView.set(0, 0, paramCoordinatorLayout.getWidth(), paramCoordinatorLayout.getHeight());
        if (!paramView.contains(paramRect))
        {
          if (!paramBoolean) {}
          for (paramBoolean = true;; paramBoolean = false)
          {
            localAppBarLayout.a(false, paramBoolean, true);
            return true;
          }
        }
      }
      return false;
    }
    
    public final boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
    {
      paramCoordinatorLayout = ((CoordinatorLayout.e)paramView2.getLayoutParams()).lT;
      if ((paramCoordinatorLayout instanceof AppBarLayout.Behavior))
      {
        paramCoordinatorLayout = (AppBarLayout.Behavior)paramCoordinatorLayout;
        int i = paramView2.getBottom();
        int j = paramView1.getTop();
        r.m(paramView1, AppBarLayout.Behavior.a(paramCoordinatorLayout) + (i - j) + this.ni - p(paramView2));
      }
      return false;
    }
    
    public final boolean d(View paramView)
    {
      return paramView instanceof AppBarLayout;
    }
    
    final float e(View paramView)
    {
      if ((paramView instanceof AppBarLayout))
      {
        paramView = (AppBarLayout)paramView;
        int j = paramView.getTotalScrollRange();
        int k = paramView.getDownNestedPreScrollRange();
        paramView = ((CoordinatorLayout.e)paramView.getLayoutParams()).lT;
        if ((paramView instanceof AppBarLayout.Behavior)) {}
        for (int i = ((AppBarLayout.Behavior)paramView).bc(); (k != 0) && (j + i <= k); i = 0) {
          return 0.0F;
        }
        j -= k;
        if (j != 0) {
          return i / j + 1.0F;
        }
      }
      return 0.0F;
    }
    
    final int f(View paramView)
    {
      if ((paramView instanceof AppBarLayout)) {
        return ((AppBarLayout)paramView).getTotalScrollRange();
      }
      return super.f(paramView);
    }
  }
  
  public static final class a
    extends LinearLayout.LayoutParams
  {
    int jc = 1;
    Interpolator jd;
    
    public a()
    {
      super(-2);
    }
    
    public a(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.AppBarLayout_Layout);
      this.jc = paramAttributeSet.getInt(a.k.AppBarLayout_Layout_layout_scrollFlags, 0);
      if (paramAttributeSet.hasValue(a.k.AppBarLayout_Layout_layout_scrollInterpolator)) {
        this.jd = AnimationUtils.loadInterpolator(paramContext, paramAttributeSet.getResourceId(a.k.AppBarLayout_Layout_layout_scrollInterpolator, 0));
      }
      paramAttributeSet.recycle();
    }
    
    public a(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public a(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public a(LinearLayout.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  public static abstract interface b
  {
    public abstract void onOffsetChanged(AppBarLayout paramAppBarLayout, int paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/AppBarLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */