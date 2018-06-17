package android.support.v4.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.PointerIcon;
import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class r
{
  static final j FQ = new j();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 26)
    {
      FQ = new i();
      return;
    }
    if (Build.VERSION.SDK_INT >= 24)
    {
      FQ = new h();
      return;
    }
    if (Build.VERSION.SDK_INT >= 23)
    {
      FQ = new g();
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      FQ = new f();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      FQ = new e();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      FQ = new d();
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      FQ = new c();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      FQ = new b();
      return;
    }
    if (Build.VERSION.SDK_INT >= 15)
    {
      FQ = new a();
      return;
    }
  }
  
  public static boolean G(View paramView)
  {
    return j.G(paramView);
  }
  
  public static boolean H(View paramView)
  {
    return FQ.H(paramView);
  }
  
  public static void I(View paramView)
  {
    FQ.I(paramView);
  }
  
  public static int J(View paramView)
  {
    return FQ.J(paramView);
  }
  
  public static int K(View paramView)
  {
    return FQ.K(paramView);
  }
  
  public static void L(View paramView)
  {
    FQ.L(paramView);
  }
  
  public static int M(View paramView)
  {
    return FQ.M(paramView);
  }
  
  public static int N(View paramView)
  {
    return FQ.N(paramView);
  }
  
  @Deprecated
  public static float O(View paramView)
  {
    return paramView.getTranslationX();
  }
  
  @Deprecated
  public static float P(View paramView)
  {
    return paramView.getTranslationY();
  }
  
  public static int Q(View paramView)
  {
    return FQ.Q(paramView);
  }
  
  public static int R(View paramView)
  {
    return FQ.R(paramView);
  }
  
  public static v S(View paramView)
  {
    j localj = FQ;
    if (localj.Ga == null) {
      localj.Ga = new WeakHashMap();
    }
    v localv2 = (v)localj.Ga.get(paramView);
    v localv1 = localv2;
    if (localv2 == null)
    {
      localv1 = new v(paramView);
      localj.Ga.put(paramView, localv1);
    }
    return localv1;
  }
  
  public static float T(View paramView)
  {
    return FQ.T(paramView);
  }
  
  public static String U(View paramView)
  {
    return FQ.U(paramView);
  }
  
  public static int V(View paramView)
  {
    return FQ.V(paramView);
  }
  
  public static void W(View paramView)
  {
    FQ.W(paramView);
  }
  
  public static boolean X(View paramView)
  {
    return FQ.X(paramView);
  }
  
  public static boolean Y(View paramView)
  {
    return FQ.Y(paramView);
  }
  
  public static boolean Z(View paramView)
  {
    return FQ.Z(paramView);
  }
  
  public static z a(View paramView, z paramz)
  {
    return FQ.a(paramView, paramz);
  }
  
  public static void a(View paramView, ColorStateList paramColorStateList)
  {
    FQ.a(paramView, paramColorStateList);
  }
  
  public static void a(View paramView, PorterDuff.Mode paramMode)
  {
    FQ.a(paramView, paramMode);
  }
  
  public static void a(View paramView, b paramb)
  {
    j.a(paramView, paramb);
  }
  
  public static void a(View paramView, n paramn)
  {
    FQ.a(paramView, paramn);
  }
  
  public static void a(View paramView, p paramp)
  {
    FQ.a(paramView, paramp);
  }
  
  public static void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    FQ.a(paramView, paramRunnable, paramLong);
  }
  
  public static void a(View paramView, String paramString)
  {
    FQ.a(paramView, paramString);
  }
  
  public static ColorStateList aa(View paramView)
  {
    return FQ.aa(paramView);
  }
  
  public static PorterDuff.Mode ab(View paramView)
  {
    return FQ.ab(paramView);
  }
  
  public static boolean ac(View paramView)
  {
    return FQ.ac(paramView);
  }
  
  public static void ad(View paramView)
  {
    FQ.ad(paramView);
  }
  
  public static boolean ae(View paramView)
  {
    return FQ.ae(paramView);
  }
  
  public static float af(View paramView)
  {
    return FQ.af(paramView);
  }
  
  public static Rect ag(View paramView)
  {
    return FQ.ag(paramView);
  }
  
  public static boolean ah(View paramView)
  {
    return FQ.ah(paramView);
  }
  
  public static boolean ai(View paramView)
  {
    return FQ.ai(paramView);
  }
  
  public static Display aj(View paramView)
  {
    return FQ.aj(paramView);
  }
  
  public static z b(View paramView, z paramz)
  {
    return FQ.b(paramView, paramz);
  }
  
  public static void b(View paramView, Runnable paramRunnable)
  {
    FQ.b(paramView, paramRunnable);
  }
  
  public static void c(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    FQ.c(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void c(View paramView, Rect paramRect)
  {
    FQ.c(paramView, paramRect);
  }
  
  public static void d(View paramView, float paramFloat)
  {
    FQ.d(paramView, paramFloat);
  }
  
  public static void d(View paramView, boolean paramBoolean)
  {
    FQ.d(paramView, paramBoolean);
  }
  
  @Deprecated
  public static void e(View paramView, boolean paramBoolean)
  {
    paramView.setFitsSystemWindows(paramBoolean);
  }
  
  public static void l(View paramView, int paramInt)
  {
    FQ.l(paramView, paramInt);
  }
  
  public static void m(View paramView, int paramInt)
  {
    FQ.m(paramView, paramInt);
  }
  
  public static void n(View paramView, int paramInt)
  {
    FQ.n(paramView, paramInt);
  }
  
  public static void o(View paramView, int paramInt)
  {
    FQ.o(paramView, paramInt);
  }
  
  public static void setBackground(View paramView, Drawable paramDrawable)
  {
    FQ.setBackground(paramView, paramDrawable);
  }
  
  static class a
    extends r.j
  {
    public final boolean ai(View paramView)
    {
      return paramView.hasOnClickListeners();
    }
  }
  
  static class b
    extends r.a
  {
    public final boolean H(View paramView)
    {
      return paramView.hasTransientState();
    }
    
    public final void I(View paramView)
    {
      paramView.postInvalidateOnAnimation();
    }
    
    public final int J(View paramView)
    {
      return paramView.getImportantForAccessibility();
    }
    
    public final int Q(View paramView)
    {
      return paramView.getMinimumWidth();
    }
    
    public final int R(View paramView)
    {
      return paramView.getMinimumHeight();
    }
    
    public void W(View paramView)
    {
      paramView.requestFitSystemWindows();
    }
    
    public final boolean X(View paramView)
    {
      return paramView.getFitsSystemWindows();
    }
    
    public final boolean Y(View paramView)
    {
      return paramView.hasOverlappingRendering();
    }
    
    public final void a(View paramView, Runnable paramRunnable, long paramLong)
    {
      paramView.postOnAnimationDelayed(paramRunnable, paramLong);
    }
    
    public final void b(View paramView, Runnable paramRunnable)
    {
      paramView.postOnAnimation(paramRunnable);
    }
    
    public final void d(View paramView, boolean paramBoolean)
    {
      paramView.setHasTransientState(paramBoolean);
    }
    
    public void l(View paramView, int paramInt)
    {
      int i = paramInt;
      if (paramInt == 4) {
        i = 2;
      }
      paramView.setImportantForAccessibility(i);
    }
    
    public final void setBackground(View paramView, Drawable paramDrawable)
    {
      paramView.setBackground(paramDrawable);
    }
  }
  
  static class c
    extends r.b
  {
    public final int K(View paramView)
    {
      return paramView.getLayoutDirection();
    }
    
    public final int M(View paramView)
    {
      return paramView.getPaddingStart();
    }
    
    public final int N(View paramView)
    {
      return paramView.getPaddingEnd();
    }
    
    public final int V(View paramView)
    {
      return paramView.getWindowSystemUiVisibility();
    }
    
    public final boolean Z(View paramView)
    {
      return paramView.isPaddingRelative();
    }
    
    public final Display aj(View paramView)
    {
      return paramView.getDisplay();
    }
    
    public final void c(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramView.setPaddingRelative(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  static class d
    extends r.c
  {
    public final Rect ag(View paramView)
    {
      return paramView.getClipBounds();
    }
    
    public final void c(View paramView, Rect paramRect)
    {
      paramView.setClipBounds(paramRect);
    }
  }
  
  static class e
    extends r.d
  {
    public final void L(View paramView)
    {
      paramView.setAccessibilityLiveRegion(1);
    }
    
    public final boolean ae(View paramView)
    {
      return paramView.isLaidOut();
    }
    
    public final boolean ah(View paramView)
    {
      return paramView.isAttachedToWindow();
    }
    
    public final void l(View paramView, int paramInt)
    {
      paramView.setImportantForAccessibility(paramInt);
    }
  }
  
  static class f
    extends r.e
  {
    private static ThreadLocal<Rect> FR;
    
    private static Rect dM()
    {
      if (FR == null) {
        FR = new ThreadLocal();
      }
      Rect localRect2 = (Rect)FR.get();
      Rect localRect1 = localRect2;
      if (localRect2 == null)
      {
        localRect1 = new Rect();
        FR.set(localRect1);
      }
      localRect1.setEmpty();
      return localRect1;
    }
    
    public final float T(View paramView)
    {
      return paramView.getElevation();
    }
    
    public final String U(View paramView)
    {
      return paramView.getTransitionName();
    }
    
    public final void W(View paramView)
    {
      paramView.requestApplyInsets();
    }
    
    public final z a(View paramView, z paramz)
    {
      paramz = (WindowInsets)z.a(paramz);
      WindowInsets localWindowInsets = paramView.onApplyWindowInsets(paramz);
      paramView = paramz;
      if (localWindowInsets != paramz) {
        paramView = new WindowInsets(localWindowInsets);
      }
      return z.F(paramView);
    }
    
    public final void a(View paramView, ColorStateList paramColorStateList)
    {
      paramView.setBackgroundTintList(paramColorStateList);
      if (Build.VERSION.SDK_INT == 21)
      {
        paramColorStateList = paramView.getBackground();
        if ((paramView.getBackgroundTintList() == null) && (paramView.getBackgroundTintMode() == null)) {
          break label64;
        }
      }
      label64:
      for (int i = 1;; i = 0)
      {
        if ((paramColorStateList != null) && (i != 0))
        {
          if (paramColorStateList.isStateful()) {
            paramColorStateList.setState(paramView.getDrawableState());
          }
          paramView.setBackground(paramColorStateList);
        }
        return;
      }
    }
    
    public final void a(View paramView, PorterDuff.Mode paramMode)
    {
      paramView.setBackgroundTintMode(paramMode);
      if (Build.VERSION.SDK_INT == 21)
      {
        paramMode = paramView.getBackground();
        if ((paramView.getBackgroundTintList() == null) && (paramView.getBackgroundTintMode() == null)) {
          break label64;
        }
      }
      label64:
      for (int i = 1;; i = 0)
      {
        if ((paramMode != null) && (i != 0))
        {
          if (paramMode.isStateful()) {
            paramMode.setState(paramView.getDrawableState());
          }
          paramView.setBackground(paramMode);
        }
        return;
      }
    }
    
    public final void a(View paramView, final n paramn)
    {
      if (paramn == null)
      {
        paramView.setOnApplyWindowInsetsListener(null);
        return;
      }
      paramView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener()
      {
        public final WindowInsets onApplyWindowInsets(View paramAnonymousView, WindowInsets paramAnonymousWindowInsets)
        {
          paramAnonymousWindowInsets = z.F(paramAnonymousWindowInsets);
          return (WindowInsets)z.a(paramn.a(paramAnonymousView, paramAnonymousWindowInsets));
        }
      });
    }
    
    public final void a(View paramView, String paramString)
    {
      paramView.setTransitionName(paramString);
    }
    
    public final ColorStateList aa(View paramView)
    {
      return paramView.getBackgroundTintList();
    }
    
    public final PorterDuff.Mode ab(View paramView)
    {
      return paramView.getBackgroundTintMode();
    }
    
    public final boolean ac(View paramView)
    {
      return paramView.isNestedScrollingEnabled();
    }
    
    public final void ad(View paramView)
    {
      paramView.stopNestedScroll();
    }
    
    public final float af(View paramView)
    {
      return paramView.getZ();
    }
    
    public final float ak(View paramView)
    {
      return paramView.getTranslationZ();
    }
    
    public final z b(View paramView, z paramz)
    {
      paramz = (WindowInsets)z.a(paramz);
      WindowInsets localWindowInsets = paramView.dispatchApplyWindowInsets(paramz);
      paramView = paramz;
      if (localWindowInsets != paramz) {
        paramView = new WindowInsets(localWindowInsets);
      }
      return z.F(paramView);
    }
    
    public final void d(View paramView, float paramFloat)
    {
      paramView.setElevation(paramFloat);
    }
    
    public void m(View paramView, int paramInt)
    {
      Rect localRect = dM();
      ViewParent localViewParent = paramView.getParent();
      int i;
      if ((localViewParent instanceof View))
      {
        View localView = (View)localViewParent;
        localRect.set(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom());
        if (!localRect.intersects(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom())) {
          i = 1;
        }
      }
      for (;;)
      {
        super.m(paramView, paramInt);
        if ((i != 0) && (localRect.intersect(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom()))) {
          ((View)localViewParent).invalidate(localRect);
        }
        return;
        i = 0;
        continue;
        i = 0;
      }
    }
    
    public void n(View paramView, int paramInt)
    {
      Rect localRect = dM();
      ViewParent localViewParent = paramView.getParent();
      int i;
      if ((localViewParent instanceof View))
      {
        View localView = (View)localViewParent;
        localRect.set(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom());
        if (!localRect.intersects(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom())) {
          i = 1;
        }
      }
      for (;;)
      {
        super.n(paramView, paramInt);
        if ((i != 0) && (localRect.intersect(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom()))) {
          ((View)localViewParent).invalidate(localRect);
        }
        return;
        i = 0;
        continue;
        i = 0;
      }
    }
  }
  
  static class g
    extends r.f
  {
    public final void m(View paramView, int paramInt)
    {
      paramView.offsetTopAndBottom(paramInt);
    }
    
    public final void n(View paramView, int paramInt)
    {
      paramView.offsetLeftAndRight(paramInt);
    }
    
    public final void o(View paramView, int paramInt)
    {
      paramView.setScrollIndicators(paramInt, 3);
    }
  }
  
  static class h
    extends r.g
  {
    public final void a(View paramView, p paramp)
    {
      if (paramp != null) {}
      for (paramp = paramp.FP;; paramp = null)
      {
        paramView.setPointerIcon((PointerIcon)paramp);
        return;
      }
    }
  }
  
  static final class i
    extends r.h
  {}
  
  static class j
  {
    private static Field FU;
    private static boolean FV;
    private static Field FW;
    private static boolean FX;
    private static WeakHashMap<View, String> FY;
    private static final AtomicInteger FZ = new AtomicInteger(1);
    static Field Gb;
    static boolean Gc = false;
    WeakHashMap<View, v> Ga = null;
    
    public static boolean G(View paramView)
    {
      if (Gc) {}
      for (;;)
      {
        return false;
        if (Gb == null) {}
        try
        {
          Field localField = View.class.getDeclaredField("mAccessibilityDelegate");
          Gb = localField;
          localField.setAccessible(true);
        }
        catch (Throwable paramView)
        {
          try
          {
            paramView = Gb.get(paramView);
            if (paramView == null) {
              continue;
            }
            return true;
          }
          catch (Throwable paramView)
          {
            Gc = true;
          }
          paramView = paramView;
          Gc = true;
          return false;
        }
      }
      return false;
    }
    
    public static void a(View paramView, b paramb)
    {
      if (paramb == null) {}
      for (paramb = null;; paramb = paramb.EY)
      {
        paramView.setAccessibilityDelegate(paramb);
        return;
      }
    }
    
    private static void al(View paramView)
    {
      float f = paramView.getTranslationY();
      paramView.setTranslationY(1.0F + f);
      paramView.setTranslationY(f);
    }
    
    public boolean H(View paramView)
    {
      return false;
    }
    
    public void I(View paramView)
    {
      paramView.postInvalidate();
    }
    
    public int J(View paramView)
    {
      return 0;
    }
    
    public int K(View paramView)
    {
      return 0;
    }
    
    public void L(View paramView) {}
    
    public int M(View paramView)
    {
      return paramView.getPaddingLeft();
    }
    
    public int N(View paramView)
    {
      return paramView.getPaddingRight();
    }
    
    public int Q(View paramView)
    {
      if (!FV) {}
      try
      {
        Field localField = View.class.getDeclaredField("mMinWidth");
        FU = localField;
        localField.setAccessible(true);
        FV = true;
        if (FU != null) {
          try
          {
            int i = ((Integer)FU.get(paramView)).intValue();
            return i;
          }
          catch (Exception paramView) {}
        }
        return 0;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        for (;;) {}
      }
    }
    
    public int R(View paramView)
    {
      if (!FX) {}
      try
      {
        Field localField = View.class.getDeclaredField("mMinHeight");
        FW = localField;
        localField.setAccessible(true);
        FX = true;
        if (FW != null) {
          try
          {
            int i = ((Integer)FW.get(paramView)).intValue();
            return i;
          }
          catch (Exception paramView) {}
        }
        return 0;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        for (;;) {}
      }
    }
    
    public float T(View paramView)
    {
      return 0.0F;
    }
    
    public String U(View paramView)
    {
      if (FY == null) {
        return null;
      }
      return (String)FY.get(paramView);
    }
    
    public int V(View paramView)
    {
      return 0;
    }
    
    public void W(View paramView) {}
    
    public boolean X(View paramView)
    {
      return false;
    }
    
    public boolean Y(View paramView)
    {
      return true;
    }
    
    public boolean Z(View paramView)
    {
      return false;
    }
    
    public z a(View paramView, z paramz)
    {
      return paramz;
    }
    
    public void a(View paramView, ColorStateList paramColorStateList)
    {
      if ((paramView instanceof q)) {
        ((q)paramView).setSupportBackgroundTintList(paramColorStateList);
      }
    }
    
    public void a(View paramView, PorterDuff.Mode paramMode)
    {
      if ((paramView instanceof q)) {
        ((q)paramView).setSupportBackgroundTintMode(paramMode);
      }
    }
    
    public void a(View paramView, n paramn) {}
    
    public void a(View paramView, p paramp) {}
    
    public void a(View paramView, Runnable paramRunnable, long paramLong)
    {
      paramView.postDelayed(paramRunnable, ValueAnimator.getFrameDelay() + paramLong);
    }
    
    public void a(View paramView, String paramString)
    {
      if (FY == null) {
        FY = new WeakHashMap();
      }
      FY.put(paramView, paramString);
    }
    
    public ColorStateList aa(View paramView)
    {
      if ((paramView instanceof q)) {
        return ((q)paramView).getSupportBackgroundTintList();
      }
      return null;
    }
    
    public PorterDuff.Mode ab(View paramView)
    {
      if ((paramView instanceof q)) {
        return ((q)paramView).getSupportBackgroundTintMode();
      }
      return null;
    }
    
    public boolean ac(View paramView)
    {
      if ((paramView instanceof h)) {
        return ((h)paramView).isNestedScrollingEnabled();
      }
      return false;
    }
    
    public void ad(View paramView)
    {
      if ((paramView instanceof h)) {
        ((h)paramView).stopNestedScroll();
      }
    }
    
    public boolean ae(View paramView)
    {
      return (paramView.getWidth() > 0) && (paramView.getHeight() > 0);
    }
    
    public float af(View paramView)
    {
      return ak(paramView) + T(paramView);
    }
    
    public Rect ag(View paramView)
    {
      return null;
    }
    
    public boolean ah(View paramView)
    {
      return paramView.getWindowToken() != null;
    }
    
    public boolean ai(View paramView)
    {
      return false;
    }
    
    public Display aj(View paramView)
    {
      if (ah(paramView)) {
        return ((WindowManager)paramView.getContext().getSystemService("window")).getDefaultDisplay();
      }
      return null;
    }
    
    public float ak(View paramView)
    {
      return 0.0F;
    }
    
    public z b(View paramView, z paramz)
    {
      return paramz;
    }
    
    public void b(View paramView, Runnable paramRunnable)
    {
      paramView.postDelayed(paramRunnable, ValueAnimator.getFrameDelay());
    }
    
    public void c(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramView.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void c(View paramView, Rect paramRect) {}
    
    public void d(View paramView, float paramFloat) {}
    
    public void d(View paramView, boolean paramBoolean) {}
    
    public void l(View paramView, int paramInt) {}
    
    public void m(View paramView, int paramInt)
    {
      paramView.offsetTopAndBottom(paramInt);
      if (paramView.getVisibility() == 0)
      {
        al(paramView);
        paramView = paramView.getParent();
        if ((paramView instanceof View)) {
          al((View)paramView);
        }
      }
    }
    
    public void n(View paramView, int paramInt)
    {
      paramView.offsetLeftAndRight(paramInt);
      if (paramView.getVisibility() == 0)
      {
        al(paramView);
        paramView = paramView.getParent();
        if ((paramView instanceof View)) {
          al((View)paramView);
        }
      }
    }
    
    public void o(View paramView, int paramInt) {}
    
    public void setBackground(View paramView, Drawable paramDrawable)
    {
      paramView.setBackgroundDrawable(paramDrawable);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */