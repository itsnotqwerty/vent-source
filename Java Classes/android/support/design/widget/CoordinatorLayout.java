package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.b.a.a;
import android.support.b.a.b;
import android.support.b.a.c;
import android.support.v4.g.i;
import android.support.v4.g.k.a;
import android.support.v4.g.k.c;
import android.support.v4.view.e;
import android.support.v4.view.l;
import android.support.v4.view.n;
import android.support.v4.view.r;
import android.support.v4.view.z;
import android.support.v4.widget.h;
import android.support.v4.widget.s;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout
  extends ViewGroup
  implements l
{
  private static final k.a<Rect> lA;
  static final String lw;
  static final Class<?>[] lx;
  static final ThreadLocal<Map<String, Constructor<b>>> ly;
  static final Comparator<View> lz;
  z iK;
  private final List<View> lB = new ArrayList();
  final h<View> lC = new h();
  private final List<View> lD = new ArrayList();
  final List<View> lE = new ArrayList();
  private final int[] lF = new int[2];
  private boolean lG;
  private boolean lH;
  private int[] lI;
  private View lJ;
  private View lK;
  private f lL;
  private boolean lM;
  boolean lN;
  private Drawable lO;
  ViewGroup.OnHierarchyChangeListener lP;
  private n lQ;
  private final android.support.v4.view.m lR = new android.support.v4.view.m(this);
  
  static
  {
    Object localObject = CoordinatorLayout.class.getPackage();
    if (localObject != null)
    {
      localObject = ((Package)localObject).getName();
      lw = (String)localObject;
      if (Build.VERSION.SDK_INT < 21) {
        break label82;
      }
    }
    label82:
    for (lz = new h();; lz = null)
    {
      lx = new Class[] { Context.class, AttributeSet.class };
      ly = new ThreadLocal();
      lA = new k.c(12);
      return;
      localObject = null;
      break;
    }
  }
  
  public CoordinatorLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.coordinatorLayoutStyle);
  }
  
  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (paramInt == 0) {}
    for (paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a.c.CoordinatorLayout, 0, a.b.Widget_Support_CoordinatorLayout);; paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a.c.CoordinatorLayout, paramInt, 0))
    {
      paramInt = paramAttributeSet.getResourceId(a.c.CoordinatorLayout_keylines, 0);
      if (paramInt == 0) {
        break;
      }
      paramContext = paramContext.getResources();
      this.lI = paramContext.getIntArray(paramInt);
      float f = paramContext.getDisplayMetrics().density;
      int j = this.lI.length;
      paramInt = i;
      while (paramInt < j)
      {
        this.lI[paramInt] = ((int)(this.lI[paramInt] * f));
        paramInt += 1;
      }
    }
    this.lO = paramAttributeSet.getDrawable(a.c.CoordinatorLayout_statusBarBackground);
    paramAttributeSet.recycle();
    bA();
    super.setOnHierarchyChangeListener(new d());
  }
  
  private int E(int paramInt)
  {
    if (this.lI == null)
    {
      Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + paramInt);
      return 0;
    }
    if ((paramInt < 0) || (paramInt >= this.lI.length))
    {
      Log.e("CoordinatorLayout", "Keyline index " + paramInt + " out of range for " + this);
      return 0;
    }
    return this.lI[paramInt];
  }
  
  private static int F(int paramInt)
  {
    if ((paramInt & 0x7) == 0) {
      paramInt = 0x800003 | paramInt;
    }
    for (;;)
    {
      int i = paramInt;
      if ((paramInt & 0x70) == 0) {
        i = paramInt | 0x30;
      }
      return i;
    }
  }
  
  private static int G(int paramInt)
  {
    int i = paramInt;
    if (paramInt == 0) {
      i = 8388661;
    }
    return i;
  }
  
  static b a(Context paramContext, AttributeSet paramAttributeSet, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    String str;
    if (paramString.startsWith(".")) {
      str = paramContext.getPackageName() + paramString;
    }
    label224:
    for (;;)
    {
      try
      {
        paramString = (Map)ly.get();
        if (paramString != null) {
          break label224;
        }
        paramString = new HashMap();
        ly.set(paramString);
        Constructor localConstructor2 = (Constructor)paramString.get(str);
        Constructor localConstructor1 = localConstructor2;
        if (localConstructor2 == null)
        {
          localConstructor1 = paramContext.getClassLoader().loadClass(str).getConstructor(lx);
          localConstructor1.setAccessible(true);
          paramString.put(str, localConstructor1);
        }
        paramContext = (b)localConstructor1.newInstance(new Object[] { paramContext, paramAttributeSet });
        return paramContext;
      }
      catch (Exception paramContext)
      {
        throw new RuntimeException("Could not inflate Behavior subclass " + str, paramContext);
      }
      str = paramString;
      if (paramString.indexOf('.') < 0)
      {
        str = paramString;
        if (!TextUtils.isEmpty(lw)) {
          str = lw + '.' + paramString;
        }
      }
    }
  }
  
  private static void a(int paramInt1, Rect paramRect1, Rect paramRect2, e parame, int paramInt2, int paramInt3)
  {
    int j = parame.gravity;
    int i = j;
    if (j == 0) {
      i = 17;
    }
    int k = e.getAbsoluteGravity(i, paramInt1);
    i = e.getAbsoluteGravity(F(parame.lV), paramInt1);
    switch (i & 0x7)
    {
    default: 
      paramInt1 = paramRect1.left;
      switch (i & 0x70)
      {
      default: 
        i = paramRect1.top;
        label114:
        j = paramInt1;
        switch (k & 0x7)
        {
        default: 
          j = paramInt1 - paramInt2;
        case 5: 
          label154:
          paramInt1 = i;
          switch (k & 0x70)
          {
          }
          break;
        }
        break;
      }
      break;
    }
    for (paramInt1 = i - paramInt3;; paramInt1 = i - paramInt3 / 2)
    {
      paramRect2.set(j, paramInt1, j + paramInt2, paramInt1 + paramInt3);
      return;
      paramInt1 = paramRect1.right;
      break;
      paramInt1 = paramRect1.left;
      paramInt1 = paramRect1.width() / 2 + paramInt1;
      break;
      i = paramRect1.bottom;
      break label114;
      i = paramRect1.top + paramRect1.height() / 2;
      break label114;
      j = paramInt1 - paramInt2 / 2;
      break label154;
    }
  }
  
  private static void a(Rect paramRect)
  {
    paramRect.setEmpty();
    lA.j(paramRect);
  }
  
  private void a(e parame, Rect paramRect, int paramInt1, int paramInt2)
  {
    int j = getWidth();
    int i = getHeight();
    j = Math.max(getPaddingLeft() + parame.leftMargin, Math.min(paramRect.left, j - getPaddingRight() - paramInt1 - parame.rightMargin));
    i = Math.max(getPaddingTop() + parame.topMargin, Math.min(paramRect.top, i - getPaddingBottom() - paramInt2 - parame.bottomMargin));
    paramRect.set(j, i, j + paramInt1, i + paramInt2);
  }
  
  private void a(View paramView, boolean paramBoolean, Rect paramRect)
  {
    if ((paramView.isLayoutRequested()) || (paramView.getVisibility() == 8))
    {
      paramRect.setEmpty();
      return;
    }
    if (paramBoolean)
    {
      s.a(this, paramView, paramRect);
      return;
    }
    paramRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
  }
  
  private boolean a(MotionEvent paramMotionEvent, int paramInt)
  {
    boolean bool1 = false;
    int k = 0;
    int m = paramMotionEvent.getActionMasked();
    List localList = this.lD;
    localList.clear();
    boolean bool2 = isChildrenDrawingOrderEnabled();
    int n = getChildCount();
    int i = n - 1;
    if (i >= 0)
    {
      if (bool2) {}
      for (j = getChildDrawingOrder(n, i);; j = i)
      {
        localList.add(getChildAt(j));
        i -= 1;
        break;
      }
    }
    if (lz != null) {
      Collections.sort(localList, lz);
    }
    n = localList.size();
    int j = 0;
    MotionEvent localMotionEvent = null;
    i = k;
    View localView;
    e locale;
    b localb;
    if (j < n)
    {
      localView = (View)localList.get(j);
      locale = (e)localView.getLayoutParams();
      localb = locale.lT;
      if (((bool1) || (i != 0)) && (m != 0))
      {
        if (localb == null) {
          break label456;
        }
        if (localMotionEvent != null) {
          break label453;
        }
        long l = SystemClock.uptimeMillis();
        localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        label199:
        switch (paramInt)
        {
        }
      }
    }
    label304:
    label359:
    label434:
    label443:
    label453:
    label456:
    for (;;)
    {
      j += 1;
      break;
      localb.a(this, localView, localMotionEvent);
      continue;
      localb.b(this, localView, localMotionEvent);
      continue;
      bool2 = bool1;
      if (!bool1)
      {
        bool2 = bool1;
        if (localb == null) {}
      }
      switch (paramInt)
      {
      default: 
        bool2 = bool1;
        if (bool1)
        {
          this.lJ = localView;
          bool2 = bool1;
        }
        bool1 = bool2;
        if (locale.lT == null) {
          locale.me = false;
        }
        boolean bool3 = locale.me;
        if (locale.me)
        {
          bool2 = true;
          if ((!bool2) || (bool3)) {
            break label434;
          }
        }
        break;
      }
      for (i = 1;; i = 0)
      {
        if (bool2)
        {
          bool2 = bool1;
          if (i == 0) {
            break label443;
          }
        }
        break;
        bool1 = localb.a(this, localView, paramMotionEvent);
        break label304;
        bool1 = localb.b(this, localView, paramMotionEvent);
        break label304;
        bool2 = locale.me | false;
        locale.me = bool2;
        break label359;
      }
      bool2 = bool1;
      localList.clear();
      return bool2;
      break label199;
    }
  }
  
  private void bA()
  {
    if (Build.VERSION.SDK_INT < 21) {
      return;
    }
    if (r.X(this))
    {
      if (this.lQ == null) {
        this.lQ = new n()
        {
          public final z a(View paramAnonymousView, z paramAnonymousz)
          {
            boolean bool2 = true;
            int i = 0;
            CoordinatorLayout localCoordinatorLayout = CoordinatorLayout.this;
            if (!i.equals(localCoordinatorLayout.iK, paramAnonymousz))
            {
              localCoordinatorLayout.iK = paramAnonymousz;
              if ((paramAnonymousz != null) && (paramAnonymousz.getSystemWindowInsetTop() > 0))
              {
                bool1 = true;
                localCoordinatorLayout.lN = bool1;
                if ((localCoordinatorLayout.lN) || (localCoordinatorLayout.getBackground() != null)) {
                  break label150;
                }
              }
              label150:
              for (boolean bool1 = bool2;; bool1 = false)
              {
                localCoordinatorLayout.setWillNotDraw(bool1);
                if (paramAnonymousz.isConsumed()) {
                  break label156;
                }
                int j = localCoordinatorLayout.getChildCount();
                paramAnonymousView = paramAnonymousz;
                for (;;)
                {
                  paramAnonymousz = paramAnonymousView;
                  if (i >= j) {
                    break;
                  }
                  paramAnonymousz = localCoordinatorLayout.getChildAt(i);
                  if ((r.X(paramAnonymousz)) && (((CoordinatorLayout.e)paramAnonymousz.getLayoutParams()).lT != null))
                  {
                    paramAnonymousz = paramAnonymousView;
                    if (paramAnonymousView.isConsumed()) {
                      break;
                    }
                  }
                  i += 1;
                }
                bool1 = false;
                break;
              }
              label156:
              localCoordinatorLayout.requestLayout();
              return paramAnonymousz;
            }
            return paramAnonymousz;
          }
        };
      }
      r.a(this, this.lQ);
      setSystemUiVisibility(1280);
      return;
    }
    r.a(this, null);
  }
  
  private static Rect by()
  {
    Rect localRect2 = (Rect)lA.as();
    Rect localRect1 = localRect2;
    if (localRect2 == null) {
      localRect1 = new Rect();
    }
    return localRect1;
  }
  
  private void bz()
  {
    this.lB.clear();
    Object localObject1 = this.lC;
    int j = ((h)localObject1).Jl.size();
    int i = 0;
    Object localObject2;
    while (i < j)
    {
      localObject2 = (ArrayList)((h)localObject1).Jl.valueAt(i);
      if (localObject2 != null)
      {
        ((ArrayList)localObject2).clear();
        ((h)localObject1).Jk.j(localObject2);
      }
      i += 1;
    }
    ((h)localObject1).Jl.clear();
    int m = getChildCount();
    j = 0;
    while (j < m)
    {
      View localView1 = getChildAt(j);
      e locale = m(localView1);
      if (locale.lX == -1)
      {
        locale.md = null;
        locale.mc = null;
        this.lC.H(localView1);
        i = 0;
      }
      for (;;)
      {
        if (i >= m) {
          break label769;
        }
        if (i != j)
        {
          View localView2 = getChildAt(i);
          int k;
          if (localView2 != locale.md)
          {
            k = r.K(this);
            int n = e.getAbsoluteGravity(((e)localView2.getLayoutParams()).lY, k);
            if ((n != 0) && ((e.getAbsoluteGravity(locale.lZ, k) & n) == n))
            {
              k = 1;
              label217:
              if ((k == 0) && ((locale.lT == null) || (!locale.lT.d(localView2)))) {
                break label679;
              }
            }
          }
          else
          {
            k = 1;
          }
          for (;;)
          {
            if (k != 0)
            {
              if (!this.lC.Jl.containsKey(localView2)) {
                this.lC.H(localView2);
              }
              h localh = this.lC;
              if ((!localh.Jl.containsKey(localView2)) || (!localh.Jl.containsKey(localView1)))
              {
                throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
                if (locale.mc != null)
                {
                  if (locale.mc.getId() == locale.lX) {
                    break label398;
                  }
                  i = 0;
                }
                for (;;)
                {
                  if (i != 0) {
                    break label487;
                  }
                  locale.mc = findViewById(locale.lX);
                  if (locale.mc == null) {
                    break label605;
                  }
                  if (locale.mc != this) {
                    break label500;
                  }
                  if (!isInEditMode()) {
                    break label489;
                  }
                  locale.md = null;
                  locale.mc = null;
                  break;
                  label398:
                  localObject2 = locale.mc;
                  for (localObject1 = locale.mc.getParent();; localObject1 = ((ViewParent)localObject1).getParent())
                  {
                    if (localObject1 == this) {
                      break label477;
                    }
                    if ((localObject1 == null) || (localObject1 == localView1))
                    {
                      locale.md = null;
                      locale.mc = null;
                      i = 0;
                      break;
                    }
                    if ((localObject1 instanceof View)) {
                      localObject2 = (View)localObject1;
                    }
                  }
                  label477:
                  locale.md = ((View)localObject2);
                  i = 1;
                }
                label487:
                break;
                label489:
                throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                label500:
                localObject2 = locale.mc;
                for (localObject1 = locale.mc.getParent();; localObject1 = ((ViewParent)localObject1).getParent())
                {
                  if ((localObject1 == this) || (localObject1 == null)) {
                    break label595;
                  }
                  if (localObject1 == localView1)
                  {
                    if (isInEditMode())
                    {
                      locale.md = null;
                      locale.mc = null;
                      break;
                    }
                    throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                  }
                  if ((localObject1 instanceof View)) {
                    localObject2 = (View)localObject1;
                  }
                }
                label595:
                locale.md = ((View)localObject2);
                break;
                label605:
                if (isInEditMode())
                {
                  locale.md = null;
                  locale.mc = null;
                  break;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + getResources().getResourceName(locale.lX) + " to anchor view " + localView1);
                k = 0;
                break label217;
                label679:
                k = 0;
                continue;
              }
              localObject2 = (ArrayList)localh.Jl.get(localView2);
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                localObject2 = (ArrayList)localh.Jk.as();
                localObject1 = localObject2;
                if (localObject2 == null) {
                  localObject1 = new ArrayList();
                }
                localh.Jl.put(localView2, localObject1);
              }
              ((ArrayList)localObject1).add(localView1);
            }
          }
        }
        i += 1;
      }
      label769:
      j += 1;
    }
    this.lB.addAll(this.lC.ee());
    Collections.reverse(this.lB);
  }
  
  private static void f(View paramView, int paramInt)
  {
    e locale = (e)paramView.getLayoutParams();
    if (locale.ma != paramInt)
    {
      r.n(paramView, paramInt - locale.ma);
      locale.ma = paramInt;
    }
  }
  
  private static void g(View paramView, int paramInt)
  {
    e locale = (e)paramView.getLayoutParams();
    if (locale.mb != paramInt)
    {
      r.m(paramView, paramInt - locale.mb);
      locale.mb = paramInt;
    }
  }
  
  private void h(boolean paramBoolean)
  {
    int j = getChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = getChildAt(i);
      b localb = ((e)localView.getLayoutParams()).lT;
      MotionEvent localMotionEvent;
      if (localb != null)
      {
        long l = SystemClock.uptimeMillis();
        localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        if (!paramBoolean) {
          break label82;
        }
        localb.a(this, localView, localMotionEvent);
      }
      for (;;)
      {
        localMotionEvent.recycle();
        i += 1;
        break;
        label82:
        localb.b(this, localView, localMotionEvent);
      }
    }
    i = 0;
    while (i < j)
    {
      ((e)getChildAt(i).getLayoutParams()).me = false;
      i += 1;
    }
    this.lJ = null;
    this.lG = false;
  }
  
  private static e m(View paramView)
  {
    e locale = (e)paramView.getLayoutParams();
    if (!locale.lU)
    {
      if ((paramView instanceof a))
      {
        paramView = ((a)paramView).bB();
        if (paramView == null) {
          Log.e("CoordinatorLayout", "Attached behavior class is null");
        }
        locale.a(paramView);
        locale.lU = true;
      }
    }
    else {
      return locale;
    }
    Class localClass = paramView.getClass();
    paramView = null;
    View localView;
    for (;;)
    {
      localView = paramView;
      if (localClass == null) {
        break;
      }
      paramView = (c)localClass.getAnnotation(c.class);
      localView = paramView;
      if (paramView != null) {
        break;
      }
      localClass = localClass.getSuperclass();
    }
    if (localView != null) {}
    try
    {
      locale.a((b)localView.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
      locale.lU = true;
      return locale;
    }
    catch (Exception paramView)
    {
      for (;;)
      {
        Log.e("CoordinatorLayout", "Default behavior class " + localView.value().getName() + " could not be instantiated. Did you forget a default constructor?", paramView);
      }
    }
  }
  
  final void H(int paramInt)
  {
    int m = r.K(this);
    int n = this.lB.size();
    Rect localRect1 = by();
    Rect localRect2 = by();
    Rect localRect3 = by();
    int j = 0;
    View localView;
    Object localObject1;
    int i;
    Object localObject2;
    Object localObject3;
    if (j < n)
    {
      localView = (View)this.lB.get(j);
      localObject1 = (e)localView.getLayoutParams();
      if ((paramInt != 0) || (localView.getVisibility() != 8))
      {
        i = 0;
        int i1;
        int i2;
        int k;
        if (i < j)
        {
          localObject2 = (View)this.lB.get(i);
          Rect localRect5;
          if (((e)localObject1).md == localObject2)
          {
            localObject2 = (e)localView.getLayoutParams();
            if (((e)localObject2).mc != null)
            {
              localObject3 = by();
              localRect4 = by();
              localRect5 = by();
              s.a(this, ((e)localObject2).mc, (Rect)localObject3);
              a(localView, false, localRect4);
              i1 = localView.getMeasuredWidth();
              i2 = localView.getMeasuredHeight();
              a(m, (Rect)localObject3, localRect5, (e)localObject2, i1, i2);
              if ((localRect5.left == localRect4.left) && (localRect5.top == localRect4.top)) {
                break label337;
              }
            }
          }
          label337:
          for (k = 1;; k = 0)
          {
            a((e)localObject2, localRect5, i1, i2);
            i1 = localRect5.left - localRect4.left;
            i2 = localRect5.top - localRect4.top;
            if (i1 != 0) {
              r.n(localView, i1);
            }
            if (i2 != 0) {
              r.m(localView, i2);
            }
            if (k != 0)
            {
              b localb = ((e)localObject2).lT;
              if (localb != null) {
                localb.a(this, localView, ((e)localObject2).mc);
              }
            }
            a((Rect)localObject3);
            a(localRect4);
            a(localRect5);
            i += 1;
            break;
          }
        }
        a(localView, true, localRect2);
        if ((((e)localObject1).lY != 0) && (!localRect2.isEmpty()))
        {
          i = e.getAbsoluteGravity(((e)localObject1).lY, m);
          switch (i & 0x70)
          {
          default: 
            switch (i & 0x7)
            {
            }
            break;
          }
        }
        for (;;)
        {
          if ((((e)localObject1).lZ != 0) && (localView.getVisibility() == 0) && (r.ae(localView)) && (localView.getWidth() > 0) && (localView.getHeight() > 0)) {
            break label703;
          }
          label480:
          if (paramInt != 2)
          {
            localRect3.set(((e)localView.getLayoutParams()).mi);
            if (localRect3.equals(localRect2)) {
              break label1197;
            }
            ((e)localView.getLayoutParams()).mi.set(localRect2);
          }
          i = j + 1;
          for (;;)
          {
            if (i >= n) {
              break label1197;
            }
            localObject1 = (View)this.lB.get(i);
            localObject2 = (e)((View)localObject1).getLayoutParams();
            localObject3 = ((e)localObject2).lT;
            if ((localObject3 != null) && (((b)localObject3).d(localView)))
            {
              if ((paramInt != 0) || (!((e)localObject2).mh)) {
                break;
              }
              ((e)localObject2).mh = false;
            }
            i += 1;
          }
          localRect1.top = Math.max(localRect1.top, localRect2.bottom);
          break;
          localRect1.bottom = Math.max(localRect1.bottom, getHeight() - localRect2.top);
          break;
          localRect1.left = Math.max(localRect1.left, localRect2.right);
          continue;
          localRect1.right = Math.max(localRect1.right, getWidth() - localRect2.left);
        }
        label703:
        localObject1 = (e)localView.getLayoutParams();
        localObject2 = ((e)localObject1).lT;
        localObject3 = by();
        Rect localRect4 = by();
        localRect4.set(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom());
        if ((localObject2 != null) && (((b)localObject2).a(localView, (Rect)localObject3)))
        {
          if (!localRect4.contains((Rect)localObject3)) {
            throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + ((Rect)localObject3).toShortString() + " | Bounds:" + localRect4.toShortString());
          }
        }
        else {
          ((Rect)localObject3).set(localRect4);
        }
        a(localRect4);
        if (!((Rect)localObject3).isEmpty())
        {
          i1 = e.getAbsoluteGravity(((e)localObject1).lZ, m);
          k = 0;
          i = k;
          if ((i1 & 0x30) == 48)
          {
            i2 = ((Rect)localObject3).top - ((e)localObject1).topMargin - ((e)localObject1).mb;
            i = k;
            if (i2 < localRect1.top)
            {
              g(localView, localRect1.top - i2);
              i = 1;
            }
          }
          k = i;
          if ((i1 & 0x50) == 80)
          {
            i2 = getHeight() - ((Rect)localObject3).bottom - ((e)localObject1).bottomMargin + ((e)localObject1).mb;
            k = i;
            if (i2 < localRect1.bottom)
            {
              g(localView, i2 - localRect1.bottom);
              k = 1;
            }
          }
          if (k == 0) {
            g(localView, 0);
          }
          k = 0;
          i = k;
          if ((i1 & 0x3) == 3)
          {
            i2 = ((Rect)localObject3).left - ((e)localObject1).leftMargin - ((e)localObject1).ma;
            i = k;
            if (i2 < localRect1.left)
            {
              f(localView, localRect1.left - i2);
              i = 1;
            }
          }
          if ((i1 & 0x5) != 5) {
            break label1220;
          }
          k = getWidth();
          i1 = ((Rect)localObject3).right;
          i2 = ((e)localObject1).rightMargin;
          k = ((e)localObject1).ma + (k - i1 - i2);
          if (k >= localRect1.right) {
            break label1220;
          }
          f(localView, k - localRect1.right);
          i = 1;
        }
      }
    }
    label1197:
    label1220:
    for (;;)
    {
      if (i == 0) {
        f(localView, 0);
      }
      a((Rect)localObject3);
      break label480;
      switch (paramInt)
      {
      }
      for (boolean bool = ((b)localObject3).a(this, (View)localObject1, localView); paramInt == 1; bool = true)
      {
        ((e)localObject2).mh = bool;
        break;
      }
      j += 1;
      break;
      a(localRect1);
      a(localRect2);
      a(localRect3);
      return;
    }
  }
  
  public final void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public final void a(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    int j = 0;
    int i = 0;
    int k = 0;
    int i2 = getChildCount();
    int m = 0;
    label126:
    label143:
    int n;
    if (m < i2)
    {
      View localView = getChildAt(m);
      if (localView.getVisibility() == 8) {
        break label238;
      }
      Object localObject = (e)localView.getLayoutParams();
      if (!((e)localObject).I(paramInt3)) {
        break label238;
      }
      localObject = ((e)localObject).lT;
      if (localObject == null) {
        break label238;
      }
      int[] arrayOfInt = this.lF;
      this.lF[1] = 0;
      arrayOfInt[0] = 0;
      ((b)localObject).a(this, localView, paramView, paramInt2, this.lF, paramInt3);
      if (paramInt1 > 0)
      {
        j = Math.max(j, this.lF[0]);
        if (paramInt2 <= 0) {
          break label199;
        }
        k = Math.max(i, this.lF[1]);
        n = 1;
        i = j;
        j = k;
      }
    }
    for (;;)
    {
      int i1 = m + 1;
      m = i;
      k = n;
      i = j;
      j = m;
      m = i1;
      break;
      j = Math.min(j, this.lF[0]);
      break label126;
      label199:
      k = Math.min(i, this.lF[1]);
      break label143;
      paramArrayOfInt[0] = j;
      paramArrayOfInt[1] = i;
      if (k != 0) {
        H(1);
      }
      return;
      label238:
      n = i;
      i = j;
      j = n;
      n = k;
    }
  }
  
  public final boolean a(View paramView, int paramInt1, int paramInt2)
  {
    Rect localRect = by();
    s.a(this, paramView, localRect);
    try
    {
      boolean bool = localRect.contains(paramInt1, paramInt2);
      return bool;
    }
    finally
    {
      a(localRect);
    }
  }
  
  public final boolean b(View paramView, int paramInt1, int paramInt2)
  {
    int j = getChildCount();
    int i = 0;
    boolean bool1 = false;
    if (i < j)
    {
      View localView = getChildAt(i);
      e locale;
      if (localView.getVisibility() != 8)
      {
        locale = (e)localView.getLayoutParams();
        b localb = locale.lT;
        if (localb != null)
        {
          boolean bool2 = localb.a(this, localView, paramView, paramInt1, paramInt2);
          bool1 |= bool2;
          locale.a(paramInt2, bool2);
        }
      }
      for (;;)
      {
        i += 1;
        break;
        locale.a(paramInt2, false);
      }
    }
    return bool1;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof e)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    paramView.getLayoutParams();
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    boolean bool2 = false;
    Drawable localDrawable = this.lO;
    boolean bool1 = bool2;
    if (localDrawable != null)
    {
      bool1 = bool2;
      if (localDrawable.isStateful()) {
        bool1 = localDrawable.setState(arrayOfInt) | false;
      }
    }
    if (bool1) {
      invalidate();
    }
  }
  
  public final void e(View paramView, int paramInt)
  {
    Object localObject1 = (e)paramView.getLayoutParams();
    if ((((e)localObject1).mc == null) && (((e)localObject1).lX != -1)) {}
    for (int i = 1; i != 0; i = 0) {
      throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }
    int j;
    if (((e)localObject1).mc != null)
    {
      localObject2 = ((e)localObject1).mc;
      paramView.getLayoutParams();
      localObject1 = by();
      localRect = by();
      try
      {
        s.a(this, (View)localObject2, (Rect)localObject1);
        localObject2 = (e)paramView.getLayoutParams();
        i = paramView.getMeasuredWidth();
        j = paramView.getMeasuredHeight();
        a(paramInt, (Rect)localObject1, localRect, (e)localObject2, i, j);
        a((e)localObject2, localRect, i, j);
        paramView.layout(localRect.left, localRect.top, localRect.right, localRect.bottom);
        return;
      }
      finally
      {
        a((Rect)localObject1);
        a(localRect);
      }
    }
    if (((e)localObject1).lW >= 0)
    {
      j = ((e)localObject1).lW;
      localObject1 = (e)paramView.getLayoutParams();
      int i2 = e.getAbsoluteGravity(G(((e)localObject1).gravity), paramInt);
      int i1 = getWidth();
      int n = getHeight();
      int k = paramView.getMeasuredWidth();
      int m = paramView.getMeasuredHeight();
      i = j;
      if (paramInt == 1) {
        i = i1 - j;
      }
      paramInt = E(i) - k;
      switch (i2 & 0x7)
      {
      default: 
        switch (i2 & 0x70)
        {
        default: 
          i = 0;
        }
        break;
      }
      for (;;)
      {
        paramInt = Math.max(getPaddingLeft() + ((e)localObject1).leftMargin, Math.min(paramInt, i1 - getPaddingRight() - k - ((e)localObject1).rightMargin));
        i = Math.max(getPaddingTop() + ((e)localObject1).topMargin, Math.min(i, n - getPaddingBottom() - m - ((e)localObject1).bottomMargin));
        paramView.layout(paramInt, i, paramInt + k, i + m);
        return;
        paramInt += k;
        break;
        paramInt += k / 2;
        break;
        i = m + 0;
        continue;
        i = m / 2 + 0;
      }
    }
    localObject1 = (e)paramView.getLayoutParams();
    Rect localRect = by();
    localRect.set(getPaddingLeft() + ((e)localObject1).leftMargin, getPaddingTop() + ((e)localObject1).topMargin, getWidth() - getPaddingRight() - ((e)localObject1).rightMargin, getHeight() - getPaddingBottom() - ((e)localObject1).bottomMargin);
    if ((this.iK != null) && (r.X(this)) && (!r.X(paramView)))
    {
      localRect.left += this.iK.getSystemWindowInsetLeft();
      localRect.top += this.iK.getSystemWindowInsetTop();
      localRect.right -= this.iK.getSystemWindowInsetRight();
      localRect.bottom -= this.iK.getSystemWindowInsetBottom();
    }
    Object localObject2 = by();
    e.apply(F(((e)localObject1).gravity), paramView.getMeasuredWidth(), paramView.getMeasuredHeight(), localRect, (Rect)localObject2, paramInt);
    paramView.layout(((Rect)localObject2).left, ((Rect)localObject2).top, ((Rect)localObject2).right, ((Rect)localObject2).bottom);
    a(localRect);
    a((Rect)localObject2);
  }
  
  public final void g(int paramInt1, int paramInt2)
  {
    int k = getChildCount();
    int j = 0;
    int i = 0;
    if (j < k)
    {
      View localView = getChildAt(j);
      if (localView.getVisibility() == 8) {
        break label97;
      }
      Object localObject = (e)localView.getLayoutParams();
      if (!((e)localObject).I(paramInt2)) {
        break label97;
      }
      localObject = ((e)localObject).lT;
      if (localObject == null) {
        break label97;
      }
      ((b)localObject).b(this, localView, paramInt1);
      i = 1;
    }
    label97:
    for (;;)
    {
      j += 1;
      break;
      if (i != 0) {
        H(1);
      }
      return;
    }
  }
  
  final List<View> getDependencySortedChildren()
  {
    bz();
    return Collections.unmodifiableList(this.lB);
  }
  
  public final z getLastWindowInsets()
  {
    return this.iK;
  }
  
  public int getNestedScrollAxes()
  {
    return this.lR.FM;
  }
  
  public Drawable getStatusBarBackground()
  {
    return this.lO;
  }
  
  protected int getSuggestedMinimumHeight()
  {
    return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
  }
  
  protected int getSuggestedMinimumWidth()
  {
    return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
  }
  
  public final void h(View paramView, int paramInt)
  {
    this.lR.FM = paramInt;
    this.lK = paramView;
    int i = getChildCount();
    paramInt = 0;
    while (paramInt < i)
    {
      getChildAt(paramInt).getLayoutParams();
      paramInt += 1;
    }
  }
  
  public final void i(View paramView, int paramInt)
  {
    this.lR.FM = 0;
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = getChildAt(i);
      e locale = (e)localView.getLayoutParams();
      if (locale.I(paramInt))
      {
        b localb = locale.lT;
        if (localb != null) {
          localb.a(this, localView, paramView, paramInt);
        }
        locale.a(paramInt, false);
        locale.mh = false;
      }
      i += 1;
    }
    this.lK = null;
  }
  
  public final List<View> n(View paramView)
  {
    h localh = this.lC;
    Object localObject1 = null;
    int j = localh.Jl.size();
    int i = 0;
    Object localObject2;
    if (i < j)
    {
      ArrayList localArrayList = (ArrayList)localh.Jl.valueAt(i);
      localObject2 = localObject1;
      if (localArrayList != null)
      {
        localObject2 = localObject1;
        if (localArrayList.contains(paramView))
        {
          if (localObject1 != null) {
            break label136;
          }
          localObject1 = new ArrayList();
        }
      }
    }
    label136:
    for (;;)
    {
      ((ArrayList)localObject1).add(localh.Jl.keyAt(i));
      localObject2 = localObject1;
      i += 1;
      localObject1 = localObject2;
      break;
      this.lE.clear();
      if (localObject1 != null) {
        this.lE.addAll((Collection)localObject1);
      }
      return this.lE;
    }
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    h(false);
    if (this.lM)
    {
      if (this.lL == null) {
        this.lL = new f();
      }
      getViewTreeObserver().addOnPreDrawListener(this.lL);
    }
    if ((this.iK == null) && (r.X(this))) {
      r.W(this);
    }
    this.lH = true;
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    h(false);
    if ((this.lM) && (this.lL != null)) {
      getViewTreeObserver().removeOnPreDrawListener(this.lL);
    }
    if (this.lK != null) {
      onStopNestedScroll(this.lK);
    }
    this.lH = false;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.lN) && (this.lO != null)) {
      if (this.iK == null) {
        break label61;
      }
    }
    label61:
    for (int i = this.iK.getSystemWindowInsetTop();; i = 0)
    {
      if (i > 0)
      {
        this.lO.setBounds(0, 0, getWidth(), i);
        this.lO.draw(paramCanvas);
      }
      return;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if (i == 0) {
      h(true);
    }
    boolean bool = a(paramMotionEvent, 0);
    if ((i == 1) || (i == 3)) {
      h(true);
    }
    return bool;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = r.K(this);
    paramInt3 = this.lB.size();
    paramInt1 = 0;
    while (paramInt1 < paramInt3)
    {
      View localView = (View)this.lB.get(paramInt1);
      if (localView.getVisibility() != 8)
      {
        b localb = ((e)localView.getLayoutParams()).lT;
        if ((localb == null) || (!localb.a(this, localView, paramInt2))) {
          e(localView, paramInt2);
        }
      }
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    bz();
    int k = getChildCount();
    int i = 0;
    View localView;
    Object localObject1;
    int m;
    int j;
    label44:
    Object localObject2;
    if (i < k)
    {
      localView = getChildAt(i);
      localObject1 = this.lC;
      m = ((h)localObject1).Jl.size();
      j = 0;
      if (j < m)
      {
        localObject2 = (ArrayList)((h)localObject1).Jl.valueAt(j);
        if ((localObject2 != null) && (((ArrayList)localObject2).contains(localView)))
        {
          j = 1;
          label84:
          if (j == 0) {
            break label618;
          }
        }
      }
    }
    for (int i17 = 1;; i17 = 0)
    {
      label148:
      int i5;
      int n;
      label187:
      int i1;
      label242:
      int i2;
      label256:
      int i3;
      int i4;
      int i15;
      if (i17 != this.lM)
      {
        if (i17 != 0)
        {
          if (this.lH)
          {
            if (this.lL == null) {
              this.lL = new f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.lL);
          }
          this.lM = true;
        }
      }
      else
      {
        i5 = getPaddingLeft();
        int i6 = getPaddingTop();
        int i7 = getPaddingRight();
        int i8 = getPaddingBottom();
        int i9 = r.K(this);
        if (i9 != 1) {
          break label658;
        }
        n = 1;
        int i10 = View.MeasureSpec.getMode(paramInt1);
        int i11 = View.MeasureSpec.getSize(paramInt1);
        int i12 = View.MeasureSpec.getMode(paramInt2);
        int i13 = View.MeasureSpec.getSize(paramInt2);
        k = getSuggestedMinimumWidth();
        j = getSuggestedMinimumHeight();
        i = 0;
        if ((this.iK == null) || (!r.X(this))) {
          break label664;
        }
        i1 = 1;
        int i14 = this.lB.size();
        i2 = 0;
        if (i2 >= i14) {
          break label714;
        }
        localView = (View)this.lB.get(i2);
        if (localView.getVisibility() == 8) {
          break label749;
        }
        localObject1 = (e)localView.getLayoutParams();
        i3 = 0;
        m = i3;
        if (((e)localObject1).lW >= 0)
        {
          m = i3;
          if (i10 != 0)
          {
            i4 = E(((e)localObject1).lW);
            i15 = e.getAbsoluteGravity(G(((e)localObject1).gravity), i9) & 0x7;
            if (((i15 != 3) || (n != 0)) && ((i15 != 5) || (n == 0))) {
              break label670;
            }
            m = Math.max(0, i11 - i7 - i4);
          }
        }
        label388:
        if ((i1 == 0) || (r.X(localView))) {
          break label740;
        }
        i3 = this.iK.getSystemWindowInsetLeft();
        int i16 = this.iK.getSystemWindowInsetRight();
        i4 = this.iK.getSystemWindowInsetTop();
        i15 = this.iK.getSystemWindowInsetBottom();
        i3 = View.MeasureSpec.makeMeasureSpec(i11 - (i3 + i16), i10);
        i4 = View.MeasureSpec.makeMeasureSpec(i13 - (i4 + i15), i12);
        label467:
        localObject2 = ((e)localObject1).lT;
        if ((localObject2 == null) || (!((b)localObject2).a(this, localView, i3, m, i4, 0))) {
          a(localView, i3, m, i4, 0);
        }
        m = Math.max(k, localView.getMeasuredWidth() + (i5 + i7) + ((e)localObject1).leftMargin + ((e)localObject1).rightMargin);
        j = Math.max(j, localView.getMeasuredHeight() + (i6 + i8) + ((e)localObject1).topMargin + ((e)localObject1).bottomMargin);
        k = View.combineMeasuredStates(i, localView.getMeasuredState());
      }
      for (i = m;; i = m)
      {
        i2 += 1;
        m = i;
        i = k;
        k = m;
        break label256;
        j += 1;
        break label44;
        j = 0;
        break label84;
        label618:
        i += 1;
        break;
        if ((this.lH) && (this.lL != null)) {
          getViewTreeObserver().removeOnPreDrawListener(this.lL);
        }
        this.lM = false;
        break label148;
        label658:
        n = 0;
        break label187;
        label664:
        i1 = 0;
        break label242;
        label670:
        if ((i15 != 5) || (n != 0))
        {
          m = i3;
          if (i15 != 3) {
            break label388;
          }
          m = i3;
          if (n == 0) {
            break label388;
          }
        }
        m = Math.max(0, i4 - i5);
        break label388;
        label714:
        setMeasuredDimension(View.resolveSizeAndState(k, paramInt1, 0xFF000000 & i), View.resolveSizeAndState(j, paramInt2, i << 16));
        return;
        label740:
        i4 = paramInt2;
        i3 = paramInt1;
        break label467;
        label749:
        m = k;
        k = i;
      }
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      paramView = getChildAt(i);
      if (paramView.getVisibility() != 8) {
        paramView.getLayoutParams();
      }
      i += 1;
    }
    return false;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    int j = getChildCount();
    int i = 0;
    boolean bool = false;
    if (i < j)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 8) {
        break label96;
      }
      Object localObject = (e)localView.getLayoutParams();
      if (!((e)localObject).I(0)) {
        break label96;
      }
      localObject = ((e)localObject).lT;
      if (localObject == null) {
        break label96;
      }
      bool = ((b)localObject).a(this, localView, paramView, paramFloat1, paramFloat2) | bool;
    }
    label96:
    for (;;)
    {
      i += 1;
      break;
      return bool;
    }
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    a(paramView, paramInt1, paramInt2, paramArrayOfInt, 0);
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    g(paramInt4, 0);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    h(paramView2, paramInt);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof g)) {
      super.onRestoreInstanceState(paramParcelable);
    }
    for (;;)
    {
      return;
      paramParcelable = (g)paramParcelable;
      super.onRestoreInstanceState(paramParcelable.EV);
      paramParcelable = paramParcelable.mk;
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        View localView = getChildAt(i);
        int k = localView.getId();
        b localb = m(localView).lT;
        if ((k != -1) && (localb != null))
        {
          Parcelable localParcelable = (Parcelable)paramParcelable.get(k);
          if (localParcelable != null) {
            localb.a(this, localView, localParcelable);
          }
        }
        i += 1;
      }
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    g localg = new g(super.onSaveInstanceState());
    SparseArray localSparseArray = new SparseArray();
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      Object localObject = getChildAt(i);
      int k = ((View)localObject).getId();
      b localb = ((e)((View)localObject).getLayoutParams()).lT;
      if ((k != -1) && (localb != null))
      {
        localObject = localb.b(this, (View)localObject);
        if (localObject != null) {
          localSparseArray.append(k, localObject);
        }
      }
      i += 1;
    }
    localg.mk = localSparseArray;
    return localg;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    return b(paramView1, paramInt, 0);
  }
  
  public void onStopNestedScroll(View paramView)
  {
    i(paramView, 0);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    boolean bool2;
    if (this.lJ == null)
    {
      bool2 = a(paramMotionEvent, 1);
      if (!bool2) {}
    }
    for (;;)
    {
      b localb = ((e)this.lJ.getLayoutParams()).lT;
      boolean bool1;
      if (localb != null) {
        bool1 = localb.b(this, this.lJ, paramMotionEvent);
      }
      for (;;)
      {
        if (this.lJ == null)
        {
          bool1 |= super.onTouchEvent(paramMotionEvent);
          paramMotionEvent = null;
        }
        for (;;)
        {
          if (paramMotionEvent != null) {
            paramMotionEvent.recycle();
          }
          if ((i == 1) || (i == 3)) {
            h(false);
          }
          return bool1;
          if (bool2)
          {
            long l = SystemClock.uptimeMillis();
            paramMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
            super.onTouchEvent(paramMotionEvent);
          }
          else
          {
            paramMotionEvent = null;
          }
        }
        bool1 = false;
        continue;
        bool1 = false;
      }
      bool2 = false;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    b localb = ((e)paramView.getLayoutParams()).lT;
    if ((localb != null) && (localb.a(this, paramView, paramRect, paramBoolean))) {
      return true;
    }
    return super.requestChildRectangleOnScreen(paramView, paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    if ((paramBoolean) && (!this.lG))
    {
      h(false);
      this.lG = true;
    }
  }
  
  public void setFitsSystemWindows(boolean paramBoolean)
  {
    super.setFitsSystemWindows(paramBoolean);
    bA();
  }
  
  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener)
  {
    this.lP = paramOnHierarchyChangeListener;
  }
  
  public void setStatusBarBackground(Drawable paramDrawable)
  {
    Drawable localDrawable = null;
    if (this.lO != paramDrawable)
    {
      if (this.lO != null) {
        this.lO.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable = paramDrawable.mutate();
      }
      this.lO = localDrawable;
      if (this.lO != null)
      {
        if (this.lO.isStateful()) {
          this.lO.setState(getDrawableState());
        }
        android.support.v4.a.a.a.b(this.lO, r.K(this));
        paramDrawable = this.lO;
        if (getVisibility() != 0) {
          break label114;
        }
      }
    }
    label114:
    for (boolean bool = true;; bool = false)
    {
      paramDrawable.setVisible(bool, false);
      this.lO.setCallback(this);
      r.I(this);
      return;
    }
  }
  
  public void setStatusBarBackgroundColor(int paramInt)
  {
    setStatusBarBackground(new ColorDrawable(paramInt));
  }
  
  public void setStatusBarBackgroundResource(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = android.support.v4.content.a.a(getContext(), paramInt);; localDrawable = null)
    {
      setStatusBarBackground(localDrawable);
      return;
    }
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      if ((this.lO != null) && (this.lO.isVisible() != bool)) {
        this.lO.setVisible(bool, false);
      }
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.lO);
  }
  
  public static abstract interface a
  {
    public abstract CoordinatorLayout.b bB();
  }
  
  public static abstract class b<V extends View>
  {
    public b() {}
    
    public b(Context paramContext, AttributeSet paramAttributeSet) {}
    
    public void a(CoordinatorLayout.e parame) {}
    
    public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, Parcelable paramParcelable) {}
    
    public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt)
    {
      if (paramInt == 0) {
        a(paramV, paramView);
      }
    }
    
    public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
    {
      if (paramInt2 == 0) {
        a(paramV, paramView, paramInt1, paramArrayOfInt);
      }
    }
    
    @Deprecated
    public void a(V paramV, View paramView) {}
    
    @Deprecated
    public void a(V paramV, View paramView, int paramInt, int[] paramArrayOfInt) {}
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
    {
      return false;
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return false;
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, Rect paramRect, boolean paramBoolean)
    {
      return false;
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
    {
      return false;
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, float paramFloat1, float paramFloat2)
    {
      return false;
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2)
    {
      if (paramInt2 == 0) {
        return v(paramInt1);
      }
      return false;
    }
    
    public boolean a(V paramV, Rect paramRect)
    {
      return false;
    }
    
    public Parcelable b(CoordinatorLayout paramCoordinatorLayout, V paramV)
    {
      return View.BaseSavedState.EMPTY_STATE;
    }
    
    public void b(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt) {}
    
    public boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public boolean d(View paramView)
    {
      return false;
    }
    
    @Deprecated
    public boolean v(int paramInt)
    {
      return false;
    }
  }
  
  @Deprecated
  @Retention(RetentionPolicy.RUNTIME)
  public static @interface c
  {
    Class<? extends CoordinatorLayout.b> value();
  }
  
  private final class d
    implements ViewGroup.OnHierarchyChangeListener
  {
    d() {}
    
    public final void onChildViewAdded(View paramView1, View paramView2)
    {
      if (CoordinatorLayout.this.lP != null) {
        CoordinatorLayout.this.lP.onChildViewAdded(paramView1, paramView2);
      }
    }
    
    public final void onChildViewRemoved(View paramView1, View paramView2)
    {
      CoordinatorLayout.this.H(2);
      if (CoordinatorLayout.this.lP != null) {
        CoordinatorLayout.this.lP.onChildViewRemoved(paramView1, paramView2);
      }
    }
  }
  
  public static final class e
    extends ViewGroup.MarginLayoutParams
  {
    public int gravity = 0;
    CoordinatorLayout.b lT;
    boolean lU = false;
    public int lV = 0;
    public int lW = -1;
    int lX = -1;
    public int lY = 0;
    public int lZ = 0;
    int ma;
    int mb;
    View mc;
    View md;
    boolean me;
    private boolean mf;
    private boolean mg;
    boolean mh;
    final Rect mi = new Rect();
    Object mj;
    
    public e()
    {
      super(-2);
    }
    
    e(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, a.c.CoordinatorLayout_Layout);
      this.gravity = localTypedArray.getInteger(a.c.CoordinatorLayout_Layout_android_layout_gravity, 0);
      this.lX = localTypedArray.getResourceId(a.c.CoordinatorLayout_Layout_layout_anchor, -1);
      this.lV = localTypedArray.getInteger(a.c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
      this.lW = localTypedArray.getInteger(a.c.CoordinatorLayout_Layout_layout_keyline, -1);
      this.lY = localTypedArray.getInt(a.c.CoordinatorLayout_Layout_layout_insetEdge, 0);
      this.lZ = localTypedArray.getInt(a.c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
      this.lU = localTypedArray.hasValue(a.c.CoordinatorLayout_Layout_layout_behavior);
      if (this.lU) {
        this.lT = CoordinatorLayout.a(paramContext, paramAttributeSet, localTypedArray.getString(a.c.CoordinatorLayout_Layout_layout_behavior));
      }
      localTypedArray.recycle();
      if (this.lT != null) {
        this.lT.a(this);
      }
    }
    
    public e(e parame)
    {
      super();
    }
    
    public e(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public e(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    final boolean I(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return false;
      case 0: 
        return this.mf;
      }
      return this.mg;
    }
    
    final void a(int paramInt, boolean paramBoolean)
    {
      switch (paramInt)
      {
      default: 
        return;
      case 0: 
        this.mf = paramBoolean;
        return;
      }
      this.mg = paramBoolean;
    }
    
    public final void a(CoordinatorLayout.b paramb)
    {
      if (this.lT != paramb)
      {
        this.lT = paramb;
        this.mj = null;
        this.lU = true;
        if (paramb != null) {
          paramb.a(this);
        }
      }
    }
  }
  
  final class f
    implements ViewTreeObserver.OnPreDrawListener
  {
    f() {}
    
    public final boolean onPreDraw()
    {
      CoordinatorLayout.this.H(0);
      return true;
    }
  }
  
  protected static final class g
    extends android.support.v4.view.a
  {
    public static final Parcelable.Creator<g> CREATOR = new Parcelable.ClassLoaderCreator() {};
    SparseArray<Parcelable> mk;
    
    public g(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      int j = paramParcel.readInt();
      int[] arrayOfInt = new int[j];
      paramParcel.readIntArray(arrayOfInt);
      paramParcel = paramParcel.readParcelableArray(paramClassLoader);
      this.mk = new SparseArray(j);
      int i = 0;
      while (i < j)
      {
        this.mk.append(arrayOfInt[i], paramParcel[i]);
        i += 1;
      }
    }
    
    public g(Parcelable paramParcelable)
    {
      super();
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      int j = 0;
      super.writeToParcel(paramParcel, paramInt);
      if (this.mk != null) {}
      int[] arrayOfInt;
      Parcelable[] arrayOfParcelable;
      for (int i = this.mk.size();; i = 0)
      {
        paramParcel.writeInt(i);
        arrayOfInt = new int[i];
        arrayOfParcelable = new Parcelable[i];
        while (j < i)
        {
          arrayOfInt[j] = this.mk.keyAt(j);
          arrayOfParcelable[j] = ((Parcelable)this.mk.valueAt(j));
          j += 1;
        }
      }
      paramParcel.writeIntArray(arrayOfInt);
      paramParcel.writeParcelableArray(arrayOfParcelable, paramInt);
    }
  }
  
  static final class h
    implements Comparator<View>
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/CoordinatorLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */