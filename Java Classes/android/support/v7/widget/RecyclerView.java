package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.v4.d.d;
import android.support.v4.g.l;
import android.support.v4.view.a.a.b;
import android.support.v4.view.j;
import android.support.v4.view.r;
import android.support.v4.view.s;
import android.support.v7.f.a.a;
import android.support.v7.f.a.c;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RecyclerView
  extends ViewGroup
  implements android.support.v4.view.i
{
  static final boolean adA;
  static final boolean adB;
  private static final boolean adC;
  private static final boolean adD;
  private static final boolean adE;
  private static final Class<?>[] adF;
  private static final int[] adx = { 16843830 };
  private static final int[] ady = { 16842987 };
  static final boolean adz;
  static final Interpolator aeS;
  final Rect Gl = new Rect();
  private final int[] JA;
  private final int[] Jz;
  private final r adG = new r();
  final p adH = new p();
  private s adI;
  f adJ;
  public ai adK;
  final bv adL = new bv();
  boolean adM;
  final Runnable adN = new Runnable()
  {
    public final void run()
    {
      if ((!RecyclerView.this.adY) || (RecyclerView.this.isLayoutRequested())) {
        return;
      }
      if (!RecyclerView.this.adV)
      {
        RecyclerView.this.requestLayout();
        return;
      }
      if (RecyclerView.this.aeb)
      {
        RecyclerView.this.aea = true;
        return;
      }
      RecyclerView.this.hE();
    }
  };
  final RectF adO = new RectF();
  a adP;
  i adQ;
  q adR;
  final ArrayList<h> adS = new ArrayList();
  private final ArrayList<m> adT = new ArrayList();
  private m adU;
  boolean adV;
  boolean adW;
  boolean adX;
  boolean adY;
  private int adZ = 0;
  private boolean aeA = true;
  final w aeB = new w();
  ar aeC;
  ar.a aeD;
  final u aeE;
  private n aeF;
  private List<n> aeG;
  boolean aeH;
  boolean aeI;
  private RecyclerView.f.a aeJ;
  boolean aeK;
  bb aeL;
  private d aeM;
  private final int[] aeN;
  private j aeO;
  private final int[] aeP;
  final List<x> aeQ;
  private Runnable aeR;
  private final bv.b aeT;
  boolean aea;
  boolean aeb;
  private boolean aec;
  private int aed;
  boolean aee;
  public List<k> aef;
  boolean aeg = false;
  boolean aeh = false;
  private int aei = 0;
  private int aej = 0;
  private e aek = new e();
  private EdgeEffect ael;
  private EdgeEffect aem;
  private EdgeEffect aen;
  private EdgeEffect aeo;
  f aep = new al();
  private int aeq = -1;
  private int aer;
  private int aes;
  private int aet;
  private int aeu;
  private l aev;
  private final int aew;
  private final int aex;
  private float aey = Float.MIN_VALUE;
  private float aez = Float.MIN_VALUE;
  private VelocityTracker jJ;
  private final AccessibilityManager jl;
  private int nc;
  private final Rect nh = new Rect();
  private int pe = 0;
  
  static
  {
    if ((Build.VERSION.SDK_INT == 18) || (Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20))
    {
      bool = true;
      adz = bool;
      if (Build.VERSION.SDK_INT < 23) {
        break label169;
      }
      bool = true;
      label62:
      adA = bool;
      if (Build.VERSION.SDK_INT < 16) {
        break label174;
      }
      bool = true;
      label76:
      adB = bool;
      if (Build.VERSION.SDK_INT < 21) {
        break label179;
      }
      bool = true;
      label90:
      adC = bool;
      if (Build.VERSION.SDK_INT > 15) {
        break label184;
      }
      bool = true;
      label104:
      adD = bool;
      if (Build.VERSION.SDK_INT > 15) {
        break label189;
      }
    }
    label169:
    label174:
    label179:
    label184:
    label189:
    for (boolean bool = true;; bool = false)
    {
      adE = bool;
      adF = new Class[] { Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE };
      aeS = new Interpolator()
      {
        public final float getInterpolation(float paramAnonymousFloat)
        {
          paramAnonymousFloat -= 1.0F;
          return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
        }
      };
      return;
      bool = false;
      break;
      bool = false;
      break label62;
      bool = false;
      break label76;
      bool = false;
      break label90;
      bool = false;
      break label104;
    }
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject1;
    if (adC)
    {
      localObject1 = new ar.a();
      this.aeD = ((ar.a)localObject1);
      this.aeE = new u();
      this.aeH = false;
      this.aeI = false;
      this.aeJ = new g();
      this.aeK = false;
      this.aeN = new int[2];
      this.Jz = new int[2];
      this.JA = new int[2];
      this.aeP = new int[2];
      this.aeQ = new ArrayList();
      this.aeR = new Runnable()
      {
        public final void run()
        {
          if (RecyclerView.this.aep != null) {
            RecyclerView.this.aep.gB();
          }
          RecyclerView.this.aeK = false;
        }
      };
      this.aeT = new bv.b()
      {
        public final void a(RecyclerView.x paramAnonymousx, RecyclerView.f.b paramAnonymousb1, RecyclerView.f.b paramAnonymousb2)
        {
          RecyclerView.this.adH.p(paramAnonymousx);
          RecyclerView localRecyclerView = RecyclerView.this;
          localRecyclerView.e(paramAnonymousx);
          paramAnonymousx.setIsRecyclable(false);
          if (localRecyclerView.aep.d(paramAnonymousx, paramAnonymousb1, paramAnonymousb2)) {
            localRecyclerView.hT();
          }
        }
        
        public final void b(RecyclerView.x paramAnonymousx, RecyclerView.f.b paramAnonymousb1, RecyclerView.f.b paramAnonymousb2)
        {
          RecyclerView localRecyclerView = RecyclerView.this;
          paramAnonymousx.setIsRecyclable(false);
          if (localRecyclerView.aep.e(paramAnonymousx, paramAnonymousb1, paramAnonymousb2)) {
            localRecyclerView.hT();
          }
        }
        
        public final void c(RecyclerView.x paramAnonymousx, RecyclerView.f.b paramAnonymousb1, RecyclerView.f.b paramAnonymousb2)
        {
          paramAnonymousx.setIsRecyclable(false);
          if (RecyclerView.this.aeg) {
            if (RecyclerView.this.aep.a(paramAnonymousx, paramAnonymousx, paramAnonymousb1, paramAnonymousb2)) {
              RecyclerView.this.hT();
            }
          }
          while (!RecyclerView.this.aep.f(paramAnonymousx, paramAnonymousb1, paramAnonymousb2)) {
            return;
          }
          RecyclerView.this.hT();
        }
        
        public final void i(RecyclerView.x paramAnonymousx)
        {
          RecyclerView.this.adQ.a(paramAnonymousx.itemView, RecyclerView.this.adH);
        }
      };
      if (paramAttributeSet == null) {
        break label687;
      }
      localObject1 = paramContext.obtainStyledAttributes(paramAttributeSet, ady, paramInt, 0);
      this.adM = ((TypedArray)localObject1).getBoolean(0, true);
      ((TypedArray)localObject1).recycle();
      label351:
      setScrollContainer(true);
      setFocusableInTouchMode(true);
      localObject1 = ViewConfiguration.get(paramContext);
      this.nc = ((ViewConfiguration)localObject1).getScaledTouchSlop();
      this.aey = s.a((ViewConfiguration)localObject1, paramContext);
      this.aez = s.b((ViewConfiguration)localObject1, paramContext);
      this.aew = ((ViewConfiguration)localObject1).getScaledMinimumFlingVelocity();
      this.aex = ((ViewConfiguration)localObject1).getScaledMaximumFlingVelocity();
      if (getOverScrollMode() != 2) {
        break label695;
      }
    }
    Object localObject2;
    Object localObject3;
    Object localObject4;
    StateListDrawable localStateListDrawable;
    Drawable localDrawable;
    label687:
    label695:
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      this.aep.aeV = this.aeJ;
      this.adJ = new f(new f.a()
      {
        private void f(f.b paramAnonymousb)
        {
          switch (paramAnonymousb.wC)
          {
          case 3: 
          case 5: 
          case 6: 
          case 7: 
          default: 
            return;
          case 1: 
            RecyclerView.this.adQ.I(paramAnonymousb.VF, paramAnonymousb.VH);
            return;
          case 2: 
            RecyclerView.this.adQ.J(paramAnonymousb.VF, paramAnonymousb.VH);
            return;
          case 4: 
            RecyclerView.this.adQ.K(paramAnonymousb.VF, paramAnonymousb.VH);
            return;
          }
          RecyclerView.this.adQ.L(paramAnonymousb.VF, paramAnonymousb.VH);
        }
        
        public final void A(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          int n = -1;
          RecyclerView localRecyclerView = RecyclerView.this;
          int i1 = localRecyclerView.adK.gw();
          int i;
          int j;
          int k;
          int m;
          if (paramAnonymousInt1 < paramAnonymousInt2)
          {
            i = -1;
            j = paramAnonymousInt2;
            k = paramAnonymousInt1;
            m = 0;
            label35:
            if (m >= i1) {
              break label139;
            }
            localObject = RecyclerView.aN(localRecyclerView.adK.bl(m));
            if ((localObject != null) && (((RecyclerView.x)localObject).mPosition >= k) && (((RecyclerView.x)localObject).mPosition <= j))
            {
              if (((RecyclerView.x)localObject).mPosition != paramAnonymousInt1) {
                break label129;
              }
              ((RecyclerView.x)localObject).offsetPosition(paramAnonymousInt2 - paramAnonymousInt1, false);
            }
          }
          for (;;)
          {
            localRecyclerView.aeE.afY = true;
            m += 1;
            break label35;
            i = 1;
            j = paramAnonymousInt1;
            k = paramAnonymousInt2;
            break;
            label129:
            ((RecyclerView.x)localObject).offsetPosition(i, false);
          }
          label139:
          Object localObject = localRecyclerView.adH;
          label173:
          RecyclerView.x localx;
          if (paramAnonymousInt1 < paramAnonymousInt2)
          {
            j = paramAnonymousInt2;
            k = paramAnonymousInt1;
            i = n;
            n = ((RecyclerView.p)localObject).afC.size();
            m = 0;
            if (m >= n) {
              break label268;
            }
            localx = (RecyclerView.x)((RecyclerView.p)localObject).afC.get(m);
            if ((localx != null) && (localx.mPosition >= k) && (localx.mPosition <= j))
            {
              if (localx.mPosition != paramAnonymousInt1) {
                break label258;
              }
              localx.offsetPosition(paramAnonymousInt2 - paramAnonymousInt1, false);
            }
          }
          for (;;)
          {
            m += 1;
            break label173;
            i = 1;
            j = paramAnonymousInt1;
            k = paramAnonymousInt2;
            break;
            label258:
            localx.offsetPosition(i, false);
          }
          label268:
          localRecyclerView.requestLayout();
          RecyclerView.this.aeH = true;
        }
        
        public final void a(int paramAnonymousInt1, int paramAnonymousInt2, Object paramAnonymousObject)
        {
          Object localObject = RecyclerView.this;
          int j = ((RecyclerView)localObject).adK.gw();
          int i = 0;
          while (i < j)
          {
            View localView = ((RecyclerView)localObject).adK.bl(i);
            RecyclerView.x localx = RecyclerView.aN(localView);
            if ((localx != null) && (!localx.shouldIgnore()) && (localx.mPosition >= paramAnonymousInt1) && (localx.mPosition < paramAnonymousInt1 + paramAnonymousInt2))
            {
              localx.addFlags(2);
              localx.addChangePayload(paramAnonymousObject);
              ((RecyclerView.j)localView.getLayoutParams()).afs = true;
            }
            i += 1;
          }
          paramAnonymousObject = ((RecyclerView)localObject).adH;
          i = ((RecyclerView.p)paramAnonymousObject).afC.size() - 1;
          while (i >= 0)
          {
            localObject = (RecyclerView.x)((RecyclerView.p)paramAnonymousObject).afC.get(i);
            if (localObject != null)
            {
              j = ((RecyclerView.x)localObject).mPosition;
              if ((j >= paramAnonymousInt1) && (j < paramAnonymousInt1 + paramAnonymousInt2))
              {
                ((RecyclerView.x)localObject).addFlags(2);
                ((RecyclerView.p)paramAnonymousObject).bN(i);
              }
            }
            i -= 1;
          }
          RecyclerView.this.aeI = true;
        }
        
        public final RecyclerView.x bg(int paramAnonymousInt)
        {
          RecyclerView localRecyclerView = RecyclerView.this;
          int j = localRecyclerView.adK.gw();
          int i = 0;
          Object localObject1 = null;
          Object localObject2;
          if (i < j)
          {
            localObject2 = RecyclerView.aN(localRecyclerView.adK.bl(i));
            if ((localObject2 == null) || (((RecyclerView.x)localObject2).isRemoved()) || (((RecyclerView.x)localObject2).mPosition != paramAnonymousInt)) {
              break label127;
            }
            localObject1 = localObject2;
            if (localRecyclerView.adK.aA(((RecyclerView.x)localObject2).itemView)) {
              localObject1 = localObject2;
            }
          }
          label127:
          for (;;)
          {
            i += 1;
            break;
            if (localObject1 == null) {
              localObject2 = null;
            }
            do
            {
              return (RecyclerView.x)localObject2;
              localObject2 = localObject1;
            } while (!RecyclerView.this.adK.aA(((RecyclerView.x)localObject1).itemView));
            return null;
          }
        }
        
        public final void d(f.b paramAnonymousb)
        {
          f(paramAnonymousb);
        }
        
        public final void e(f.b paramAnonymousb)
        {
          f(paramAnonymousb);
        }
        
        public final void x(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          RecyclerView.this.c(paramAnonymousInt1, paramAnonymousInt2, true);
          RecyclerView.this.aeH = true;
          RecyclerView.u localu = RecyclerView.this.aeE;
          localu.afV += paramAnonymousInt2;
        }
        
        public final void y(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          RecyclerView.this.c(paramAnonymousInt1, paramAnonymousInt2, false);
          RecyclerView.this.aeH = true;
        }
        
        public final void z(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          RecyclerView localRecyclerView = RecyclerView.this;
          int j = localRecyclerView.adK.gw();
          int i = 0;
          while (i < j)
          {
            localObject = RecyclerView.aN(localRecyclerView.adK.bl(i));
            if ((localObject != null) && (!((RecyclerView.x)localObject).shouldIgnore()) && (((RecyclerView.x)localObject).mPosition >= paramAnonymousInt1))
            {
              ((RecyclerView.x)localObject).offsetPosition(paramAnonymousInt2, false);
              localRecyclerView.aeE.afY = true;
            }
            i += 1;
          }
          Object localObject = localRecyclerView.adH;
          j = ((RecyclerView.p)localObject).afC.size();
          i = 0;
          while (i < j)
          {
            RecyclerView.x localx = (RecyclerView.x)((RecyclerView.p)localObject).afC.get(i);
            if ((localx != null) && (localx.mPosition >= paramAnonymousInt1)) {
              localx.offsetPosition(paramAnonymousInt2, true);
            }
            i += 1;
          }
          localRecyclerView.requestLayout();
          RecyclerView.this.aeH = true;
        }
      });
      this.adK = new ai(new ai.b()
      {
        public final RecyclerView.x aB(View paramAnonymousView)
        {
          return RecyclerView.aN(paramAnonymousView);
        }
        
        public final void aC(View paramAnonymousView)
        {
          paramAnonymousView = RecyclerView.aN(paramAnonymousView);
          if (paramAnonymousView != null) {
            RecyclerView.x.access$200(paramAnonymousView, RecyclerView.this);
          }
        }
        
        public final void aD(View paramAnonymousView)
        {
          paramAnonymousView = RecyclerView.aN(paramAnonymousView);
          if (paramAnonymousView != null) {
            RecyclerView.x.access$300(paramAnonymousView, RecyclerView.this);
          }
        }
        
        public final void addView(View paramAnonymousView, int paramAnonymousInt)
        {
          RecyclerView.this.addView(paramAnonymousView, paramAnonymousInt);
          RecyclerView localRecyclerView = RecyclerView.this;
          paramAnonymousView = RecyclerView.aN(paramAnonymousView);
          if ((localRecyclerView.adP != null) && (paramAnonymousView != null)) {
            localRecyclerView.adP.onViewAttachedToWindow(paramAnonymousView);
          }
          if (localRecyclerView.aef != null)
          {
            paramAnonymousInt = localRecyclerView.aef.size() - 1;
            while (paramAnonymousInt >= 0)
            {
              localRecyclerView.aef.get(paramAnonymousInt);
              paramAnonymousInt -= 1;
            }
          }
        }
        
        public final void attachViewToParent(View paramAnonymousView, int paramAnonymousInt, ViewGroup.LayoutParams paramAnonymousLayoutParams)
        {
          RecyclerView.x localx = RecyclerView.aN(paramAnonymousView);
          if (localx != null)
          {
            if ((!localx.isTmpDetached()) && (!localx.shouldIgnore())) {
              throw new IllegalArgumentException("Called attach on a child which is not detached: " + localx + RecyclerView.this.hC());
            }
            localx.clearTmpDetachFlag();
          }
          RecyclerView.a(RecyclerView.this, paramAnonymousView, paramAnonymousInt, paramAnonymousLayoutParams);
        }
        
        public final void detachViewFromParent(int paramAnonymousInt)
        {
          Object localObject = getChildAt(paramAnonymousInt);
          if (localObject != null)
          {
            localObject = RecyclerView.aN((View)localObject);
            if (localObject != null)
            {
              if ((((RecyclerView.x)localObject).isTmpDetached()) && (!((RecyclerView.x)localObject).shouldIgnore())) {
                throw new IllegalArgumentException("called detach on an already detached child " + localObject + RecyclerView.this.hC());
              }
              ((RecyclerView.x)localObject).addFlags(256);
            }
          }
          RecyclerView.b(RecyclerView.this, paramAnonymousInt);
        }
        
        public final View getChildAt(int paramAnonymousInt)
        {
          return RecyclerView.this.getChildAt(paramAnonymousInt);
        }
        
        public final int getChildCount()
        {
          return RecyclerView.this.getChildCount();
        }
        
        public final int indexOfChild(View paramAnonymousView)
        {
          return RecyclerView.this.indexOfChild(paramAnonymousView);
        }
        
        public final void removeAllViews()
        {
          int j = RecyclerView.this.getChildCount();
          int i = 0;
          while (i < j)
          {
            View localView = getChildAt(i);
            RecyclerView.this.aS(localView);
            localView.clearAnimation();
            i += 1;
          }
          RecyclerView.this.removeAllViews();
        }
        
        public final void removeViewAt(int paramAnonymousInt)
        {
          View localView = RecyclerView.this.getChildAt(paramAnonymousInt);
          if (localView != null)
          {
            RecyclerView.this.aS(localView);
            localView.clearAnimation();
          }
          RecyclerView.this.removeViewAt(paramAnonymousInt);
        }
      });
      if (r.J(this) == 0) {
        r.l(this, 1);
      }
      this.jl = ((AccessibilityManager)getContext().getSystemService("accessibility"));
      setAccessibilityDelegateCompat(new bb(this));
      if (paramAttributeSet == null) {
        break label1266;
      }
      localObject1 = paramContext.obtainStyledAttributes(paramAttributeSet, a.c.RecyclerView, paramInt, 0);
      localObject2 = ((TypedArray)localObject1).getString(a.c.RecyclerView_layoutManager);
      if (((TypedArray)localObject1).getInt(a.c.RecyclerView_android_descendantFocusability, -1) == -1) {
        setDescendantFocusability(262144);
      }
      this.adX = ((TypedArray)localObject1).getBoolean(a.c.RecyclerView_fastScrollEnabled, false);
      if (!this.adX) {
        break label751;
      }
      localObject3 = (StateListDrawable)((TypedArray)localObject1).getDrawable(a.c.RecyclerView_fastScrollVerticalThumbDrawable);
      localObject4 = ((TypedArray)localObject1).getDrawable(a.c.RecyclerView_fastScrollVerticalTrackDrawable);
      localStateListDrawable = (StateListDrawable)((TypedArray)localObject1).getDrawable(a.c.RecyclerView_fastScrollHorizontalThumbDrawable);
      localDrawable = ((TypedArray)localObject1).getDrawable(a.c.RecyclerView_fastScrollHorizontalTrackDrawable);
      if ((localObject3 != null) && (localObject4 != null) && (localStateListDrawable != null) && (localDrawable != null)) {
        break label701;
      }
      throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + hC());
      localObject1 = null;
      break;
      this.adM = true;
      break label351;
    }
    label701:
    Resources localResources = getContext().getResources();
    new ao(this, (StateListDrawable)localObject3, (Drawable)localObject4, localStateListDrawable, localDrawable, localResources.getDimensionPixelSize(a.a.fastscroll_default_thickness), localResources.getDimensionPixelSize(a.a.fastscroll_minimum_range), localResources.getDimensionPixelOffset(a.a.fastscroll_margin));
    label751:
    ((TypedArray)localObject1).recycle();
    if (localObject2 != null)
    {
      localObject1 = ((String)localObject2).trim();
      if (!((String)localObject1).isEmpty())
      {
        if (((String)localObject1).charAt(0) != '.') {
          break label941;
        }
        localObject1 = paramContext.getPackageName() + (String)localObject1;
      }
    }
    for (;;)
    {
      try
      {
        if (isInEditMode())
        {
          localObject2 = getClass().getClassLoader();
          localObject4 = ((ClassLoader)localObject2).loadClass((String)localObject1).asSubclass(i.class);
        }
        try
        {
          localObject3 = ((Class)localObject4).getConstructor(adF);
          localObject2 = new Object[4];
          localObject2[0] = paramContext;
          localObject2[1] = paramAttributeSet;
          localObject2[2] = Integer.valueOf(paramInt);
          localObject2[3] = Integer.valueOf(0);
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          try
          {
            localObject3 = ((Class)localObject4).getConstructor(new Class[0]);
            localThrowable = null;
          }
          catch (NoSuchMethodException paramContext)
          {
            Throwable localThrowable;
            paramContext.initCause(localThrowable);
            throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Error creating LayoutManager " + (String)localObject1, paramContext);
          }
        }
        ((Constructor)localObject3).setAccessible(true);
        setLayoutManager((i)((Constructor)localObject3).newInstance((Object[])localObject2));
        if (Build.VERSION.SDK_INT >= 21)
        {
          paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, adx, paramInt, 0);
          bool = paramContext.getBoolean(0, true);
          paramContext.recycle();
          setNestedScrollingEnabled(bool);
          return;
          label941:
          if (((String)localObject1).contains(".")) {
            continue;
          }
          localObject1 = RecyclerView.class.getPackage().getName() + '.' + (String)localObject1;
          continue;
          localObject2 = paramContext.getClassLoader();
          continue;
          setDescendantFocusability(262144);
        }
      }
      catch (ClassNotFoundException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Unable to find LayoutManager " + (String)localObject1, paramContext);
      }
      catch (InvocationTargetException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + (String)localObject1, paramContext);
      }
      catch (InstantiationException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + (String)localObject1, paramContext);
      }
      catch (IllegalAccessException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Cannot access non-public constructor " + (String)localObject1, paramContext);
      }
      catch (ClassCastException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Class is not a LayoutManager " + (String)localObject1, paramContext);
      }
      label1266:
      bool = true;
    }
  }
  
  private boolean a(int paramInt1, int paramInt2, MotionEvent paramMotionEvent)
  {
    int i = 0;
    int j = 0;
    int n = 0;
    int k = 0;
    int i1 = 0;
    int m = 0;
    hE();
    if (this.adP != null)
    {
      hF();
      hP();
      d.beginSection("RV Scroll");
      m(this.aeE);
      if (paramInt1 != 0)
      {
        j = this.adQ.a(paramInt1, this.adH, this.aeE);
        i = paramInt1 - j;
        if (paramInt2 != 0)
        {
          m = this.adQ.b(paramInt2, this.adH, this.aeE);
          k = paramInt2 - m;
        }
        d.endSection();
        jdMethod_if();
        ab(true);
        aa(false);
        n = m;
        m = k;
        k = n;
      }
    }
    for (;;)
    {
      if (!this.adS.isEmpty()) {
        invalidate();
      }
      if (a(j, k, i, m, this.Jz, 0))
      {
        this.aet -= this.Jz[0];
        this.aeu -= this.Jz[1];
        if (paramMotionEvent != null) {
          paramMotionEvent.offsetLocation(this.Jz[0], this.Jz[1]);
        }
        paramMotionEvent = this.aeP;
        paramMotionEvent[0] += this.Jz[0];
        paramMotionEvent = this.aeP;
        paramMotionEvent[1] += this.Jz[1];
      }
      while (getOverScrollMode() == 2)
      {
        if ((j != 0) || (k != 0)) {
          Z(j, k);
        }
        if (!awakenScrollBars()) {
          invalidate();
        }
        if ((j == 0) && (k == 0)) {
          break;
        }
        return true;
      }
      label328:
      float f1;
      float f2;
      float f3;
      float f4;
      if (paramMotionEvent != null)
      {
        if ((paramMotionEvent.getSource() & 0x2002) != 8194) {
          break label468;
        }
        n = 1;
        if (n == 0)
        {
          f1 = paramMotionEvent.getX();
          f2 = i;
          f3 = paramMotionEvent.getY();
          f4 = m;
          i = 0;
          if (f2 >= 0.0F) {
            break label474;
          }
          hI();
          android.support.v4.widget.i.a(this.ael, -f2 / getWidth(), 1.0F - f3 / getHeight());
          i = 1;
          label398:
          if (f4 >= 0.0F) {
            break label514;
          }
          hK();
          android.support.v4.widget.i.a(this.aem, -f4 / getHeight(), f1 / getWidth());
          i = 1;
        }
      }
      for (;;)
      {
        if ((i != 0) || (f2 != 0.0F) || (f4 != 0.0F)) {
          r.I(this);
        }
        W(paramInt1, paramInt2);
        break;
        label468:
        n = 0;
        break label328;
        label474:
        if (f2 <= 0.0F) {
          break label398;
        }
        hJ();
        android.support.v4.widget.i.a(this.aen, f2 / getWidth(), f3 / getHeight());
        i = 1;
        break label398;
        label514:
        if (f4 > 0.0F)
        {
          hL();
          android.support.v4.widget.i.a(this.aeo, f4 / getHeight(), 1.0F - f1 / getWidth());
          i = 1;
        }
      }
      return false;
      n = 0;
      i = j;
      j = n;
      break;
      k = 0;
      j = i1;
      m = n;
    }
  }
  
  static x aN(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return ((j)paramView.getLayoutParams()).afr;
  }
  
  public static int aO(View paramView)
  {
    paramView = aN(paramView);
    if (paramView != null) {
      return paramView.getAdapterPosition();
    }
    return -1;
  }
  
  public static int aP(View paramView)
  {
    paramView = aN(paramView);
    if (paramView != null) {
      return paramView.getLayoutPosition();
    }
    return -1;
  }
  
  static RecyclerView aR(View paramView)
  {
    if (!(paramView instanceof ViewGroup)) {
      return null;
    }
    if ((paramView instanceof RecyclerView)) {
      return (RecyclerView)paramView;
    }
    paramView = (ViewGroup)paramView;
    int j = paramView.getChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView localRecyclerView = aR(paramView.getChildAt(i));
      if (localRecyclerView != null) {
        return localRecyclerView;
      }
      i += 1;
    }
    return null;
  }
  
  private x bF(int paramInt)
  {
    Object localObject = null;
    if (this.aeg) {}
    int i;
    x localx;
    do
    {
      return (x)localObject;
      int j = this.adK.gw();
      i = 0;
      localObject = null;
      if (i >= j) {
        break;
      }
      localx = aN(this.adK.bl(i));
      if ((localx == null) || (localx.isRemoved()) || (h(localx) != paramInt)) {
        break label100;
      }
      localObject = localx;
    } while (!this.adK.aA(localx.itemView));
    localObject = localx;
    label100:
    for (;;)
    {
      i += 1;
      break;
      return (x)localObject;
    }
  }
  
  static void d(View paramView, Rect paramRect)
  {
    j localj = (j)paramView.getLayoutParams();
    Rect localRect = localj.abA;
    int i = paramView.getLeft();
    int j = localRect.left;
    int k = localj.leftMargin;
    int m = paramView.getTop();
    int n = localRect.top;
    int i1 = localj.topMargin;
    int i2 = paramView.getRight();
    int i3 = localRect.right;
    int i4 = localj.rightMargin;
    int i5 = paramView.getBottom();
    int i6 = localRect.bottom;
    paramRect.set(i - j - k, m - n - i1, i2 + i3 + i4, localj.bottomMargin + (i6 + i5));
  }
  
  private void d(View paramView1, View paramView2)
  {
    boolean bool2 = true;
    Object localObject;
    Rect localRect;
    boolean bool1;
    if (paramView2 != null)
    {
      localObject = paramView2;
      this.Gl.set(0, 0, ((View)localObject).getWidth(), ((View)localObject).getHeight());
      localObject = ((View)localObject).getLayoutParams();
      if ((localObject instanceof j))
      {
        localObject = (j)localObject;
        if (!((j)localObject).afs)
        {
          localObject = ((j)localObject).abA;
          localRect = this.Gl;
          localRect.left -= ((Rect)localObject).left;
          localRect = this.Gl;
          localRect.right += ((Rect)localObject).right;
          localRect = this.Gl;
          localRect.top -= ((Rect)localObject).top;
          localRect = this.Gl;
          int i = localRect.bottom;
          localRect.bottom = (((Rect)localObject).bottom + i);
        }
      }
      if (paramView2 != null)
      {
        offsetDescendantRectToMyCoords(paramView2, this.Gl);
        offsetRectIntoDescendantCoords(paramView1, this.Gl);
      }
      localObject = this.adQ;
      localRect = this.Gl;
      if (this.adY) {
        break label225;
      }
      bool1 = true;
      label200:
      if (paramView2 != null) {
        break label231;
      }
    }
    for (;;)
    {
      ((i)localObject).a(this, paramView1, localRect, bool1, bool2);
      return;
      localObject = paramView1;
      break;
      label225:
      bool1 = false;
      break label200;
      label231:
      bool2 = false;
    }
  }
  
  private long f(x paramx)
  {
    if (this.adP.hasStableIds()) {
      return paramx.getItemId();
    }
    return paramx.mPosition;
  }
  
  private void f(int[] paramArrayOfInt)
  {
    int i2 = this.adK.getChildCount();
    if (i2 == 0)
    {
      paramArrayOfInt[0] = -1;
      paramArrayOfInt[1] = -1;
      return;
    }
    int i = Integer.MAX_VALUE;
    int k = Integer.MIN_VALUE;
    int n = 0;
    int m;
    int j;
    if (n < i2)
    {
      x localx = aN(this.adK.getChildAt(n));
      m = i;
      if (localx.shouldIgnore()) {
        break label122;
      }
      int i1 = localx.getLayoutPosition();
      j = i;
      if (i1 < i) {
        j = i1;
      }
      m = j;
      if (i1 <= k) {
        break label122;
      }
      i = j;
      j = i1;
    }
    for (;;)
    {
      n += 1;
      k = j;
      break;
      paramArrayOfInt[0] = i;
      paramArrayOfInt[1] = k;
      return;
      label122:
      j = k;
      i = m;
    }
  }
  
  private x g(long paramLong)
  {
    x localx2 = null;
    x localx1 = localx2;
    if (this.adP != null)
    {
      if (this.adP.hasStableIds()) {
        break label31;
      }
      localx1 = localx2;
    }
    label31:
    int i;
    do
    {
      return localx1;
      int j = this.adK.gw();
      i = 0;
      localx1 = null;
      if (i >= j) {
        break;
      }
      localx2 = aN(this.adK.bl(i));
      if ((localx2 == null) || (localx2.isRemoved()) || (localx2.getItemId() != paramLong)) {
        break label120;
      }
      localx1 = localx2;
    } while (!this.adK.aA(localx2.itemView));
    localx1 = localx2;
    label120:
    for (;;)
    {
      i += 1;
      break;
      return localx1;
    }
  }
  
  static void g(x paramx)
  {
    Object localObject;
    if (paramx.mNestedRecyclerView != null) {
      localObject = (View)paramx.mNestedRecyclerView.get();
    }
    while (localObject != null)
    {
      if (localObject == paramx.itemView) {
        return;
      }
      localObject = ((View)localObject).getParent();
      if ((localObject instanceof View)) {
        localObject = (View)localObject;
      } else {
        localObject = null;
      }
    }
    paramx.mNestedRecyclerView = null;
  }
  
  private void g(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i) == this.aeq) {
      if (i != 0) {
        break label75;
      }
    }
    label75:
    for (i = 1;; i = 0)
    {
      this.aeq = paramMotionEvent.getPointerId(i);
      int j = (int)(paramMotionEvent.getX(i) + 0.5F);
      this.aet = j;
      this.aer = j;
      i = (int)(paramMotionEvent.getY(i) + 0.5F);
      this.aeu = i;
      this.aes = i;
      return;
    }
  }
  
  private void hG()
  {
    setScrollState(0);
    hH();
  }
  
  private void hH()
  {
    this.aeB.stop();
    if (this.adQ != null) {
      this.adQ.ij();
    }
  }
  
  private void hI()
  {
    if (this.ael != null) {
      return;
    }
    this.ael = e.c(this);
    if (this.adM)
    {
      this.ael.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.ael.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  private void hJ()
  {
    if (this.aen != null) {
      return;
    }
    this.aen = e.c(this);
    if (this.adM)
    {
      this.aen.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.aen.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  private void hK()
  {
    if (this.aem != null) {
      return;
    }
    this.aem = e.c(this);
    if (this.adM)
    {
      this.aem.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.aem.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  private void hL()
  {
    if (this.aeo != null) {
      return;
    }
    this.aeo = e.c(this);
    if (this.adM)
    {
      this.aeo.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.aeo.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  private void hM()
  {
    this.aeo = null;
    this.aem = null;
    this.aen = null;
    this.ael = null;
  }
  
  private void hN()
  {
    boolean bool2 = false;
    if (this.jJ != null) {
      this.jJ.clear();
    }
    au(0);
    if (this.ael != null)
    {
      this.ael.onRelease();
      bool2 = this.ael.isFinished();
    }
    boolean bool1 = bool2;
    if (this.aem != null)
    {
      this.aem.onRelease();
      bool1 = bool2 | this.aem.isFinished();
    }
    bool2 = bool1;
    if (this.aen != null)
    {
      this.aen.onRelease();
      bool2 = bool1 | this.aen.isFinished();
    }
    bool1 = bool2;
    if (this.aeo != null)
    {
      this.aeo.onRelease();
      bool1 = bool2 | this.aeo.isFinished();
    }
    if (bool1) {
      r.I(this);
    }
  }
  
  private void hO()
  {
    hN();
    setScrollState(0);
  }
  
  private void hQ()
  {
    ab(true);
  }
  
  private boolean hS()
  {
    return this.aei > 0;
  }
  
  private boolean hU()
  {
    return (this.aep != null) && (this.adQ.he());
  }
  
  private void hV()
  {
    boolean bool2 = true;
    if (this.aeg)
    {
      this.adJ.reset();
      if (this.aeh) {
        this.adQ.ha();
      }
    }
    int i;
    label60:
    u localu;
    if (hU())
    {
      this.adJ.fY();
      if ((!this.aeH) && (!this.aeI)) {
        break label179;
      }
      i = 1;
      localu = this.aeE;
      if ((!this.adY) || (this.aep == null) || ((!this.aeg) && (i == 0) && (!this.adQ.afg)) || ((this.aeg) && (!this.adP.hasStableIds()))) {
        break label184;
      }
      bool1 = true;
      label120:
      localu.agc = bool1;
      localu = this.aeE;
      if ((!this.aeE.agc) || (i == 0) || (this.aeg) || (!hU())) {
        break label189;
      }
    }
    label179:
    label184:
    label189:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localu.agd = bool1;
      return;
      this.adJ.gb();
      break;
      i = 0;
      break label60;
      bool1 = false;
      break label120;
    }
  }
  
  private void hW()
  {
    if (this.adP == null)
    {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    }
    if (this.adQ == null)
    {
      Log.e("RecyclerView", "No layout manager attached; skipping layout");
      return;
    }
    this.aeE.agb = false;
    long l;
    RecyclerView.f.b localb;
    boolean bool1;
    boolean bool2;
    Object localObject3;
    int k;
    if (this.aeE.afW == 1)
    {
      hZ();
      this.adQ.e(this);
      ia();
      this.aeE.bQ(4);
      hF();
      hP();
      this.aeE.afW = 1;
      if (!this.aeE.agc) {
        break label689;
      }
      i = this.adK.getChildCount() - 1;
      if (i < 0) {
        break label678;
      }
      localObject1 = aN(this.adK.getChildAt(i));
      if (!((x)localObject1).shouldIgnore())
      {
        l = f((x)localObject1);
        localb = new RecyclerView.f.b().n((x)localObject1);
        localObject2 = (x)this.adL.akG.get(l);
        if ((localObject2 == null) || (((x)localObject2).shouldIgnore())) {
          break label664;
        }
        bool1 = this.adL.q((x)localObject2);
        bool2 = this.adL.q((x)localObject1);
        if ((bool1) && (localObject2 == localObject1)) {
          break label664;
        }
        localObject3 = this.adL.b((x)localObject2, 4);
        this.adL.c((x)localObject1, localb);
        localb = this.adL.b((x)localObject1, 8);
        if (localObject3 != null) {
          break label569;
        }
        k = this.adK.getChildCount();
        j = 0;
      }
    }
    else
    {
      for (;;)
      {
        if (j >= k) {
          break label519;
        }
        localObject3 = aN(this.adK.getChildAt(j));
        if ((localObject3 != localObject1) && (f((x)localObject3) == l))
        {
          if ((this.adP != null) && (this.adP.hasStableIds()))
          {
            throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + localObject3 + " \n View Holder 2:" + localObject1 + hC());
            localObject1 = this.adJ;
            if ((!((f)localObject1).Vz.isEmpty()) && (!((f)localObject1).Vy.isEmpty())) {}
            for (i = 1;; i = 0)
            {
              if ((i == 0) && (this.adQ.db == getWidth()) && (this.adQ.dc == getHeight())) {
                break label457;
              }
              this.adQ.e(this);
              ia();
              break;
            }
            label457:
            this.adQ.e(this);
            break;
          }
          throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + localObject3 + " \n View Holder 2:" + localObject1 + hC());
        }
        j += 1;
      }
      label519:
      Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + localObject2 + " cannot be found but it is necessary for " + localObject1 + hC());
    }
    for (;;)
    {
      i -= 1;
      break;
      label569:
      ((x)localObject2).setIsRecyclable(false);
      if (bool1) {
        e((x)localObject2);
      }
      if (localObject2 != localObject1)
      {
        if (bool2) {
          e((x)localObject1);
        }
        ((x)localObject2).mShadowedHolder = ((x)localObject1);
        e((x)localObject2);
        this.adH.p((x)localObject2);
        ((x)localObject1).setIsRecyclable(false);
        ((x)localObject1).mShadowingHolder = ((x)localObject2);
      }
      if (this.aep.a((x)localObject2, (x)localObject1, (RecyclerView.f.b)localObject3, localb))
      {
        hT();
        continue;
        label664:
        this.adL.c((x)localObject1, localb);
      }
    }
    label678:
    this.adL.a(this.aeT);
    label689:
    this.adQ.c(this.adH);
    this.aeE.afU = this.aeE.afX;
    this.aeg = false;
    this.aeh = false;
    this.aeE.agc = false;
    this.aeE.agd = false;
    this.adQ.afg = false;
    if (this.adH.afB != null) {
      this.adH.afB.clear();
    }
    if (this.adQ.afl)
    {
      this.adQ.afk = 0;
      this.adQ.afl = false;
      this.adH.io();
    }
    this.adQ.a(this.aeE);
    hQ();
    aa(false);
    this.adL.clear();
    int i = this.aeN[0];
    int j = this.aeN[1];
    f(this.aeN);
    if ((this.aeN[0] != i) || (this.aeN[1] != j))
    {
      i = 1;
      if (i != 0) {
        Z(0, 0);
      }
      if ((this.aeA) && (this.adP != null) && (hasFocus()) && (getDescendantFocusability() != 393216) && ((getDescendantFocusability() != 131072) || (!isFocused()))) {
        break label940;
      }
    }
    label940:
    label993:
    do
    {
      for (;;)
      {
        hX();
        return;
        i = 0;
        break;
        if (isFocused()) {
          break label1005;
        }
        localObject1 = getFocusedChild();
        if ((!adE) || ((((View)localObject1).getParent() != null) && (((View)localObject1).hasFocus()))) {
          break label993;
        }
        if (this.adK.getChildCount() != 0) {
          break label1005;
        }
        requestFocus();
      }
    } while (!this.adK.aA((View)localObject1));
    label1005:
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (this.aeE.agf != -1L)
    {
      localObject1 = localObject2;
      if (this.adP.hasStableIds()) {
        localObject1 = g(this.aeE.agf);
      }
    }
    localObject2 = null;
    if ((localObject1 == null) || (this.adK.aA(((x)localObject1).itemView)) || (!((x)localObject1).itemView.hasFocusable()))
    {
      localObject1 = localObject2;
      if (this.adK.getChildCount() > 0) {
        localObject1 = hY();
      }
      label1107:
      if (localObject1 == null) {
        break label1175;
      }
      if (this.aeE.agg == -1L) {
        break label1177;
      }
      localObject2 = ((View)localObject1).findViewById(this.aeE.agg);
      if ((localObject2 == null) || (!((View)localObject2).isFocusable())) {
        break label1177;
      }
      localObject1 = localObject2;
    }
    label1175:
    label1177:
    for (;;)
    {
      ((View)localObject1).requestFocus();
      break;
      localObject1 = ((x)localObject1).itemView;
      break label1107;
      break;
    }
  }
  
  private void hX()
  {
    this.aeE.agf = -1L;
    this.aeE.age = -1;
    this.aeE.agg = -1;
  }
  
  private View hY()
  {
    int k;
    int j;
    if (this.aeE.age != -1)
    {
      i = this.aeE.age;
      k = this.aeE.getItemCount();
      j = i;
    }
    x localx;
    for (;;)
    {
      if (j >= k) {
        break label75;
      }
      localx = bF(j);
      if (localx == null) {
        break label75;
      }
      if (localx.itemView.hasFocusable())
      {
        return localx.itemView;
        i = 0;
        break;
      }
      j += 1;
    }
    label75:
    int i = Math.min(k, i) - 1;
    while (i >= 0)
    {
      localx = bF(i);
      if (localx == null) {
        return null;
      }
      if (localx.itemView.hasFocusable()) {
        return localx.itemView;
      }
      i -= 1;
    }
    return null;
  }
  
  private void hZ()
  {
    this.aeE.bQ(1);
    m(this.aeE);
    this.aeE.agb = false;
    hF();
    this.adL.clear();
    hP();
    hV();
    if ((this.aeA) && (hasFocus()) && (this.adP != null)) {}
    for (Object localObject1 = getFocusedChild();; localObject1 = null)
    {
      if (localObject1 == null)
      {
        localObject1 = null;
        if (localObject1 != null) {
          break label363;
        }
        hX();
        label87:
        localObject1 = this.aeE;
        if ((!this.aeE.agc) || (!this.aeI)) {
          break label536;
        }
      }
      int j;
      int i;
      Object localObject2;
      label363:
      Object localObject3;
      label501:
      label536:
      for (boolean bool = true;; bool = false)
      {
        ((u)localObject1).aga = bool;
        this.aeI = false;
        this.aeH = false;
        this.aeE.afZ = this.aeE.agd;
        this.aeE.afX = this.adP.getItemCount();
        f(this.aeN);
        if (!this.aeE.agc) {
          break label541;
        }
        j = this.adK.getChildCount();
        i = 0;
        long l;
        while (i < j)
        {
          localObject1 = aN(this.adK.getChildAt(i));
          if ((!((x)localObject1).shouldIgnore()) && ((!((x)localObject1).isInvalid()) || (this.adP.hasStableIds())))
          {
            f.j((x)localObject1);
            ((x)localObject1).getUnmodifiedPayloads();
            localObject2 = new RecyclerView.f.b().n((x)localObject1);
            this.adL.b((x)localObject1, (RecyclerView.f.b)localObject2);
            if ((this.aeE.aga) && (((x)localObject1).isUpdated()) && (!((x)localObject1).isRemoved()) && (!((x)localObject1).shouldIgnore()) && (!((x)localObject1).isInvalid()))
            {
              l = f((x)localObject1);
              this.adL.a(l, (x)localObject1);
            }
          }
          i += 1;
        }
        localObject1 = aM((View)localObject1);
        if (localObject1 == null)
        {
          localObject1 = null;
          break;
        }
        localObject1 = aB((View)localObject1);
        break;
        localObject2 = this.aeE;
        if (this.adP.hasStableIds())
        {
          l = ((x)localObject1).getItemId();
          ((u)localObject2).agf = l;
          localObject2 = this.aeE;
          if (!this.aeg) {
            break label501;
          }
          i = -1;
        }
        for (;;)
        {
          ((u)localObject2).age = i;
          localObject3 = this.aeE;
          localObject1 = ((x)localObject1).itemView;
          i = ((View)localObject1).getId();
          while ((!((View)localObject1).isFocused()) && ((localObject1 instanceof ViewGroup)) && (((View)localObject1).hasFocus()))
          {
            localObject2 = ((ViewGroup)localObject1).getFocusedChild();
            localObject1 = localObject2;
            if (((View)localObject2).getId() != -1)
            {
              i = ((View)localObject2).getId();
              localObject1 = localObject2;
            }
          }
          l = -1L;
          break;
          if (((x)localObject1).isRemoved()) {
            i = ((x)localObject1).mOldPosition;
          } else {
            i = ((x)localObject1).getAdapterPosition();
          }
        }
        ((u)localObject3).agg = i;
        break label87;
      }
      label541:
      if (this.aeE.agd)
      {
        j = this.adK.gw();
        i = 0;
        while (i < j)
        {
          localObject1 = aN(this.adK.bl(i));
          if (!((x)localObject1).shouldIgnore()) {
            ((x)localObject1).saveOldPosition();
          }
          i += 1;
        }
        bool = this.aeE.afY;
        this.aeE.afY = false;
        this.adQ.c(this.adH, this.aeE);
        this.aeE.afY = bool;
        i = 0;
        if (i < this.adK.getChildCount())
        {
          localObject3 = aN(this.adK.getChildAt(i));
          label706:
          RecyclerView.f.b localb;
          if (!((x)localObject3).shouldIgnore())
          {
            localObject1 = (bv.a)this.adL.akF.get(localObject3);
            if ((localObject1 == null) || ((((bv.a)localObject1).flags & 0x4) == 0)) {
              break label764;
            }
            j = 1;
            if (j == 0)
            {
              f.j((x)localObject3);
              bool = ((x)localObject3).hasAnyOfTheFlags(8192);
              ((x)localObject3).getUnmodifiedPayloads();
              localb = new RecyclerView.f.b().n((x)localObject3);
              if (!bool) {
                break label769;
              }
              a((x)localObject3, localb);
            }
          }
          for (;;)
          {
            i += 1;
            break;
            label764:
            j = 0;
            break label706;
            label769:
            bv localbv = this.adL;
            localObject2 = (bv.a)localbv.akF.get(localObject3);
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject1 = bv.a.jd();
              localbv.akF.put(localObject3, localObject1);
            }
            ((bv.a)localObject1).flags |= 0x2;
            ((bv.a)localObject1).akH = localb;
          }
        }
        ic();
      }
      for (;;)
      {
        ab(true);
        aa(false);
        this.aeE.afW = 2;
        return;
        ic();
      }
    }
  }
  
  private void ia()
  {
    hF();
    hP();
    this.aeE.bQ(6);
    this.adJ.gb();
    this.aeE.afX = this.adP.getItemCount();
    this.aeE.afV = 0;
    this.aeE.afZ = false;
    this.adQ.c(this.adH, this.aeE);
    this.aeE.afY = false;
    this.adI = null;
    u localu = this.aeE;
    if ((this.aeE.agc) && (this.aep != null)) {}
    for (boolean bool = true;; bool = false)
    {
      localu.agc = bool;
      this.aeE.afW = 4;
      ab(true);
      aa(false);
      return;
    }
  }
  
  private void ib()
  {
    int j = 0;
    int k = this.adK.gw();
    int i = 0;
    while (i < k)
    {
      ((j)this.adK.bl(i).getLayoutParams()).afs = true;
      i += 1;
    }
    p localp = this.adH;
    k = localp.afC.size();
    i = j;
    while (i < k)
    {
      j localj = (j)((x)localp.afC.get(i)).itemView.getLayoutParams();
      if (localj != null) {
        localj.afs = true;
      }
      i += 1;
    }
  }
  
  private void ic()
  {
    int j = 0;
    int k = this.adK.gw();
    int i = 0;
    while (i < k)
    {
      localObject = aN(this.adK.bl(i));
      if (!((x)localObject).shouldIgnore()) {
        ((x)localObject).clearOldPosition();
      }
      i += 1;
    }
    Object localObject = this.adH;
    k = ((p)localObject).afC.size();
    i = 0;
    while (i < k)
    {
      ((x)((p)localObject).afC.get(i)).clearOldPosition();
      i += 1;
    }
    k = ((p)localObject).afA.size();
    i = 0;
    while (i < k)
    {
      ((x)((p)localObject).afA.get(i)).clearOldPosition();
      i += 1;
    }
    if (((p)localObject).afB != null)
    {
      k = ((p)localObject).afB.size();
      i = j;
      while (i < k)
      {
        ((x)((p)localObject).afB.get(i)).clearOldPosition();
        i += 1;
      }
    }
  }
  
  private boolean p(int paramInt1, int paramInt2)
  {
    return getScrollingChildHelper().p(paramInt1, paramInt2);
  }
  
  final void F(String paramString)
  {
    if (hS())
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + hC());
      }
      throw new IllegalStateException(paramString);
    }
    if (this.aej > 0) {
      Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(hC()));
    }
  }
  
  final void W(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.ael != null)
    {
      bool1 = bool2;
      if (!this.ael.isFinished())
      {
        bool1 = bool2;
        if (paramInt1 > 0)
        {
          this.ael.onRelease();
          bool1 = this.ael.isFinished();
        }
      }
    }
    bool2 = bool1;
    if (this.aen != null)
    {
      bool2 = bool1;
      if (!this.aen.isFinished())
      {
        bool2 = bool1;
        if (paramInt1 < 0)
        {
          this.aen.onRelease();
          bool2 = bool1 | this.aen.isFinished();
        }
      }
    }
    bool1 = bool2;
    if (this.aem != null)
    {
      bool1 = bool2;
      if (!this.aem.isFinished())
      {
        bool1 = bool2;
        if (paramInt2 > 0)
        {
          this.aem.onRelease();
          bool1 = bool2 | this.aem.isFinished();
        }
      }
    }
    bool2 = bool1;
    if (this.aeo != null)
    {
      bool2 = bool1;
      if (!this.aeo.isFinished())
      {
        bool2 = bool1;
        if (paramInt2 < 0)
        {
          this.aeo.onRelease();
          bool2 = bool1 | this.aeo.isFinished();
        }
      }
    }
    if (bool2) {
      r.I(this);
    }
  }
  
  final void X(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      hI();
      this.ael.onAbsorb(-paramInt1);
      if (paramInt2 >= 0) {
        break label66;
      }
      hK();
      this.aem.onAbsorb(-paramInt2);
    }
    for (;;)
    {
      if ((paramInt1 != 0) || (paramInt2 != 0)) {
        r.I(this);
      }
      return;
      if (paramInt1 <= 0) {
        break;
      }
      hJ();
      this.aen.onAbsorb(paramInt1);
      break;
      label66:
      if (paramInt2 > 0)
      {
        hL();
        this.aeo.onAbsorb(paramInt2);
      }
    }
  }
  
  final void Y(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(i.g(paramInt1, getPaddingLeft() + getPaddingRight(), r.Q(this)), i.g(paramInt2, getPaddingTop() + getPaddingBottom(), r.R(this)));
  }
  
  final void Z(int paramInt1, int paramInt2)
  {
    this.aej += 1;
    int i = getScrollX();
    int j = getScrollY();
    onScrollChanged(i, j, i, j);
    if (this.aeF != null) {
      this.aeF.onScrolled(this, paramInt1, paramInt2);
    }
    if (this.aeG != null)
    {
      i = this.aeG.size() - 1;
      while (i >= 0)
      {
        ((n)this.aeG.get(i)).onScrolled(this, paramInt1, paramInt2);
        i -= 1;
      }
    }
    this.aej -= 1;
  }
  
  public final void a(h paramh)
  {
    if (this.adQ != null) {
      this.adQ.F("Cannot add item decoration during a scroll  or layout");
    }
    if (this.adS.isEmpty()) {
      setWillNotDraw(false);
    }
    this.adS.add(paramh);
    ib();
    requestLayout();
  }
  
  public final void a(m paramm)
  {
    this.adT.add(paramm);
  }
  
  public final void a(n paramn)
  {
    if (this.aeG == null) {
      this.aeG = new ArrayList();
    }
    this.aeG.add(paramn);
  }
  
  final void a(x paramx, RecyclerView.f.b paramb)
  {
    paramx.setFlags(0, 8192);
    if ((this.aeE.aga) && (paramx.isUpdated()) && (!paramx.isRemoved()) && (!paramx.shouldIgnore()))
    {
      long l = f(paramx);
      this.adL.a(l, paramx);
    }
    this.adL.b(paramx, paramb);
  }
  
  public final boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt, int paramInt5)
  {
    return getScrollingChildHelper().a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt, paramInt5);
  }
  
  public final boolean a(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt3)
  {
    return getScrollingChildHelper().a(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, paramInt3);
  }
  
  final boolean a(x paramx, int paramInt)
  {
    if (hS())
    {
      paramx.mPendingAccessibilityState = paramInt;
      this.aeQ.add(paramx);
      return false;
    }
    r.l(paramx.itemView, paramInt);
    return true;
  }
  
  public final x aB(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this)) {
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    }
    return aN(paramView);
  }
  
  public final View aM(View paramView)
  {
    for (ViewParent localViewParent = paramView.getParent(); (localViewParent != null) && (localViewParent != this) && ((localViewParent instanceof View)); localViewParent = paramView.getParent()) {
      paramView = (View)localViewParent;
    }
    if (localViewParent == this) {
      return paramView;
    }
    return null;
  }
  
  final Rect aQ(View paramView)
  {
    j localj = (j)paramView.getLayoutParams();
    if (!localj.afs) {
      return localj.abA;
    }
    if ((this.aeE.afZ) && ((localj.afr.isUpdated()) || (localj.afr.isInvalid()))) {
      return localj.abA;
    }
    Rect localRect = localj.abA;
    localRect.set(0, 0, 0, 0);
    int j = this.adS.size();
    int i = 0;
    while (i < j)
    {
      this.Gl.set(0, 0, 0, 0);
      ((h)this.adS.get(i)).getItemOffsets(this.Gl, paramView, this, this.aeE);
      localRect.left += this.Gl.left;
      localRect.top += this.Gl.top;
      localRect.right += this.Gl.right;
      localRect.bottom += this.Gl.bottom;
      i += 1;
    }
    localj.afs = false;
    return localRect;
  }
  
  final void aS(View paramView)
  {
    x localx = aN(paramView);
    if ((this.adP != null) && (localx != null)) {
      this.adP.onViewDetachedFromWindow(localx);
    }
    if (this.aef != null)
    {
      int i = this.aef.size() - 1;
      while (i >= 0)
      {
        ((k)this.aef.get(i)).bc(paramView);
        i -= 1;
      }
    }
  }
  
  final void aa(boolean paramBoolean)
  {
    if (this.adZ <= 0) {
      this.adZ = 1;
    }
    if ((!paramBoolean) && (!this.aeb)) {
      this.aea = false;
    }
    if (this.adZ == 1)
    {
      if ((paramBoolean) && (this.aea) && (!this.aeb) && (this.adQ != null) && (this.adP != null)) {
        hW();
      }
      if (!this.aeb) {
        this.aea = false;
      }
    }
    this.adZ -= 1;
  }
  
  final void ab(boolean paramBoolean)
  {
    this.aei -= 1;
    if (this.aei <= 0)
    {
      this.aei = 0;
      if (paramBoolean)
      {
        int i = this.aed;
        this.aed = 0;
        Object localObject;
        if ((i != 0) && (hR()))
        {
          localObject = AccessibilityEvent.obtain();
          ((AccessibilityEvent)localObject).setEventType(2048);
          if (Build.VERSION.SDK_INT >= 19) {
            ((AccessibilityEvent)localObject).setContentChangeTypes(i);
          }
          sendAccessibilityEventUnchecked((AccessibilityEvent)localObject);
        }
        i = this.aeQ.size() - 1;
        while (i >= 0)
        {
          localObject = (x)this.aeQ.get(i);
          if ((((x)localObject).itemView.getParent() == this) && (!((x)localObject).shouldIgnore()))
          {
            int j = ((x)localObject).mPendingAccessibilityState;
            if (j != -1)
            {
              r.l(((x)localObject).itemView, j);
              ((x)localObject).mPendingAccessibilityState = -1;
            }
          }
          i -= 1;
        }
        this.aeQ.clear();
      }
    }
  }
  
  final void ac(boolean paramBoolean)
  {
    this.aeh |= paramBoolean;
    this.aeg = true;
    int j = this.adK.gw();
    int i = 0;
    while (i < j)
    {
      localObject = aN(this.adK.bl(i));
      if ((localObject != null) && (!((x)localObject).shouldIgnore())) {
        ((x)localObject).addFlags(6);
      }
      i += 1;
    }
    ib();
    Object localObject = this.adH;
    j = ((p)localObject).afC.size();
    i = 0;
    while (i < j)
    {
      x localx = (x)((p)localObject).afC.get(i);
      if (localx != null)
      {
        localx.addFlags(6);
        localx.addChangePayload(null);
      }
      i += 1;
    }
    if ((((p)localObject).aeU.adP == null) || (!((p)localObject).aeU.adP.hasStableIds())) {
      ((p)localObject).ip();
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    super.addFocusables(paramArrayList, paramInt1, paramInt2);
  }
  
  public final void au(int paramInt)
  {
    getScrollingChildHelper().au(paramInt);
  }
  
  public final void b(h paramh)
  {
    if (this.adQ != null) {
      this.adQ.F("Cannot remove item decoration during a scroll  or layout");
    }
    this.adS.remove(paramh);
    if (this.adS.isEmpty()) {
      if (getOverScrollMode() != 2) {
        break label60;
      }
    }
    label60:
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      ib();
      requestLayout();
      return;
    }
  }
  
  public final void b(m paramm)
  {
    this.adT.remove(paramm);
    if (this.adU == paramm) {
      this.adU = null;
    }
  }
  
  public final void b(n paramn)
  {
    if (this.aeG != null) {
      this.aeG.remove(paramn);
    }
  }
  
  public final void bA(int paramInt)
  {
    if (this.aeb) {
      return;
    }
    hG();
    if (this.adQ == null)
    {
      Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    this.adQ.bA(paramInt);
    awakenScrollBars();
  }
  
  final void bE(int paramInt)
  {
    if (this.adQ == null) {
      return;
    }
    this.adQ.bA(paramInt);
    awakenScrollBars();
  }
  
  final void c(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j = this.adK.gw();
    int i = 0;
    if (i < j)
    {
      localObject = aN(this.adK.bl(i));
      if ((localObject != null) && (!((x)localObject).shouldIgnore()))
      {
        if (((x)localObject).mPosition < paramInt1 + paramInt2) {
          break label82;
        }
        ((x)localObject).offsetPosition(-paramInt2, paramBoolean);
        this.aeE.afY = true;
      }
      for (;;)
      {
        i += 1;
        break;
        label82:
        if (((x)localObject).mPosition >= paramInt1)
        {
          ((x)localObject).flagRemovedAndOffsetPosition(paramInt1 - 1, -paramInt2, paramBoolean);
          this.aeE.afY = true;
        }
      }
    }
    Object localObject = this.adH;
    i = ((p)localObject).afC.size() - 1;
    if (i >= 0)
    {
      x localx = (x)((p)localObject).afC.get(i);
      if (localx != null)
      {
        if (localx.mPosition < paramInt1 + paramInt2) {
          break label184;
        }
        localx.offsetPosition(-paramInt2, paramBoolean);
      }
      for (;;)
      {
        i -= 1;
        break;
        label184:
        if (localx.mPosition >= paramInt1)
        {
          localx.addFlags(8);
          ((p)localObject).bN(i);
        }
      }
    }
    requestLayout();
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof j)) && (this.adQ.a((j)paramLayoutParams));
  }
  
  public int computeHorizontalScrollExtent()
  {
    if (this.adQ == null) {}
    while (!this.adQ.hg()) {
      return 0;
    }
    return this.adQ.f(this.aeE);
  }
  
  public int computeHorizontalScrollOffset()
  {
    if (this.adQ == null) {}
    while (!this.adQ.hg()) {
      return 0;
    }
    return this.adQ.d(this.aeE);
  }
  
  public int computeHorizontalScrollRange()
  {
    if (this.adQ == null) {}
    while (!this.adQ.hg()) {
      return 0;
    }
    return this.adQ.h(this.aeE);
  }
  
  public int computeVerticalScrollExtent()
  {
    if (this.adQ == null) {}
    while (!this.adQ.hh()) {
      return 0;
    }
    return this.adQ.g(this.aeE);
  }
  
  public int computeVerticalScrollOffset()
  {
    if (this.adQ == null) {}
    while (!this.adQ.hh()) {
      return 0;
    }
    return this.adQ.e(this.aeE);
  }
  
  public int computeVerticalScrollRange()
  {
    if (this.adQ == null) {}
    while (!this.adQ.hh()) {
      return 0;
    }
    return this.adQ.i(this.aeE);
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return getScrollingChildHelper().dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return getScrollingChildHelper().dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return getScrollingChildHelper().dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return getScrollingChildHelper().dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public void draw(Canvas paramCanvas)
  {
    int k = 1;
    int m = 0;
    super.draw(paramCanvas);
    int j = this.adS.size();
    int i = 0;
    while (i < j)
    {
      ((h)this.adS.get(i)).onDrawOver(paramCanvas, this, this.aeE);
      i += 1;
    }
    int n;
    if ((this.ael != null) && (!this.ael.isFinished()))
    {
      n = paramCanvas.save();
      if (this.adM)
      {
        i = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i + -getHeight(), 0.0F);
        if ((this.ael == null) || (!this.ael.draw(paramCanvas))) {
          break label456;
        }
        j = 1;
        label128:
        paramCanvas.restoreToCount(n);
      }
    }
    for (;;)
    {
      i = j;
      if (this.aem != null)
      {
        i = j;
        if (!this.aem.isFinished())
        {
          n = paramCanvas.save();
          if (this.adM) {
            paramCanvas.translate(getPaddingLeft(), getPaddingTop());
          }
          if ((this.aem == null) || (!this.aem.draw(paramCanvas))) {
            break label461;
          }
          i = 1;
          label202:
          i = j | i;
          paramCanvas.restoreToCount(n);
        }
      }
      j = i;
      if (this.aen != null)
      {
        j = i;
        if (!this.aen.isFinished())
        {
          n = paramCanvas.save();
          int i1 = getWidth();
          if (!this.adM) {
            break label466;
          }
          j = getPaddingTop();
          label257:
          paramCanvas.rotate(90.0F);
          paramCanvas.translate(-j, -i1);
          if ((this.aen == null) || (!this.aen.draw(paramCanvas))) {
            break label471;
          }
          j = 1;
          label295:
          j = i | j;
          paramCanvas.restoreToCount(n);
        }
      }
      i = j;
      if (this.aeo != null)
      {
        i = j;
        if (!this.aeo.isFinished())
        {
          n = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!this.adM) {
            break label476;
          }
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label372:
          i = m;
          if (this.aeo != null)
          {
            i = m;
            if (this.aeo.draw(paramCanvas)) {
              i = 1;
            }
          }
          i = j | i;
          paramCanvas.restoreToCount(n);
        }
      }
      if ((i == 0) && (this.aep != null) && (this.adS.size() > 0) && (this.aep.isRunning())) {
        i = k;
      }
      for (;;)
      {
        if (i != 0) {
          r.I(this);
        }
        return;
        i = 0;
        break;
        label456:
        j = 0;
        break label128;
        label461:
        i = 0;
        break label202;
        label466:
        j = 0;
        break label257;
        label471:
        j = 0;
        break label295;
        label476:
        paramCanvas.translate(-getWidth(), -getHeight());
        break label372;
      }
      j = 0;
    }
  }
  
  public boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  final void e(x paramx)
  {
    View localView = paramx.itemView;
    if (localView.getParent() == this) {}
    for (int i = 1;; i = 0)
    {
      this.adH.p(aB(localView));
      if (!paramx.isTmpDetached()) {
        break;
      }
      this.adK.a(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i == 0)
    {
      this.adK.a(localView, -1, true);
      return;
    }
    paramx = this.adK;
    i = paramx.Xz.indexOfChild(localView);
    if (i < 0) {
      throw new IllegalArgumentException("view is not a child, cannot hide " + localView);
    }
    paramx.XA.set(i);
    paramx.ay(localView);
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    int i1 = -1;
    int n = 0;
    int i;
    Object localObject;
    label74:
    int k;
    if ((this.adP != null) && (this.adQ != null) && (!hS()) && (!this.aeb))
    {
      i = 1;
      localObject = FocusFinder.getInstance();
      if ((i == 0) || ((paramInt != 2) && (paramInt != 1))) {
        break label327;
      }
      if (!this.adQ.hh()) {
        break label991;
      }
      if (paramInt != 2) {
        break label225;
      }
      i = 130;
      if (((FocusFinder)localObject).findNextFocus(this, paramView, i) != null) {
        break label231;
      }
      k = 1;
      label88:
      j = k;
      if (adD) {
        paramInt = i;
      }
    }
    label149:
    label157:
    label167:
    label225:
    label231:
    label237:
    label242:
    label248:
    label254:
    label260:
    label288:
    label327:
    label441:
    label547:
    label600:
    label755:
    label986:
    label991:
    for (int j = k;; j = 0)
    {
      int m = j;
      k = paramInt;
      if (j == 0)
      {
        m = j;
        k = paramInt;
        if (this.adQ.hg())
        {
          if (r.K(this.adQ.YZ) != 1) {
            break label237;
          }
          i = 1;
          if (paramInt != 2) {
            break label242;
          }
          j = 1;
          if ((j ^ i) == 0) {
            break label248;
          }
          i = 66;
          if (((FocusFinder)localObject).findNextFocus(this, paramView, i) != null) {
            break label254;
          }
        }
      }
      for (j = 1;; j = 0)
      {
        m = j;
        k = paramInt;
        if (adD)
        {
          k = i;
          m = j;
        }
        if (m == 0) {
          break label288;
        }
        hE();
        if (aM(paramView) != null) {
          break label260;
        }
        return null;
        i = 0;
        break;
        i = 33;
        break label74;
        k = 0;
        break label88;
        i = 0;
        break label149;
        j = 0;
        break label157;
        i = 17;
        break label167;
      }
      hF();
      this.adQ.a(paramView, k, this.adH, this.aeE);
      aa(false);
      localObject = ((FocusFinder)localObject).findNextFocus(this, paramView, k);
      while ((localObject != null) && (!((View)localObject).hasFocusable())) {
        if (getFocusedChild() == null)
        {
          return super.focusSearch(paramView, k);
          View localView = ((FocusFinder)localObject).findNextFocus(this, paramView, paramInt);
          localObject = localView;
          k = paramInt;
          if (localView == null)
          {
            localObject = localView;
            k = paramInt;
            if (i != 0)
            {
              hE();
              if (aM(paramView) == null) {
                return null;
              }
              hF();
              localObject = this.adQ.a(paramView, paramInt, this.adH, this.aeE);
              aa(false);
              k = paramInt;
            }
          }
        }
        else
        {
          d((View)localObject, null);
          return paramView;
        }
      }
      paramInt = n;
      if (localObject != null)
      {
        if (localObject != this) {
          break label441;
        }
        paramInt = n;
      }
      for (;;)
      {
        if (paramInt != 0)
        {
          return (View)localObject;
          paramInt = n;
          if (aM((View)localObject) != null) {
            if (paramView == null)
            {
              paramInt = 1;
            }
            else if (aM(paramView) == null)
            {
              paramInt = 1;
            }
            else
            {
              this.Gl.set(0, 0, paramView.getWidth(), paramView.getHeight());
              this.nh.set(0, 0, ((View)localObject).getWidth(), ((View)localObject).getHeight());
              offsetDescendantRectToMyCoords(paramView, this.Gl);
              offsetDescendantRectToMyCoords((View)localObject, this.nh);
              if (r.K(this.adQ.YZ) == 1)
              {
                m = -1;
                if (((this.Gl.left >= this.nh.left) && (this.Gl.right > this.nh.left)) || (this.Gl.right >= this.nh.right)) {
                  break label755;
                }
                i = 1;
              }
            }
          }
        }
      }
      for (;;)
      {
        if (((this.Gl.top < this.nh.top) || (this.Gl.bottom <= this.nh.top)) && (this.Gl.bottom < this.nh.bottom)) {
          j = 1;
        }
        for (;;)
        {
          switch (k)
          {
          default: 
            throw new IllegalArgumentException("Invalid direction: " + k + hC());
            m = 1;
            break label547;
            if (((this.Gl.right <= this.nh.right) && (this.Gl.left < this.nh.right)) || (this.Gl.left <= this.nh.left)) {
              break label986;
            }
            i = -1;
            break label600;
            if ((this.Gl.bottom > this.nh.bottom) || (this.Gl.top >= this.nh.bottom))
            {
              j = i1;
              if (this.Gl.top > this.nh.top) {}
            }
            else
            {
              j = 0;
            }
            break;
          }
        }
        paramInt = n;
        if (i >= 0) {
          break;
        }
        paramInt = 1;
        break;
        paramInt = n;
        if (i <= 0) {
          break;
        }
        paramInt = 1;
        break;
        paramInt = n;
        if (j >= 0) {
          break;
        }
        paramInt = 1;
        break;
        paramInt = n;
        if (j <= 0) {
          break;
        }
        paramInt = 1;
        break;
        if (j <= 0)
        {
          paramInt = n;
          if (j != 0) {
            break;
          }
          paramInt = n;
          if (m * i < 0) {
            break;
          }
        }
        paramInt = 1;
        break;
        if (j >= 0)
        {
          paramInt = n;
          if (j != 0) {
            break;
          }
          paramInt = n;
          if (m * i > 0) {
            break;
          }
        }
        paramInt = 1;
        break;
        return super.focusSearch(paramView, k);
        i = 0;
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (this.adQ == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager" + hC());
    }
    return this.adQ.hb();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (this.adQ == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager" + hC());
    }
    return this.adQ.a(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (this.adQ == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager" + hC());
    }
    return this.adQ.d(paramLayoutParams);
  }
  
  public a getAdapter()
  {
    return this.adP;
  }
  
  public int getBaseline()
  {
    if (this.adQ != null) {
      return -1;
    }
    return super.getBaseline();
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (this.aeM == null) {
      return super.getChildDrawingOrder(paramInt1, paramInt2);
    }
    return this.aeM.ad(paramInt1, paramInt2);
  }
  
  public boolean getClipToPadding()
  {
    return this.adM;
  }
  
  public bb getCompatAccessibilityDelegate()
  {
    return this.aeL;
  }
  
  public e getEdgeEffectFactory()
  {
    return this.aek;
  }
  
  public f getItemAnimator()
  {
    return this.aep;
  }
  
  public int getItemDecorationCount()
  {
    return this.adS.size();
  }
  
  public i getLayoutManager()
  {
    return this.adQ;
  }
  
  public int getMaxFlingVelocity()
  {
    return this.aex;
  }
  
  public int getMinFlingVelocity()
  {
    return this.aew;
  }
  
  long getNanoTime()
  {
    if (adC) {
      return System.nanoTime();
    }
    return 0L;
  }
  
  public l getOnFlingListener()
  {
    return this.aev;
  }
  
  public boolean getPreserveFocusAfterLayout()
  {
    return this.aeA;
  }
  
  public o getRecycledViewPool()
  {
    return this.adH.getRecycledViewPool();
  }
  
  public int getScrollState()
  {
    return this.pe;
  }
  
  j getScrollingChildHelper()
  {
    if (this.aeO == null) {
      this.aeO = new j(this);
    }
    return this.aeO;
  }
  
  final int h(x paramx)
  {
    int i;
    if ((paramx.hasAnyOfTheFlags(524)) || (!paramx.isBound())) {
      i = -1;
    }
    f localf;
    int j;
    int n;
    int m;
    do
    {
      return i;
      localf = this.adJ;
      j = paramx.mPosition;
      n = localf.Vy.size();
      m = 0;
      i = j;
    } while (m >= n);
    paramx = (f.b)localf.Vy.get(m);
    switch (paramx.wC)
    {
    default: 
      i = j;
    }
    for (;;)
    {
      m += 1;
      j = i;
      break;
      i = j;
      if (paramx.VF <= j)
      {
        i = j + paramx.VH;
        continue;
        i = j;
        if (paramx.VF <= j)
        {
          if (paramx.VF + paramx.VH > j) {
            return -1;
          }
          i = j - paramx.VH;
          continue;
          if (paramx.VF == j)
          {
            i = paramx.VH;
          }
          else
          {
            int k = j;
            if (paramx.VF < j) {
              k = j - 1;
            }
            i = k;
            if (paramx.VH <= k) {
              i = k + 1;
            }
          }
        }
      }
    }
  }
  
  final String hC()
  {
    return " " + super.toString() + ", adapter:" + this.adP + ", layout:" + this.adQ + ", context:" + getContext();
  }
  
  final void hD()
  {
    if (this.aep != null) {
      this.aep.gD();
    }
    if (this.adQ != null)
    {
      this.adQ.d(this.adH);
      this.adQ.c(this.adH);
    }
    this.adH.clear();
  }
  
  final void hE()
  {
    int k = 0;
    if ((!this.adY) || (this.aeg))
    {
      d.beginSection("RV FullInvalidate");
      hW();
      d.endSection();
    }
    label168:
    label175:
    do
    {
      do
      {
        return;
      } while (!this.adJ.ga());
      if ((this.adJ.be(4)) && (!this.adJ.be(11)))
      {
        d.beginSection("RV PartialInvalidate");
        hF();
        hP();
        this.adJ.fY();
        int i;
        if (!this.aea)
        {
          int m = this.adK.getChildCount();
          i = 0;
          int j = k;
          if (i < m)
          {
            x localx = aN(this.adK.getChildAt(i));
            if ((localx == null) || (localx.shouldIgnore()) || (!localx.isUpdated())) {
              break label168;
            }
            j = 1;
          }
          if (j == 0) {
            break label175;
          }
          hW();
        }
        for (;;)
        {
          aa(true);
          ab(true);
          d.endSection();
          return;
          i += 1;
          break;
          this.adJ.fZ();
        }
      }
    } while (!this.adJ.ga());
    d.beginSection("RV FullInvalidate");
    hW();
    d.endSection();
  }
  
  final void hF()
  {
    this.adZ += 1;
    if ((this.adZ == 1) && (!this.aeb)) {
      this.aea = false;
    }
  }
  
  final void hP()
  {
    this.aei += 1;
  }
  
  final boolean hR()
  {
    return (this.jl != null) && (this.jl.isEnabled());
  }
  
  final void hT()
  {
    if ((!this.aeK) && (this.adV))
    {
      r.b(this, this.aeR);
      this.aeK = true;
    }
  }
  
  public boolean hasNestedScrollingParent()
  {
    return getScrollingChildHelper().at(0);
  }
  
  public final boolean ie()
  {
    return (!this.adY) || (this.aeg) || (this.adJ.ga());
  }
  
  final void jdMethod_if()
  {
    int j = this.adK.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = this.adK.getChildAt(i);
      Object localObject = aB(localView);
      if ((localObject != null) && (((x)localObject).mShadowingHolder != null))
      {
        localObject = ((x)localObject).mShadowingHolder.itemView;
        int k = localView.getLeft();
        int m = localView.getTop();
        if ((k != ((View)localObject).getLeft()) || (m != ((View)localObject).getTop())) {
          ((View)localObject).layout(k, m, ((View)localObject).getWidth() + k, ((View)localObject).getHeight() + m);
        }
      }
      i += 1;
    }
  }
  
  public boolean isAttachedToWindow()
  {
    return this.adV;
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return getScrollingChildHelper().FJ;
  }
  
  final void m(u paramu)
  {
    if (getScrollState() == 2)
    {
      OverScroller localOverScroller = w.a(this.aeB);
      paramu.agh = (localOverScroller.getFinalX() - localOverScroller.getCurrX());
      paramu.agi = (localOverScroller.getFinalY() - localOverScroller.getCurrY());
      return;
    }
    paramu.agh = 0;
    paramu.agi = 0;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.aei = 0;
    this.adV = true;
    boolean bool;
    float f;
    if ((this.adY) && (!isLayoutRequested()))
    {
      bool = true;
      this.adY = bool;
      if (this.adQ != null) {
        this.adQ.lH = true;
      }
      this.aeK = false;
      if (adC)
      {
        this.aeC = ((ar)ar.Zt.get());
        if (this.aeC == null)
        {
          this.aeC = new ar();
          Display localDisplay = r.aj(this);
          if ((isInEditMode()) || (localDisplay == null)) {
            break label162;
          }
          f = localDisplay.getRefreshRate();
          if (f < 30.0F) {
            break label162;
          }
        }
      }
    }
    for (;;)
    {
      this.aeC.Zw = ((1.0E9F / f));
      ar.Zt.set(this.aeC);
      this.aeC.Zu.add(this);
      return;
      bool = false;
      break;
      label162:
      f = 60.0F;
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.aep != null) {
      this.aep.gD();
    }
    hG();
    this.adV = false;
    if (this.adQ != null) {
      this.adQ.b(this, this.adH);
    }
    this.aeQ.clear();
    removeCallbacks(this.aeR);
    bv.a.je();
    if ((adC) && (this.aeC != null))
    {
      this.aeC.Zu.remove(this);
      this.aeC = null;
    }
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int j = this.adS.size();
    int i = 0;
    while (i < j)
    {
      ((h)this.adS.get(i)).onDraw(paramCanvas, this, this.aeE);
      i += 1;
    }
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (this.adQ == null) {}
    label114:
    label188:
    for (;;)
    {
      return false;
      if ((!this.aeb) && (paramMotionEvent.getAction() == 8))
      {
        float f1;
        float f3;
        float f2;
        if ((paramMotionEvent.getSource() & 0x2) != 0) {
          if (this.adQ.hh())
          {
            f1 = -paramMotionEvent.getAxisValue(9);
            if (!this.adQ.hg()) {
              break label114;
            }
            f3 = paramMotionEvent.getAxisValue(10);
            f2 = f1;
            f1 = f3;
          }
        }
        for (;;)
        {
          if ((f2 == 0.0F) && (f1 == 0.0F)) {
            break label188;
          }
          a((int)(this.aey * f1), (int)(this.aez * f2), paramMotionEvent);
          return false;
          f1 = 0.0F;
          break;
          f3 = 0.0F;
          f2 = f1;
          f1 = f3;
          continue;
          if ((paramMotionEvent.getSource() & 0x400000) != 0)
          {
            f1 = paramMotionEvent.getAxisValue(26);
            if (this.adQ.hh())
            {
              f2 = -f1;
              f1 = 0.0F;
            }
            else if (this.adQ.hg())
            {
              f2 = 0.0F;
            }
            else
            {
              f1 = 0.0F;
              f2 = 0.0F;
            }
          }
          else
          {
            f1 = 0.0F;
            f2 = 0.0F;
          }
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.aeb) {
      return false;
    }
    int j = paramMotionEvent.getAction();
    if ((j == 3) || (j == 0)) {
      this.adU = null;
    }
    int k = this.adT.size();
    int i = 0;
    if (i < k)
    {
      m localm = (m)this.adT.get(i);
      if ((localm.e(paramMotionEvent)) && (j != 3)) {
        this.adU = localm;
      }
    }
    for (i = 1;; i = 0)
    {
      if (i == 0) {
        break label104;
      }
      hO();
      return true;
      i += 1;
      break;
    }
    label104:
    if (this.adQ == null) {
      return false;
    }
    boolean bool1 = this.adQ.hg();
    boolean bool2 = this.adQ.hh();
    if (this.jJ == null) {
      this.jJ = VelocityTracker.obtain();
    }
    this.jJ.addMovement(paramMotionEvent);
    j = paramMotionEvent.getActionMasked();
    i = paramMotionEvent.getActionIndex();
    switch (j)
    {
    case 4: 
    default: 
      if (this.pe == 1) {
        return true;
      }
      break;
    case 0: 
      if (this.aec) {
        this.aec = false;
      }
      this.aeq = paramMotionEvent.getPointerId(0);
      i = (int)(paramMotionEvent.getX() + 0.5F);
      this.aet = i;
      this.aer = i;
      i = (int)(paramMotionEvent.getY() + 0.5F);
      this.aeu = i;
      this.aes = i;
      if (this.pe == 2)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        setScrollState(1);
      }
      paramMotionEvent = this.aeP;
      this.aeP[1] = 0;
      paramMotionEvent[0] = 0;
      if (!bool1) {}
      break;
    }
    for (i = 1;; i = 0)
    {
      j = i;
      if (bool2) {
        j = i | 0x2;
      }
      p(j, 0);
      break;
      this.aeq = paramMotionEvent.getPointerId(i);
      j = (int)(paramMotionEvent.getX(i) + 0.5F);
      this.aet = j;
      this.aer = j;
      i = (int)(paramMotionEvent.getY(i) + 0.5F);
      this.aeu = i;
      this.aes = i;
      break;
      j = paramMotionEvent.findPointerIndex(this.aeq);
      if (j < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.aeq + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      i = (int)(paramMotionEvent.getX(j) + 0.5F);
      k = (int)(paramMotionEvent.getY(j) + 0.5F);
      if (this.pe == 1) {
        break;
      }
      j = this.aer;
      int m = this.aes;
      if ((bool1) && (Math.abs(i - j) > this.nc)) {
        this.aet = i;
      }
      for (i = 1;; i = 0)
      {
        j = i;
        if (bool2)
        {
          j = i;
          if (Math.abs(k - m) > this.nc)
          {
            this.aeu = k;
            j = 1;
          }
        }
        if (j == 0) {
          break;
        }
        setScrollState(1);
        break;
        g(paramMotionEvent);
        break;
        this.jJ.clear();
        au(0);
        break;
        hO();
        break;
        return false;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    d.beginSection("RV OnLayout");
    hW();
    d.endSection();
    this.adY = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = 0;
    if (this.adQ == null) {
      Y(paramInt1, paramInt2);
    }
    do
    {
      int i;
      do
      {
        return;
        if (!this.adQ.hf()) {
          break;
        }
        int k = View.MeasureSpec.getMode(paramInt1);
        int m = View.MeasureSpec.getMode(paramInt2);
        this.adQ.ag(paramInt1, paramInt2);
        i = j;
        if (k == 1073741824)
        {
          i = j;
          if (m == 1073741824) {
            i = 1;
          }
        }
      } while ((i != 0) || (this.adP == null));
      if (this.aeE.afW == 1) {
        hZ();
      }
      this.adQ.ae(paramInt1, paramInt2);
      this.aeE.agb = true;
      ia();
      this.adQ.af(paramInt1, paramInt2);
    } while (!this.adQ.hl());
    this.adQ.ae(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
    this.aeE.agb = true;
    ia();
    this.adQ.af(paramInt1, paramInt2);
    return;
    if (this.adW)
    {
      this.adQ.ag(paramInt1, paramInt2);
      return;
    }
    if (this.aee)
    {
      hF();
      hP();
      hV();
      ab(true);
      if (this.aeE.agd)
      {
        this.aeE.afZ = true;
        this.aee = false;
        aa(false);
        label256:
        if (this.adP == null) {
          break label345;
        }
      }
    }
    label345:
    for (this.aeE.afX = this.adP.getItemCount();; this.aeE.afX = 0)
    {
      hF();
      this.adQ.ag(paramInt1, paramInt2);
      aa(false);
      this.aeE.afZ = false;
      return;
      this.adJ.gb();
      this.aeE.afZ = false;
      break;
      if (!this.aeE.agd) {
        break label256;
      }
      setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
      return;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    if (hS()) {
      return false;
    }
    return super.onRequestFocusInDescendants(paramInt, paramRect);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof s)) {
      super.onRestoreInstanceState(paramParcelable);
    }
    do
    {
      return;
      this.adI = ((s)paramParcelable);
      super.onRestoreInstanceState(this.adI.EV);
    } while ((this.adQ == null) || (this.adI.afI == null));
    this.adQ.onRestoreInstanceState(this.adI.afI);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    s locals = new s(super.onSaveInstanceState());
    if (this.adI != null)
    {
      locals.afI = this.adI.afI;
      return locals;
    }
    if (this.adQ != null)
    {
      locals.afI = this.adQ.onSaveInstanceState();
      return locals;
    }
    locals.afI = null;
    return locals;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      hM();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.aeb) || (this.aec)) {
      return false;
    }
    int i = paramMotionEvent.getAction();
    if (this.adU != null)
    {
      if (i == 0) {
        this.adU = null;
      }
    }
    else
    {
      if (i == 0) {
        break label150;
      }
      j = this.adT.size();
      i = 0;
      if (i >= j) {
        break label150;
      }
      localObject = (m)this.adT.get(i);
      if (!((m)localObject).e(paramMotionEvent)) {
        break label141;
      }
      this.adU = ((m)localObject);
      i = 1;
    }
    for (;;)
    {
      if (i == 0) {
        break label156;
      }
      hO();
      return true;
      this.adU.f(paramMotionEvent);
      if ((i == 3) || (i == 1)) {
        this.adU = null;
      }
      i = 1;
      continue;
      label141:
      i += 1;
      break;
      label150:
      i = 0;
    }
    label156:
    if (this.adQ == null) {
      return false;
    }
    boolean bool1 = this.adQ.hg();
    boolean bool2 = this.adQ.hh();
    if (this.jJ == null) {
      this.jJ = VelocityTracker.obtain();
    }
    Object localObject = MotionEvent.obtain(paramMotionEvent);
    int j = paramMotionEvent.getActionMasked();
    i = paramMotionEvent.getActionIndex();
    if (j == 0)
    {
      int[] arrayOfInt = this.aeP;
      this.aeP[1] = 0;
      arrayOfInt[0] = 0;
    }
    ((MotionEvent)localObject).offsetLocation(this.aeP[0], this.aeP[1]);
    int m;
    int k;
    label750:
    label804:
    label880:
    label947:
    label959:
    label971:
    label977:
    label1036:
    label1054:
    label1091:
    label1094:
    label1119:
    label1124:
    boolean bool3;
    switch (j)
    {
    case 4: 
    default: 
      i = 0;
    case 0: 
    case 5: 
    case 2: 
    case 6: 
      for (;;)
      {
        if (i == 0) {
          this.jJ.addMovement((MotionEvent)localObject);
        }
        ((MotionEvent)localObject).recycle();
        return true;
        this.aeq = paramMotionEvent.getPointerId(0);
        i = (int)(paramMotionEvent.getX() + 0.5F);
        this.aet = i;
        this.aer = i;
        i = (int)(paramMotionEvent.getY() + 0.5F);
        this.aeu = i;
        this.aes = i;
        i = 0;
        if (bool1) {
          i = 1;
        }
        j = i;
        if (bool2) {
          j = i | 0x2;
        }
        p(j, 0);
        i = 0;
        continue;
        this.aeq = paramMotionEvent.getPointerId(i);
        j = (int)(paramMotionEvent.getX(i) + 0.5F);
        this.aet = j;
        this.aer = j;
        i = (int)(paramMotionEvent.getY(i) + 0.5F);
        this.aeu = i;
        this.aes = i;
        i = 0;
        continue;
        i = paramMotionEvent.findPointerIndex(this.aeq);
        if (i < 0)
        {
          Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.aeq + " not found. Did any MotionEvents get skipped?");
          return false;
        }
        int i2 = (int)(paramMotionEvent.getX(i) + 0.5F);
        int i3 = (int)(paramMotionEvent.getY(i) + 0.5F);
        m = this.aet - i2;
        k = this.aeu - i3;
        j = m;
        i = k;
        if (a(m, k, this.JA, this.Jz, 0))
        {
          j = m - this.JA[0];
          i = k - this.JA[1];
          ((MotionEvent)localObject).offsetLocation(this.Jz[0], this.Jz[1]);
          paramMotionEvent = this.aeP;
          paramMotionEvent[0] += this.Jz[0];
          paramMotionEvent = this.aeP;
          paramMotionEvent[1] += this.Jz[1];
        }
        m = j;
        int n = i;
        if (this.pe != 1)
        {
          n = 0;
          k = j;
          m = n;
          if (bool1)
          {
            k = j;
            m = n;
            if (Math.abs(j) > this.nc)
            {
              if (j <= 0) {
                break label947;
              }
              j -= this.nc;
              m = 1;
              k = j;
            }
          }
          j = i;
          int i1 = m;
          if (bool2)
          {
            j = i;
            i1 = m;
            if (Math.abs(i) > this.nc)
            {
              if (i <= 0) {
                break label959;
              }
              i -= this.nc;
              i1 = 1;
              j = i;
            }
          }
          m = k;
          n = j;
          if (i1 != 0)
          {
            setScrollState(1);
            n = j;
            m = k;
          }
        }
        if (this.pe == 1)
        {
          this.aet = (i2 - this.Jz[0]);
          this.aeu = (i3 - this.Jz[1]);
          if (!bool1) {
            break label971;
          }
          i = m;
          if (!bool2) {
            break label977;
          }
        }
        for (j = n;; j = 0)
        {
          if (a(i, j, (MotionEvent)localObject)) {
            getParent().requestDisallowInterceptTouchEvent(true);
          }
          if ((this.aeC != null) && ((m != 0) || (n != 0))) {
            this.aeC.a(this, m, n);
          }
          i = 0;
          break;
          j = this.nc + j;
          break label750;
          i = this.nc + i;
          break label804;
          i = 0;
          break label880;
        }
        g(paramMotionEvent);
        i = 0;
      }
    case 1: 
      this.jJ.addMovement((MotionEvent)localObject);
      this.jJ.computeCurrentVelocity(1000, this.aex);
      float f1;
      float f2;
      if (bool1)
      {
        f1 = -this.jJ.getXVelocity(this.aeq);
        if (!bool2) {
          break label1119;
        }
        f2 = -this.jJ.getYVelocity(this.aeq);
        if ((f1 != 0.0F) || (f2 != 0.0F))
        {
          j = (int)f1;
          k = (int)f2;
          if (this.adQ != null) {
            break label1124;
          }
          Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        }
      }
      while (this.aeb)
      {
        i = 0;
        if (i == 0) {
          setScrollState(0);
        }
        hN();
        i = 1;
        break;
        f1 = 0.0F;
        break label1036;
        f2 = 0.0F;
        break label1054;
      }
      bool2 = this.adQ.hg();
      bool3 = this.adQ.hh();
      if ((!bool2) || (Math.abs(j) < this.aew)) {
        j = 0;
      }
      break;
    }
    for (;;)
    {
      if ((!bool3) || (Math.abs(k) < this.aew)) {
        k = 0;
      }
      for (;;)
      {
        if (((j == 0) && (k == 0)) || (dispatchNestedPreFling(j, k))) {
          break label1091;
        }
        if ((bool2) || (bool3)) {}
        for (bool1 = true;; bool1 = false)
        {
          dispatchNestedFling(j, k, bool1);
          if ((this.aev == null) || (!this.aev.im())) {
            break label1267;
          }
          i = 1;
          break;
        }
        label1267:
        if (!bool1) {
          break label1091;
        }
        i = 0;
        if (bool2) {
          i = 1;
        }
        m = i;
        if (bool3) {
          m = i | 0x2;
        }
        p(m, 1);
        i = Math.max(-this.aex, Math.min(j, this.aex));
        j = Math.max(-this.aex, Math.min(k, this.aex));
        paramMotionEvent = this.aeB;
        paramMotionEvent.aeU.setScrollState(2);
        paramMotionEvent.agk = 0;
        paramMotionEvent.agj = 0;
        paramMotionEvent.mZ.fling(0, 0, i, j, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        paramMotionEvent.is();
        i = 1;
        break label1094;
        hO();
        break;
      }
    }
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    x localx = aN(paramView);
    if (localx != null)
    {
      if (!localx.isTmpDetached()) {
        break label36;
      }
      localx.clearTmpDetachFlag();
    }
    label36:
    while (localx.shouldIgnore())
    {
      paramView.clearAnimation();
      aS(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localx + hC());
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    if ((this.adQ.ii()) || (hS())) {}
    for (int i = 1;; i = 0)
    {
      if ((i == 0) && (paramView2 != null)) {
        d(paramView1, paramView2);
      }
      super.requestChildFocus(paramView1, paramView2);
      return;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    return this.adQ.a(this, paramView, paramRect, paramBoolean, false);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    int j = this.adT.size();
    int i = 0;
    while (i < j)
    {
      ((m)this.adT.get(i)).Q(paramBoolean);
      i += 1;
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    if ((this.adZ == 0) && (!this.aeb))
    {
      super.requestLayout();
      return;
    }
    this.aea = true;
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (this.adQ == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      do
      {
        return;
      } while (this.aeb);
      bool1 = this.adQ.hg();
      bool2 = this.adQ.hh();
    } while ((!bool1) && (!bool2));
    if (bool1) {
      if (!bool2) {
        break label74;
      }
    }
    for (;;)
    {
      a(paramInt1, paramInt2, null);
      return;
      paramInt1 = 0;
      break;
      label74:
      paramInt2 = 0;
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    int i = 0;
    int j = 0;
    if (hS())
    {
      if (paramAccessibilityEvent == null) {
        break label65;
      }
      if (Build.VERSION.SDK_INT < 19) {
        break label51;
      }
      i = paramAccessibilityEvent.getContentChangeTypes();
    }
    for (;;)
    {
      if (i == 0) {
        i = j;
      }
      for (;;)
      {
        this.aed |= i;
        i = 1;
        if (i != 0)
        {
          return;
          label51:
          i = 0;
          break;
        }
        super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
        return;
      }
      label65:
      i = 0;
    }
  }
  
  public void setAccessibilityDelegateCompat(bb parambb)
  {
    this.aeL = parambb;
    r.a(this, this.aeL);
  }
  
  public void setAdapter(a parama)
  {
    setLayoutFrozen(false);
    if (this.adP != null)
    {
      this.adP.unregisterAdapterDataObserver(this.adG);
      this.adP.onDetachedFromRecyclerView(this);
    }
    hD();
    this.adJ.reset();
    a locala = this.adP;
    this.adP = parama;
    if (parama != null)
    {
      parama.registerAdapterDataObserver(this.adG);
      parama.onAttachedToRecyclerView(this);
    }
    Object localObject = this.adH;
    parama = this.adP;
    ((p)localObject).clear();
    localObject = ((p)localObject).getRecycledViewPool();
    if (locala != null) {
      ((o)localObject).detach();
    }
    if (((o)localObject).afv == 0)
    {
      int i = 0;
      while (i < ((o)localObject).afu.size())
      {
        ((RecyclerView.o.a)((o)localObject).afu.valueAt(i)).afw.clear();
        i += 1;
      }
    }
    if (parama != null) {
      ((o)localObject).in();
    }
    this.aeE.afY = true;
    ac(false);
    requestLayout();
  }
  
  public void setChildDrawingOrderCallback(d paramd)
  {
    if (paramd == this.aeM) {
      return;
    }
    this.aeM = paramd;
    if (this.aeM != null) {}
    for (boolean bool = true;; bool = false)
    {
      setChildrenDrawingOrderEnabled(bool);
      return;
    }
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != this.adM) {
      hM();
    }
    this.adM = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (this.adY) {
      requestLayout();
    }
  }
  
  public void setEdgeEffectFactory(e parame)
  {
    l.E(parame);
    this.aek = parame;
    hM();
  }
  
  public void setHasFixedSize(boolean paramBoolean)
  {
    this.adW = paramBoolean;
  }
  
  public void setItemAnimator(f paramf)
  {
    if (this.aep != null)
    {
      this.aep.gD();
      this.aep.aeV = null;
    }
    this.aep = paramf;
    if (this.aep != null) {
      this.aep.aeV = this.aeJ;
    }
  }
  
  public void setItemViewCacheSize(int paramInt)
  {
    p localp = this.adH;
    localp.afE = paramInt;
    localp.io();
  }
  
  public void setLayoutFrozen(boolean paramBoolean)
  {
    if (paramBoolean != this.aeb)
    {
      F("Do not setLayoutFrozen in layout or scroll");
      if (!paramBoolean)
      {
        this.aeb = false;
        if ((this.aea) && (this.adQ != null) && (this.adP != null)) {
          requestLayout();
        }
        this.aea = false;
      }
    }
    else
    {
      return;
    }
    long l = SystemClock.uptimeMillis();
    onTouchEvent(MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0));
    this.aeb = true;
    this.aec = true;
    hG();
  }
  
  public void setLayoutManager(i parami)
  {
    if (parami == this.adQ) {
      return;
    }
    hG();
    if (this.adQ != null)
    {
      if (this.aep != null) {
        this.aep.gD();
      }
      this.adQ.d(this.adH);
      this.adQ.c(this.adH);
      this.adH.clear();
      if (this.adV) {
        this.adQ.b(this, this.adH);
      }
      this.adQ.d(null);
      this.adQ = null;
    }
    ai localai;
    for (;;)
    {
      localai = this.adK;
      for (ai.a locala = localai.XA;; locala = locala.XD)
      {
        locala.XC = 0L;
        if (locala.XD == null) {
          break;
        }
      }
      this.adH.clear();
    }
    int i = localai.XB.size() - 1;
    while (i >= 0)
    {
      localai.Xz.aD((View)localai.XB.get(i));
      localai.XB.remove(i);
      i -= 1;
    }
    localai.Xz.removeAllViews();
    this.adQ = parami;
    if (parami != null)
    {
      if (parami.YZ != null) {
        throw new IllegalArgumentException("LayoutManager " + parami + " is already attached to a RecyclerView:" + parami.YZ.hC());
      }
      this.adQ.d(this);
      if (this.adV) {
        this.adQ.lH = true;
      }
    }
    this.adH.io();
    requestLayout();
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    getScrollingChildHelper().setNestedScrollingEnabled(paramBoolean);
  }
  
  public void setOnFlingListener(l paraml)
  {
    this.aev = paraml;
  }
  
  @Deprecated
  public void setOnScrollListener(n paramn)
  {
    this.aeF = paramn;
  }
  
  public void setPreserveFocusAfterLayout(boolean paramBoolean)
  {
    this.aeA = paramBoolean;
  }
  
  public void setRecycledViewPool(o paramo)
  {
    p localp = this.adH;
    if (localp.afG != null) {
      localp.afG.detach();
    }
    localp.afG = paramo;
    if (paramo != null)
    {
      paramo = localp.afG;
      localp.aeU.getAdapter();
      paramo.in();
    }
  }
  
  public void setRecyclerListener(q paramq)
  {
    this.adR = paramq;
  }
  
  void setScrollState(int paramInt)
  {
    if (paramInt == this.pe) {}
    for (;;)
    {
      return;
      this.pe = paramInt;
      if (paramInt != 2) {
        hH();
      }
      if (this.adQ != null) {
        this.adQ.bJ(paramInt);
      }
      if (this.aeF != null) {
        this.aeF.onScrollStateChanged(this, paramInt);
      }
      if (this.aeG != null)
      {
        int i = this.aeG.size() - 1;
        while (i >= 0)
        {
          ((n)this.aeG.get(i)).onScrollStateChanged(this, paramInt);
          i -= 1;
        }
      }
    }
  }
  
  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default: 
      Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + paramInt + "; using default value");
    case 0: 
      this.nc = localViewConfiguration.getScaledTouchSlop();
      return;
    }
    this.nc = localViewConfiguration.getScaledPagingTouchSlop();
  }
  
  public void setViewCacheExtension(v paramv)
  {
    this.adH.afH = paramv;
  }
  
  public final void smoothScrollToPosition(int paramInt)
  {
    if (this.aeb) {
      return;
    }
    if (this.adQ == null)
    {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    this.adQ.a(this, paramInt);
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return getScrollingChildHelper().p(paramInt, 0);
  }
  
  public void stopNestedScroll()
  {
    getScrollingChildHelper().au(0);
  }
  
  public static abstract class a<VH extends RecyclerView.x>
  {
    private boolean mHasStableIds = false;
    private final RecyclerView.b mObservable = new RecyclerView.b();
    
    public final void bindViewHolder(VH paramVH, int paramInt)
    {
      paramVH.mPosition = paramInt;
      if (hasStableIds()) {
        paramVH.mItemId = getItemId(paramInt);
      }
      paramVH.setFlags(1, 519);
      d.beginSection("RV OnBindView");
      onBindViewHolder(paramVH, paramInt, paramVH.getUnmodifiedPayloads());
      paramVH.clearPayload();
      paramVH = paramVH.itemView.getLayoutParams();
      if ((paramVH instanceof RecyclerView.j)) {
        ((RecyclerView.j)paramVH).afs = true;
      }
      d.endSection();
    }
    
    public final VH createViewHolder(ViewGroup paramViewGroup, int paramInt)
    {
      try
      {
        d.beginSection("RV CreateView");
        paramViewGroup = onCreateViewHolder(paramViewGroup, paramInt);
        if (paramViewGroup.itemView.getParent() != null) {
          throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
        }
      }
      finally
      {
        d.endSection();
      }
      paramViewGroup.mItemViewType = paramInt;
      d.endSection();
      return paramViewGroup;
    }
    
    public abstract int getItemCount();
    
    public long getItemId(int paramInt)
    {
      return -1L;
    }
    
    public int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public final boolean hasObservers()
    {
      return this.mObservable.hasObservers();
    }
    
    public final boolean hasStableIds()
    {
      return this.mHasStableIds;
    }
    
    public final void notifyDataSetChanged()
    {
      this.mObservable.notifyChanged();
    }
    
    public final void notifyItemChanged(int paramInt)
    {
      this.mObservable.notifyItemRangeChanged(paramInt, 1);
    }
    
    public final void notifyItemChanged(int paramInt, Object paramObject)
    {
      this.mObservable.notifyItemRangeChanged(paramInt, 1, paramObject);
    }
    
    public final void notifyItemInserted(int paramInt)
    {
      this.mObservable.notifyItemRangeInserted(paramInt, 1);
    }
    
    public final void notifyItemMoved(int paramInt1, int paramInt2)
    {
      this.mObservable.notifyItemMoved(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeChanged(int paramInt1, int paramInt2)
    {
      this.mObservable.notifyItemRangeChanged(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      this.mObservable.notifyItemRangeChanged(paramInt1, paramInt2, paramObject);
    }
    
    public final void notifyItemRangeInserted(int paramInt1, int paramInt2)
    {
      this.mObservable.notifyItemRangeInserted(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeRemoved(int paramInt1, int paramInt2)
    {
      this.mObservable.notifyItemRangeRemoved(paramInt1, paramInt2);
    }
    
    public final void notifyItemRemoved(int paramInt)
    {
      this.mObservable.notifyItemRangeRemoved(paramInt, 1);
    }
    
    public void onAttachedToRecyclerView(RecyclerView paramRecyclerView) {}
    
    public abstract void onBindViewHolder(VH paramVH, int paramInt);
    
    public void onBindViewHolder(VH paramVH, int paramInt, List<Object> paramList)
    {
      onBindViewHolder(paramVH, paramInt);
    }
    
    public abstract VH onCreateViewHolder(ViewGroup paramViewGroup, int paramInt);
    
    public void onDetachedFromRecyclerView(RecyclerView paramRecyclerView) {}
    
    public boolean onFailedToRecycleView(VH paramVH)
    {
      return false;
    }
    
    public void onViewAttachedToWindow(VH paramVH) {}
    
    public void onViewDetachedFromWindow(VH paramVH) {}
    
    public void onViewRecycled(VH paramVH) {}
    
    public void registerAdapterDataObserver(RecyclerView.c paramc)
    {
      this.mObservable.registerObserver(paramc);
    }
    
    public void setHasStableIds(boolean paramBoolean)
    {
      if (hasObservers()) {
        throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
      }
      this.mHasStableIds = paramBoolean;
    }
    
    public void unregisterAdapterDataObserver(RecyclerView.c paramc)
    {
      this.mObservable.unregisterObserver(paramc);
    }
  }
  
  static final class b
    extends Observable<RecyclerView.c>
  {
    public final boolean hasObservers()
    {
      return !this.mObservers.isEmpty();
    }
    
    public final void notifyChanged()
    {
      int i = this.mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.c)this.mObservers.get(i)).onChanged();
        i -= 1;
      }
    }
    
    public final void notifyItemMoved(int paramInt1, int paramInt2)
    {
      int i = this.mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.c)this.mObservers.get(i)).ac(paramInt1, paramInt2);
        i -= 1;
      }
    }
    
    public final void notifyItemRangeChanged(int paramInt1, int paramInt2)
    {
      notifyItemRangeChanged(paramInt1, paramInt2, null);
    }
    
    public final void notifyItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      int i = this.mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.c)this.mObservers.get(i)).b(paramInt1, paramInt2, paramObject);
        i -= 1;
      }
    }
    
    public final void notifyItemRangeInserted(int paramInt1, int paramInt2)
    {
      int i = this.mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.c)this.mObservers.get(i)).aa(paramInt1, paramInt2);
        i -= 1;
      }
    }
    
    public final void notifyItemRangeRemoved(int paramInt1, int paramInt2)
    {
      int i = this.mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.c)this.mObservers.get(i)).ab(paramInt1, paramInt2);
        i -= 1;
      }
    }
  }
  
  public static abstract class c
  {
    public void aa(int paramInt1, int paramInt2) {}
    
    public void ab(int paramInt1, int paramInt2) {}
    
    public void ac(int paramInt1, int paramInt2) {}
    
    public void b(int paramInt1, int paramInt2, Object paramObject) {}
    
    public void onChanged() {}
  }
  
  public static abstract interface d
  {
    public abstract int ad(int paramInt1, int paramInt2);
  }
  
  public static final class e
  {
    protected static EdgeEffect c(RecyclerView paramRecyclerView)
    {
      return new EdgeEffect(paramRecyclerView.getContext());
    }
  }
  
  public static abstract class f
  {
    a aeV = null;
    private ArrayList<Object> aeW = new ArrayList();
    long aeX = 120L;
    public long aeY = 120L;
    public long aeZ = 250L;
    long afa = 250L;
    
    static int j(RecyclerView.x paramx)
    {
      int j = RecyclerView.x.access$1600(paramx) & 0xE;
      int i;
      if (paramx.isInvalid()) {
        i = 4;
      }
      int k;
      int m;
      do
      {
        do
        {
          do
          {
            do
            {
              return i;
              i = j;
            } while ((j & 0x4) != 0);
            k = paramx.getOldPosition();
            m = paramx.getAdapterPosition();
            i = j;
          } while (k == -1);
          i = j;
        } while (m == -1);
        i = j;
      } while (k == m);
      return j | 0x800;
    }
    
    public abstract boolean a(RecyclerView.x paramx1, RecyclerView.x paramx2, b paramb1, b paramb2);
    
    public boolean a(RecyclerView.x paramx, List<Object> paramList)
    {
      return l(paramx);
    }
    
    public abstract void c(RecyclerView.x paramx);
    
    public abstract boolean d(RecyclerView.x paramx, b paramb1, b paramb2);
    
    public abstract boolean e(RecyclerView.x paramx, b paramb1, b paramb2);
    
    public abstract boolean f(RecyclerView.x paramx, b paramb1, b paramb2);
    
    public abstract void gB();
    
    public abstract void gD();
    
    public final void ih()
    {
      int j = this.aeW.size();
      int i = 0;
      while (i < j)
      {
        this.aeW.get(i);
        i += 1;
      }
      this.aeW.clear();
    }
    
    public abstract boolean isRunning();
    
    public final void k(RecyclerView.x paramx)
    {
      if (this.aeV != null) {
        this.aeV.m(paramx);
      }
    }
    
    public boolean l(RecyclerView.x paramx)
    {
      return true;
    }
    
    static abstract interface a
    {
      public abstract void m(RecyclerView.x paramx);
    }
    
    public static final class b
    {
      public int bottom;
      public int left;
      public int right;
      public int top;
      
      public final b n(RecyclerView.x paramx)
      {
        paramx = paramx.itemView;
        this.left = paramx.getLeft();
        this.top = paramx.getTop();
        this.right = paramx.getRight();
        this.bottom = paramx.getBottom();
        return this;
      }
    }
  }
  
  private final class g
    implements RecyclerView.f.a
  {
    g() {}
    
    public final void m(RecyclerView.x paramx)
    {
      boolean bool = true;
      paramx.setIsRecyclable(true);
      if ((paramx.mShadowedHolder != null) && (paramx.mShadowingHolder == null)) {
        paramx.mShadowedHolder = null;
      }
      paramx.mShadowingHolder = null;
      RecyclerView localRecyclerView;
      Object localObject;
      ai localai;
      int i;
      if (!RecyclerView.x.access$1500(paramx))
      {
        localRecyclerView = RecyclerView.this;
        localObject = paramx.itemView;
        localRecyclerView.hF();
        localai = localRecyclerView.adK;
        i = localai.Xz.indexOfChild((View)localObject);
        if (i != -1) {
          break label155;
        }
        localai.az((View)localObject);
        i = 1;
        if (i != 0)
        {
          localObject = RecyclerView.aN((View)localObject);
          localRecyclerView.adH.p((RecyclerView.x)localObject);
          localRecyclerView.adH.o((RecyclerView.x)localObject);
        }
        if (i != 0) {
          break label206;
        }
      }
      for (;;)
      {
        localRecyclerView.aa(bool);
        if ((i == 0) && (paramx.isTmpDetached())) {
          RecyclerView.this.removeDetachedView(paramx.itemView, false);
        }
        return;
        label155:
        if (localai.XA.get(i))
        {
          localai.XA.bm(i);
          localai.az((View)localObject);
          localai.Xz.removeViewAt(i);
          i = 1;
          break;
        }
        i = 0;
        break;
        label206:
        bool = false;
      }
    }
  }
  
  public static abstract class h
  {
    @Deprecated
    public void getItemOffsets(Rect paramRect, int paramInt, RecyclerView paramRecyclerView)
    {
      paramRect.set(0, 0, 0, 0);
    }
    
    public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.u paramu)
    {
      getItemOffsets(paramRect, ((RecyclerView.j)paramView.getLayoutParams()).afr.getLayoutPosition(), paramRecyclerView);
    }
    
    @Deprecated
    public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
    
    public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.u paramu)
    {
      onDraw(paramCanvas, paramRecyclerView);
    }
    
    @Deprecated
    public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
    
    public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.u paramu)
    {
      onDrawOver(paramCanvas, paramRecyclerView);
    }
  }
  
  public static abstract class i
  {
    RecyclerView YZ;
    ai adK;
    private final bu.b afb = new bu.b()
    {
      public final int ba(View paramAnonymousView)
      {
        RecyclerView.j localj = (RecyclerView.j)paramAnonymousView.getLayoutParams();
        return RecyclerView.i.aW(paramAnonymousView) - localj.leftMargin;
      }
      
      public final int bb(View paramAnonymousView)
      {
        RecyclerView.j localj = (RecyclerView.j)paramAnonymousView.getLayoutParams();
        int i = RecyclerView.i.aY(paramAnonymousView);
        return localj.rightMargin + i;
      }
      
      public final View getChildAt(int paramAnonymousInt)
      {
        return RecyclerView.i.this.getChildAt(paramAnonymousInt);
      }
      
      public final int ik()
      {
        return RecyclerView.i.this.getPaddingLeft();
      }
      
      public final int il()
      {
        return RecyclerView.i.this.db - RecyclerView.i.this.getPaddingRight();
      }
    };
    private final bu.b afc = new bu.b()
    {
      public final int ba(View paramAnonymousView)
      {
        RecyclerView.j localj = (RecyclerView.j)paramAnonymousView.getLayoutParams();
        return RecyclerView.i.aX(paramAnonymousView) - localj.topMargin;
      }
      
      public final int bb(View paramAnonymousView)
      {
        RecyclerView.j localj = (RecyclerView.j)paramAnonymousView.getLayoutParams();
        int i = RecyclerView.i.aZ(paramAnonymousView);
        return localj.bottomMargin + i;
      }
      
      public final View getChildAt(int paramAnonymousInt)
      {
        return RecyclerView.i.this.getChildAt(paramAnonymousInt);
      }
      
      public final int ik()
      {
        return RecyclerView.i.this.getPaddingTop();
      }
      
      public final int il()
      {
        return RecyclerView.i.this.dc - RecyclerView.i.this.getPaddingBottom();
      }
    };
    bu afd = new bu(this.afb);
    bu afe = new bu(this.afc);
    RecyclerView.t aff;
    public boolean afg = false;
    boolean afh = false;
    boolean afi = true;
    boolean afj = true;
    int afk;
    boolean afl;
    int afm;
    int afn;
    int db;
    int dc;
    boolean lH = false;
    
    public static b a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
    {
      b localb = new b();
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.c.RecyclerView, paramInt1, paramInt2);
      localb.orientation = paramContext.getInt(a.c.RecyclerView_android_orientation, 1);
      localb.spanCount = paramContext.getInt(a.c.RecyclerView_spanCount, 1);
      localb.afp = paramContext.getBoolean(a.c.RecyclerView_reverseLayout, false);
      localb.afq = paramContext.getBoolean(a.c.RecyclerView_stackFromEnd, false);
      paramContext.recycle();
      return localb;
    }
    
    public static int aT(View paramView)
    {
      return ((RecyclerView.j)paramView.getLayoutParams()).afr.getLayoutPosition();
    }
    
    public static int aU(View paramView)
    {
      Rect localRect = ((RecyclerView.j)paramView.getLayoutParams()).abA;
      int i = paramView.getMeasuredWidth();
      int j = localRect.left;
      return localRect.right + (i + j);
    }
    
    public static int aV(View paramView)
    {
      Rect localRect = ((RecyclerView.j)paramView.getLayoutParams()).abA;
      int i = paramView.getMeasuredHeight();
      int j = localRect.top;
      return localRect.bottom + (i + j);
    }
    
    public static int aW(View paramView)
    {
      return paramView.getLeft() - ((RecyclerView.j)paramView.getLayoutParams()).abA.left;
    }
    
    public static int aX(View paramView)
    {
      return paramView.getTop() - ((RecyclerView.j)paramView.getLayoutParams()).abA.top;
    }
    
    public static int aY(View paramView)
    {
      int i = paramView.getRight();
      return ((RecyclerView.j)paramView.getLayoutParams()).abA.right + i;
    }
    
    public static int aZ(View paramView)
    {
      int i = paramView.getBottom();
      return ((RecyclerView.j)paramView.getLayoutParams()).abA.bottom + i;
    }
    
    public static int b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
    {
      int i = Math.max(0, paramInt1 - paramInt3);
      if (paramBoolean) {
        if (paramInt4 >= 0)
        {
          paramInt1 = 1073741824;
          paramInt3 = paramInt4;
        }
      }
      for (;;)
      {
        return View.MeasureSpec.makeMeasureSpec(paramInt3, paramInt1);
        if (paramInt4 == -1)
        {
          paramInt3 = i;
          paramInt1 = paramInt2;
          switch (paramInt2)
          {
          }
          paramInt1 = 0;
          paramInt3 = 0;
        }
        else if (paramInt4 == -2)
        {
          paramInt3 = 0;
          do
          {
            paramInt1 = 0;
            break;
            if (paramInt4 >= 0)
            {
              paramInt1 = 1073741824;
              paramInt3 = paramInt4;
              break;
            }
            paramInt3 = i;
            paramInt1 = paramInt2;
            if (paramInt4 == -1) {
              break;
            }
            if (paramInt4 != -2) {
              break label148;
            }
            if (paramInt2 == Integer.MIN_VALUE) {
              break label139;
            }
            paramInt3 = i;
          } while (paramInt2 != 1073741824);
          label139:
          paramInt1 = Integer.MIN_VALUE;
          paramInt3 = i;
        }
        else
        {
          label148:
          paramInt1 = 0;
          paramInt3 = 0;
        }
      }
    }
    
    private void bG(int paramInt)
    {
      getChildAt(paramInt);
      this.adK.detachViewFromParent(paramInt);
    }
    
    public static int g(int paramInt1, int paramInt2, int paramInt3)
    {
      int j = View.MeasureSpec.getMode(paramInt1);
      int i = View.MeasureSpec.getSize(paramInt1);
      paramInt1 = i;
      switch (j)
      {
      default: 
        paramInt1 = Math.max(paramInt2, paramInt3);
      case 1073741824: 
        return paramInt1;
      }
      return Math.min(i, Math.max(paramInt2, paramInt3));
    }
    
    public static void h(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      RecyclerView.j localj = (RecyclerView.j)paramView.getLayoutParams();
      Rect localRect = localj.abA;
      paramView.layout(localRect.left + paramInt1 + localj.leftMargin, localRect.top + paramInt2 + localj.topMargin, paramInt3 - localRect.right - localj.rightMargin, paramInt4 - localRect.bottom - localj.bottomMargin);
    }
    
    static boolean h(int paramInt1, int paramInt2, int paramInt3)
    {
      int i = View.MeasureSpec.getMode(paramInt2);
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      if ((paramInt3 > 0) && (paramInt1 != paramInt3)) {}
      do
      {
        do
        {
          return false;
          switch (i)
          {
          default: 
            return false;
          }
        } while (paramInt2 < paramInt1);
        return true;
        return true;
      } while (paramInt2 != paramInt1);
      return true;
    }
    
    private void removeViewAt(int paramInt)
    {
      if (getChildAt(paramInt) != null)
      {
        ai localai = this.adK;
        paramInt = localai.bk(paramInt);
        View localView = localai.Xz.getChildAt(paramInt);
        if (localView != null)
        {
          if (localai.XA.bm(paramInt)) {
            localai.az(localView);
          }
          localai.Xz.removeViewAt(paramInt);
        }
      }
    }
    
    public void F(String paramString)
    {
      if (this.YZ != null) {
        this.YZ.F(paramString);
      }
    }
    
    public void I(int paramInt1, int paramInt2) {}
    
    public void J(int paramInt1, int paramInt2) {}
    
    public void K(int paramInt1, int paramInt2) {}
    
    public void L(int paramInt1, int paramInt2) {}
    
    public int a(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
    {
      return 0;
    }
    
    public int a(RecyclerView.p paramp, RecyclerView.u paramu)
    {
      if ((this.YZ == null) || (this.YZ.adP == null)) {}
      while (!hh()) {
        return 1;
      }
      return this.YZ.adP.getItemCount();
    }
    
    public RecyclerView.j a(Context paramContext, AttributeSet paramAttributeSet)
    {
      return new RecyclerView.j(paramContext, paramAttributeSet);
    }
    
    public View a(View paramView, int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
    {
      return null;
    }
    
    public void a(int paramInt1, int paramInt2, RecyclerView.u paramu, a parama) {}
    
    public void a(int paramInt, a parama) {}
    
    public final void a(int paramInt, RecyclerView.p paramp)
    {
      View localView = getChildAt(paramInt);
      removeViewAt(paramInt);
      paramp.bd(localView);
    }
    
    public void a(Rect paramRect, int paramInt1, int paramInt2)
    {
      int i = paramRect.width();
      int j = getPaddingLeft();
      int k = getPaddingRight();
      int m = paramRect.height();
      int n = getPaddingTop();
      int i1 = getPaddingBottom();
      setMeasuredDimension(g(paramInt1, i + j + k, r.Q(this.YZ)), g(paramInt2, m + n + i1, r.R(this.YZ)));
    }
    
    public void a(RecyclerView.p paramp, RecyclerView.u paramu, View paramView, android.support.v4.view.a.a parama)
    {
      int i;
      if (hh())
      {
        i = aT(paramView);
        if (!hg()) {
          break label48;
        }
      }
      label48:
      for (int j = aT(paramView);; j = 0)
      {
        parama.G(a.b.a(i, 1, j, 1, false));
        return;
        i = 0;
        break;
      }
    }
    
    public final void a(RecyclerView.t paramt)
    {
      if ((this.aff != null) && (paramt != this.aff) && (this.aff.afL)) {
        this.aff.stop();
      }
      this.aff = paramt;
      paramt = this.aff;
      paramt.YZ = this.YZ;
      paramt.adr = this;
      if (paramt.afJ == -1) {
        throw new IllegalArgumentException("Invalid target position");
      }
      paramt.YZ.aeE.afJ = paramt.afJ;
      paramt.afL = true;
      paramt.afK = true;
      int i = paramt.afJ;
      paramt.afM = paramt.YZ.adQ.by(i);
      paramt.YZ.aeB.is();
    }
    
    public void a(RecyclerView.u paramu) {}
    
    public void a(RecyclerView paramRecyclerView, int paramInt)
    {
      Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
    }
    
    public void a(RecyclerView paramRecyclerView, RecyclerView.p paramp) {}
    
    public final void a(View paramView, RecyclerView.p paramp)
    {
      ai localai = this.adK;
      int i = localai.Xz.indexOfChild(paramView);
      if (i >= 0)
      {
        if (localai.XA.bm(i)) {
          localai.az(paramView);
        }
        localai.Xz.removeViewAt(i);
      }
      paramp.bd(paramView);
    }
    
    public boolean a(RecyclerView.j paramj)
    {
      return paramj != null;
    }
    
    public final boolean a(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2)
    {
      int[] arrayOfInt = new int[2];
      int i2 = getPaddingLeft();
      int m = getPaddingTop();
      int i3 = this.db - getPaddingRight();
      int i1 = this.dc;
      int i6 = getPaddingBottom();
      int i4 = paramView.getLeft() + paramRect.left - paramView.getScrollX();
      int n = paramView.getTop() + paramRect.top - paramView.getScrollY();
      int i5 = i4 + paramRect.width();
      int i7 = paramRect.height();
      int i = Math.min(0, i4 - i2);
      int j = Math.min(0, n - m);
      int k = Math.max(0, i5 - i3);
      i1 = Math.max(0, n + i7 - (i1 - i6));
      if (r.K(this.YZ) == 1) {
        if (k != 0)
        {
          i = k;
          if (j == 0) {
            break label271;
          }
          label162:
          arrayOfInt[0] = i;
          arrayOfInt[1] = j;
          k = arrayOfInt[0];
          j = arrayOfInt[1];
          if (paramBoolean2)
          {
            paramView = paramRecyclerView.getFocusedChild();
            if (paramView != null) {
              break label286;
            }
            i = 0;
            label203:
            if (i == 0) {
              break label495;
            }
          }
          if ((k == 0) && (j == 0)) {
            break label495;
          }
          if (!paramBoolean1) {
            break label401;
          }
          paramRecyclerView.scrollBy(k, j);
        }
      }
      for (;;)
      {
        return true;
        i = Math.max(i, i5 - i3);
        break;
        if (i != 0) {
          break;
        }
        for (;;)
        {
          i = Math.min(i4 - i2, k);
        }
        label271:
        j = Math.min(n - m, i1);
        break label162;
        label286:
        i = getPaddingLeft();
        m = getPaddingTop();
        n = this.db;
        i1 = getPaddingRight();
        i2 = this.dc;
        i3 = getPaddingBottom();
        paramRect = this.YZ.Gl;
        RecyclerView.d(paramView, paramRect);
        if ((paramRect.left - k >= n - i1) || (paramRect.right - k <= i) || (paramRect.top - j >= i2 - i3) || (paramRect.bottom - j <= m))
        {
          i = 0;
          break label203;
        }
        i = 1;
        break label203;
        label401:
        if (paramRecyclerView.adQ == null)
        {
          Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        }
        else if (!paramRecyclerView.aeb)
        {
          i = k;
          if (!paramRecyclerView.adQ.hg()) {
            i = 0;
          }
          if (!paramRecyclerView.adQ.hh()) {
            j = 0;
          }
          if ((i != 0) || (j != 0))
          {
            paramRecyclerView = paramRecyclerView.aeB;
            paramRecyclerView.b(i, j, paramRecyclerView.ah(i, j), RecyclerView.aeS);
          }
        }
      }
      label495:
      return false;
    }
    
    final boolean a(View paramView, int paramInt1, int paramInt2, RecyclerView.j paramj)
    {
      return (paramView.isLayoutRequested()) || (!this.afi) || (!h(paramView.getWidth(), paramInt1, paramj.width)) || (!h(paramView.getHeight(), paramInt2, paramj.height));
    }
    
    public final View aM(View paramView)
    {
      if (this.YZ == null) {}
      do
      {
        return null;
        paramView = this.YZ.aM(paramView);
      } while ((paramView == null) || (this.adK.aA(paramView)));
      return paramView;
    }
    
    final void ae(int paramInt1, int paramInt2)
    {
      this.db = View.MeasureSpec.getSize(paramInt1);
      this.afm = View.MeasureSpec.getMode(paramInt1);
      if ((this.afm == 0) && (!RecyclerView.adA)) {
        this.db = 0;
      }
      this.dc = View.MeasureSpec.getSize(paramInt2);
      this.afn = View.MeasureSpec.getMode(paramInt2);
      if ((this.afn == 0) && (!RecyclerView.adA)) {
        this.dc = 0;
      }
    }
    
    final void af(int paramInt1, int paramInt2)
    {
      int i5 = getChildCount();
      if (i5 == 0)
      {
        this.YZ.Y(paramInt1, paramInt2);
        return;
      }
      int i = 0;
      int j = Integer.MIN_VALUE;
      int n = Integer.MIN_VALUE;
      int k = Integer.MAX_VALUE;
      int i3 = Integer.MAX_VALUE;
      while (i < i5)
      {
        View localView = getChildAt(i);
        Rect localRect = this.YZ.Gl;
        RecyclerView.d(localView, localRect);
        int m = i3;
        if (localRect.left < i3) {
          m = localRect.left;
        }
        int i1 = n;
        if (localRect.right > n) {
          i1 = localRect.right;
        }
        int i2 = k;
        if (localRect.top < k) {
          i2 = localRect.top;
        }
        int i4 = j;
        if (localRect.bottom > j) {
          i4 = localRect.bottom;
        }
        i += 1;
        i3 = m;
        n = i1;
        k = i2;
        j = i4;
      }
      this.YZ.Gl.set(i3, k, n, j);
      a(this.YZ.Gl, paramInt1, paramInt2);
    }
    
    public final void ag(int paramInt1, int paramInt2)
    {
      this.YZ.Y(paramInt1, paramInt2);
    }
    
    public int b(int paramInt, RecyclerView.p paramp, RecyclerView.u paramu)
    {
      return 0;
    }
    
    public int b(RecyclerView.p paramp, RecyclerView.u paramu)
    {
      if ((this.YZ == null) || (this.YZ.adP == null)) {}
      while (!hg()) {
        return 1;
      }
      return this.YZ.adP.getItemCount();
    }
    
    public final void b(RecyclerView.p paramp)
    {
      int i = getChildCount() - 1;
      if (i >= 0)
      {
        View localView = getChildAt(i);
        RecyclerView.x localx = RecyclerView.aN(localView);
        if (!localx.shouldIgnore())
        {
          if ((!localx.isInvalid()) || (localx.isRemoved()) || (this.YZ.adP.hasStableIds())) {
            break label78;
          }
          removeViewAt(i);
          paramp.o(localx);
        }
        for (;;)
        {
          i -= 1;
          break;
          label78:
          bG(i);
          paramp.bf(localView);
          this.YZ.adL.s(localx);
        }
      }
    }
    
    final void b(RecyclerView paramRecyclerView, RecyclerView.p paramp)
    {
      this.lH = false;
      a(paramRecyclerView, paramp);
    }
    
    final void b(View paramView, android.support.v4.view.a.a parama)
    {
      RecyclerView.x localx = RecyclerView.aN(paramView);
      if ((localx != null) && (!localx.isRemoved()) && (!this.adK.aA(localx.itemView))) {
        a(this.YZ.adH, this.YZ.aeE, paramView, parama);
      }
    }
    
    public void bA(int paramInt) {}
    
    public void bH(int paramInt)
    {
      if (this.YZ != null)
      {
        RecyclerView localRecyclerView = this.YZ;
        int j = localRecyclerView.adK.getChildCount();
        int i = 0;
        while (i < j)
        {
          localRecyclerView.adK.getChildAt(i).offsetLeftAndRight(paramInt);
          i += 1;
        }
      }
    }
    
    public void bI(int paramInt)
    {
      if (this.YZ != null)
      {
        RecyclerView localRecyclerView = this.YZ;
        int j = localRecyclerView.adK.getChildCount();
        int i = 0;
        while (i < j)
        {
          localRecyclerView.adK.getChildAt(i).offsetTopAndBottom(paramInt);
          i += 1;
        }
      }
    }
    
    public void bJ(int paramInt) {}
    
    public View by(int paramInt)
    {
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        View localView = getChildAt(i);
        RecyclerView.x localx = RecyclerView.aN(localView);
        if ((localx != null) && (localx.getLayoutPosition() == paramInt) && (!localx.shouldIgnore()) && ((this.YZ.aeE.afZ) || (!localx.isRemoved()))) {
          return localView;
        }
        i += 1;
      }
      return null;
    }
    
    final void c(RecyclerView.p paramp)
    {
      int j = paramp.afA.size();
      int i = j - 1;
      while (i >= 0)
      {
        View localView = ((RecyclerView.x)paramp.afA.get(i)).itemView;
        RecyclerView.x localx = RecyclerView.aN(localView);
        if (!localx.shouldIgnore())
        {
          localx.setIsRecyclable(false);
          if (localx.isTmpDetached()) {
            this.YZ.removeDetachedView(localView, false);
          }
          if (this.YZ.aep != null) {
            this.YZ.aep.c(localx);
          }
          localx.setIsRecyclable(true);
          paramp.be(localView);
        }
        i -= 1;
      }
      paramp.afA.clear();
      if (paramp.afB != null) {
        paramp.afB.clear();
      }
      if (j > 0) {
        this.YZ.invalidate();
      }
    }
    
    public void c(RecyclerView.p paramp, RecyclerView.u paramu)
    {
      Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }
    
    final void c(View paramView, int paramInt, boolean paramBoolean)
    {
      RecyclerView.x localx1 = RecyclerView.aN(paramView);
      RecyclerView.j localj1;
      if ((paramBoolean) || (localx1.isRemoved()))
      {
        this.YZ.adL.r(localx1);
        localj1 = (RecyclerView.j)paramView.getLayoutParams();
        if ((!localx1.wasReturnedFromScrap()) && (!localx1.isScrap())) {
          break label128;
        }
        if (!localx1.isScrap()) {
          break label120;
        }
        localx1.unScrap();
        label68:
        this.adK.a(paramView, paramInt, paramView.getLayoutParams(), false);
      }
      for (;;)
      {
        if (localj1.aft)
        {
          localx1.itemView.invalidate();
          localj1.aft = false;
        }
        return;
        this.YZ.adL.s(localx1);
        break;
        label120:
        localx1.clearReturnedFromScrapFlag();
        break label68;
        label128:
        Object localObject;
        if (paramView.getParent() == this.YZ)
        {
          int j = this.adK.indexOfChild(paramView);
          int i = paramInt;
          if (paramInt == -1) {
            i = this.adK.getChildCount();
          }
          if (j == -1) {
            throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.YZ.indexOfChild(paramView) + this.YZ.hC());
          }
          if (j != i)
          {
            paramView = this.YZ.adQ;
            localObject = paramView.getChildAt(j);
            if (localObject == null) {
              throw new IllegalArgumentException("Cannot move a child from non-existing index:" + j + paramView.YZ.toString());
            }
            paramView.bG(j);
            RecyclerView.j localj2 = (RecyclerView.j)((View)localObject).getLayoutParams();
            RecyclerView.x localx2 = RecyclerView.aN((View)localObject);
            if (localx2.isRemoved()) {
              paramView.YZ.adL.r(localx2);
            }
            for (;;)
            {
              paramView.adK.a((View)localObject, i, localj2, localx2.isRemoved());
              break;
              paramView.YZ.adL.s(localx2);
            }
          }
        }
        else
        {
          this.adK.a(paramView, paramInt, false);
          localj1.afs = true;
          if ((this.aff != null) && (this.aff.afL))
          {
            localObject = this.aff;
            if (RecyclerView.aP(paramView) == ((RecyclerView.t)localObject).afJ) {
              ((RecyclerView.t)localObject).afM = paramView;
            }
          }
        }
      }
    }
    
    public int d(RecyclerView.u paramu)
    {
      return 0;
    }
    
    public RecyclerView.j d(ViewGroup.LayoutParams paramLayoutParams)
    {
      if ((paramLayoutParams instanceof RecyclerView.j)) {
        return new RecyclerView.j((RecyclerView.j)paramLayoutParams);
      }
      if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
        return new RecyclerView.j((ViewGroup.MarginLayoutParams)paramLayoutParams);
      }
      return new RecyclerView.j(paramLayoutParams);
    }
    
    public final void d(RecyclerView.p paramp)
    {
      int i = getChildCount() - 1;
      while (i >= 0)
      {
        if (!RecyclerView.aN(getChildAt(i)).shouldIgnore()) {
          a(i, paramp);
        }
        i -= 1;
      }
    }
    
    final void d(RecyclerView paramRecyclerView)
    {
      if (paramRecyclerView == null)
      {
        this.YZ = null;
        this.adK = null;
        this.db = 0;
      }
      for (this.dc = 0;; this.dc = paramRecyclerView.getHeight())
      {
        this.afm = 1073741824;
        this.afn = 1073741824;
        return;
        this.YZ = paramRecyclerView;
        this.adK = paramRecyclerView.adK;
        this.db = paramRecyclerView.getWidth();
      }
    }
    
    public int e(RecyclerView.u paramu)
    {
      return 0;
    }
    
    final void e(RecyclerView paramRecyclerView)
    {
      ae(View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getHeight(), 1073741824));
    }
    
    public final void e(View paramView, Rect paramRect)
    {
      Object localObject = ((RecyclerView.j)paramView.getLayoutParams()).abA;
      int i = -((Rect)localObject).left;
      int j = -((Rect)localObject).top;
      int k = paramView.getWidth();
      int m = ((Rect)localObject).right;
      int n = paramView.getHeight();
      paramRect.set(i, j, k + m, ((Rect)localObject).bottom + n);
      if (this.YZ != null)
      {
        localObject = paramView.getMatrix();
        if ((localObject != null) && (!((Matrix)localObject).isIdentity()))
        {
          RectF localRectF = this.YZ.adO;
          localRectF.set(paramRect);
          ((Matrix)localObject).mapRect(localRectF);
          paramRect.set((int)Math.floor(localRectF.left), (int)Math.floor(localRectF.top), (int)Math.ceil(localRectF.right), (int)Math.ceil(localRectF.bottom));
        }
      }
      paramRect.offset(paramView.getLeft(), paramView.getTop());
    }
    
    public int f(RecyclerView.u paramu)
    {
      return 0;
    }
    
    public final void f(View paramView, Rect paramRect)
    {
      if (this.YZ == null)
      {
        paramRect.set(0, 0, 0, 0);
        return;
      }
      paramRect.set(this.YZ.aQ(paramView));
    }
    
    public int g(RecyclerView.u paramu)
    {
      return 0;
    }
    
    public final View getChildAt(int paramInt)
    {
      if (this.adK != null) {
        return this.adK.getChildAt(paramInt);
      }
      return null;
    }
    
    public final int getChildCount()
    {
      if (this.adK != null) {
        return this.adK.getChildCount();
      }
      return 0;
    }
    
    public final View getFocusedChild()
    {
      if (this.YZ == null) {}
      View localView;
      do
      {
        return null;
        localView = this.YZ.getFocusedChild();
      } while ((localView == null) || (this.adK.aA(localView)));
      return localView;
    }
    
    public final int getItemCount()
    {
      if (this.YZ != null) {}
      for (RecyclerView.a locala = this.YZ.getAdapter(); locala != null; locala = null) {
        return locala.getItemCount();
      }
      return 0;
    }
    
    public final int getPaddingBottom()
    {
      if (this.YZ != null) {
        return this.YZ.getPaddingBottom();
      }
      return 0;
    }
    
    public final int getPaddingLeft()
    {
      if (this.YZ != null) {
        return this.YZ.getPaddingLeft();
      }
      return 0;
    }
    
    public final int getPaddingRight()
    {
      if (this.YZ != null) {
        return this.YZ.getPaddingRight();
      }
      return 0;
    }
    
    public final int getPaddingTop()
    {
      if (this.YZ != null) {
        return this.YZ.getPaddingTop();
      }
      return 0;
    }
    
    public int h(RecyclerView.u paramu)
    {
      return 0;
    }
    
    public void ha() {}
    
    public abstract RecyclerView.j hb();
    
    public boolean he()
    {
      return false;
    }
    
    public boolean hf()
    {
      return this.afh;
    }
    
    public boolean hg()
    {
      return false;
    }
    
    public boolean hh()
    {
      return false;
    }
    
    boolean hl()
    {
      return false;
    }
    
    public int i(RecyclerView.u paramu)
    {
      return 0;
    }
    
    public final boolean ii()
    {
      return (this.aff != null) && (this.aff.afL);
    }
    
    final void ij()
    {
      if (this.aff != null) {
        this.aff.stop();
      }
    }
    
    public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      boolean bool2 = true;
      Object localObject = this.YZ.adH;
      localObject = this.YZ.aeE;
      if ((this.YZ == null) || (paramAccessibilityEvent == null)) {
        return;
      }
      boolean bool1 = bool2;
      if (!this.YZ.canScrollVertically(1))
      {
        bool1 = bool2;
        if (!this.YZ.canScrollVertically(-1))
        {
          bool1 = bool2;
          if (!this.YZ.canScrollHorizontally(-1)) {
            if (!this.YZ.canScrollHorizontally(1)) {
              break label114;
            }
          }
        }
      }
      label114:
      for (bool1 = bool2;; bool1 = false)
      {
        paramAccessibilityEvent.setScrollable(bool1);
        if (this.YZ.adP == null) {
          break;
        }
        paramAccessibilityEvent.setItemCount(this.YZ.adP.getItemCount());
        return;
      }
    }
    
    public void onRestoreInstanceState(Parcelable paramParcelable) {}
    
    public Parcelable onSaveInstanceState()
    {
      return null;
    }
    
    public final boolean removeCallbacks(Runnable paramRunnable)
    {
      if (this.YZ != null) {
        return this.YZ.removeCallbacks(paramRunnable);
      }
      return false;
    }
    
    public final void requestLayout()
    {
      if (this.YZ != null) {
        this.YZ.requestLayout();
      }
    }
    
    public final void setMeasuredDimension(int paramInt1, int paramInt2)
    {
      RecyclerView.b(this.YZ, paramInt1, paramInt2);
    }
    
    public static abstract interface a
    {
      public abstract void C(int paramInt1, int paramInt2);
    }
    
    public static final class b
    {
      public boolean afp;
      public boolean afq;
      public int orientation;
      public int spanCount;
    }
  }
  
  public static class j
    extends ViewGroup.MarginLayoutParams
  {
    final Rect abA = new Rect();
    RecyclerView.x afr;
    boolean afs = true;
    boolean aft = false;
    
    public j(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public j(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public j(j paramj)
    {
      super();
    }
    
    public j(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public j(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
  }
  
  public static abstract interface k
  {
    public abstract void bc(View paramView);
  }
  
  public static abstract class l
  {
    public abstract boolean im();
  }
  
  public static abstract interface m
  {
    public abstract void Q(boolean paramBoolean);
    
    public abstract boolean e(MotionEvent paramMotionEvent);
    
    public abstract void f(MotionEvent paramMotionEvent);
  }
  
  public static abstract class n
  {
    public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt) {}
    
    public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  }
  
  public static final class o
  {
    SparseArray<a> afu = new SparseArray();
    int afv = 0;
    
    static long b(long paramLong1, long paramLong2)
    {
      if (paramLong1 == 0L) {
        return paramLong2;
      }
      return paramLong1 / 4L * 3L + paramLong2 / 4L;
    }
    
    final a bK(int paramInt)
    {
      a locala2 = (a)this.afu.get(paramInt);
      a locala1 = locala2;
      if (locala2 == null)
      {
        locala1 = new a();
        this.afu.put(paramInt, locala1);
      }
      return locala1;
    }
    
    final void detach()
    {
      this.afv -= 1;
    }
    
    final void in()
    {
      this.afv += 1;
    }
    
    static final class a
    {
      final ArrayList<RecyclerView.x> afw = new ArrayList();
      int afx = 5;
      long afy = 0L;
      long afz = 0L;
    }
  }
  
  public final class p
  {
    final ArrayList<RecyclerView.x> afA = new ArrayList();
    ArrayList<RecyclerView.x> afB = null;
    final ArrayList<RecyclerView.x> afC = new ArrayList();
    final List<RecyclerView.x> afD = Collections.unmodifiableList(this.afA);
    int afE = 2;
    int afF = 2;
    RecyclerView.o afG;
    RecyclerView.v afH;
    
    public p() {}
    
    private RecyclerView.x a(long paramLong, int paramInt)
    {
      int i = this.afA.size() - 1;
      RecyclerView.x localx;
      while (i >= 0)
      {
        localx = (RecyclerView.x)this.afA.get(i);
        if ((localx.getItemId() == paramLong) && (!localx.wasReturnedFromScrap()))
        {
          if (paramInt == localx.getItemViewType())
          {
            localx.addFlags(32);
            if ((localx.isRemoved()) && (!RecyclerView.this.aeE.afZ)) {
              localx.setFlags(2, 14);
            }
            return localx;
          }
          this.afA.remove(i);
          RecyclerView.this.removeDetachedView(localx.itemView, false);
          be(localx.itemView);
        }
        i -= 1;
      }
      i = this.afC.size() - 1;
      while (i >= 0)
      {
        localx = (RecyclerView.x)this.afC.get(i);
        if (localx.getItemId() == paramLong)
        {
          if (paramInt == localx.getItemViewType())
          {
            this.afC.remove(i);
            return localx;
          }
          bN(i);
          return null;
        }
        i -= 1;
      }
      return null;
    }
    
    private RecyclerView.x bO(int paramInt)
    {
      int j = 0;
      int k;
      if (this.afB != null)
      {
        k = this.afB.size();
        if (k != 0) {}
      }
      else
      {
        return null;
      }
      int i = 0;
      RecyclerView.x localx;
      while (i < k)
      {
        localx = (RecyclerView.x)this.afB.get(i);
        if ((!localx.wasReturnedFromScrap()) && (localx.getLayoutPosition() == paramInt))
        {
          localx.addFlags(32);
          return localx;
        }
        i += 1;
      }
      if (RecyclerView.this.adP.hasStableIds())
      {
        paramInt = RecyclerView.this.adJ.w(paramInt, 0);
        if ((paramInt > 0) && (paramInt < RecyclerView.this.adP.getItemCount()))
        {
          long l = RecyclerView.this.adP.getItemId(paramInt);
          paramInt = j;
          while (paramInt < k)
          {
            localx = (RecyclerView.x)this.afB.get(paramInt);
            if ((!localx.wasReturnedFromScrap()) && (localx.getItemId() == l))
            {
              localx.addFlags(32);
              return localx;
            }
            paramInt += 1;
          }
        }
      }
      return null;
    }
    
    private RecyclerView.x bP(int paramInt)
    {
      int j = 0;
      int k = this.afA.size();
      int i = 0;
      Object localObject1;
      while (i < k)
      {
        localObject1 = (RecyclerView.x)this.afA.get(i);
        if ((!((RecyclerView.x)localObject1).wasReturnedFromScrap()) && (((RecyclerView.x)localObject1).getLayoutPosition() == paramInt) && (!((RecyclerView.x)localObject1).isInvalid()) && ((RecyclerView.this.aeE.afZ) || (!((RecyclerView.x)localObject1).isRemoved())))
        {
          ((RecyclerView.x)localObject1).addFlags(32);
          return (RecyclerView.x)localObject1;
        }
        i += 1;
      }
      Object localObject2 = RecyclerView.this.adK;
      k = ((ai)localObject2).XB.size();
      i = 0;
      Object localObject3;
      if (i < k)
      {
        localObject1 = (View)((ai)localObject2).XB.get(i);
        localObject3 = ((ai)localObject2).Xz.aB((View)localObject1);
        if ((((RecyclerView.x)localObject3).getLayoutPosition() != paramInt) || (((RecyclerView.x)localObject3).isInvalid()) || (((RecyclerView.x)localObject3).isRemoved())) {}
      }
      for (;;)
      {
        if (localObject1 != null)
        {
          localObject2 = RecyclerView.aN((View)localObject1);
          localObject3 = RecyclerView.this.adK;
          paramInt = ((ai)localObject3).Xz.indexOfChild((View)localObject1);
          if (paramInt < 0)
          {
            throw new IllegalArgumentException("view is not a child, cannot hide " + localObject1);
            i += 1;
            break;
            localObject1 = null;
            continue;
          }
          if (!((ai)localObject3).XA.get(paramInt)) {
            throw new RuntimeException("trying to unhide a view that was not hidden" + localObject1);
          }
          ((ai)localObject3).XA.clear(paramInt);
          ((ai)localObject3).az((View)localObject1);
          paramInt = RecyclerView.this.adK.indexOfChild((View)localObject1);
          if (paramInt == -1) {
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + localObject2 + RecyclerView.this.hC());
          }
          RecyclerView.this.adK.detachViewFromParent(paramInt);
          bf((View)localObject1);
          ((RecyclerView.x)localObject2).addFlags(8224);
          return (RecyclerView.x)localObject2;
        }
      }
      k = this.afC.size();
      i = j;
      while (i < k)
      {
        localObject1 = (RecyclerView.x)this.afC.get(i);
        if ((!((RecyclerView.x)localObject1).isInvalid()) && (((RecyclerView.x)localObject1).getLayoutPosition() == paramInt))
        {
          this.afC.remove(i);
          return (RecyclerView.x)localObject1;
        }
        i += 1;
      }
      return null;
    }
    
    private void d(ViewGroup paramViewGroup, boolean paramBoolean)
    {
      int i = paramViewGroup.getChildCount() - 1;
      while (i >= 0)
      {
        View localView = paramViewGroup.getChildAt(i);
        if ((localView instanceof ViewGroup)) {
          d((ViewGroup)localView, true);
        }
        i -= 1;
      }
      if (!paramBoolean) {
        return;
      }
      if (paramViewGroup.getVisibility() == 4)
      {
        paramViewGroup.setVisibility(0);
        paramViewGroup.setVisibility(4);
        return;
      }
      i = paramViewGroup.getVisibility();
      paramViewGroup.setVisibility(4);
      paramViewGroup.setVisibility(i);
    }
    
    final void a(RecyclerView.x paramx, boolean paramBoolean)
    {
      RecyclerView.g(paramx);
      if (paramx.hasAnyOfTheFlags(16384))
      {
        paramx.setFlags(0, 16384);
        r.a(paramx.itemView, null);
      }
      if (paramBoolean)
      {
        if (RecyclerView.this.adR != null) {
          localObject = RecyclerView.this.adR;
        }
        if (RecyclerView.this.adP != null) {
          RecyclerView.this.adP.onViewRecycled(paramx);
        }
        if (RecyclerView.this.aeE != null) {
          RecyclerView.this.adL.t(paramx);
        }
      }
      paramx.mOwnerRecyclerView = null;
      Object localObject = getRecycledViewPool();
      int i = paramx.getItemViewType();
      ArrayList localArrayList = ((RecyclerView.o)localObject).bK(i).afw;
      if (((RecyclerView.o.a)((RecyclerView.o)localObject).afu.get(i)).afx > localArrayList.size())
      {
        paramx.resetInternal();
        localArrayList.add(paramx);
      }
    }
    
    public final int bL(int paramInt)
    {
      if ((paramInt < 0) || (paramInt >= RecyclerView.this.aeE.getItemCount())) {
        throw new IndexOutOfBoundsException("invalid position " + paramInt + ". State item count is " + RecyclerView.this.aeE.getItemCount() + RecyclerView.this.hC());
      }
      if (!RecyclerView.this.aeE.afZ) {
        return paramInt;
      }
      return RecyclerView.this.adJ.bf(paramInt);
    }
    
    public final View bM(int paramInt)
    {
      return c(paramInt, Long.MAX_VALUE).itemView;
    }
    
    final void bN(int paramInt)
    {
      a((RecyclerView.x)this.afC.get(paramInt), true);
      this.afC.remove(paramInt);
    }
    
    public final void bd(View paramView)
    {
      RecyclerView.x localx = RecyclerView.aN(paramView);
      if (localx.isTmpDetached()) {
        RecyclerView.this.removeDetachedView(paramView, false);
      }
      if (localx.isScrap()) {
        localx.unScrap();
      }
      for (;;)
      {
        o(localx);
        return;
        if (localx.wasReturnedFromScrap()) {
          localx.clearReturnedFromScrapFlag();
        }
      }
    }
    
    final void be(View paramView)
    {
      paramView = RecyclerView.aN(paramView);
      RecyclerView.x.access$1002(paramView, null);
      RecyclerView.x.access$1102(paramView, false);
      paramView.clearReturnedFromScrapFlag();
      o(paramView);
    }
    
    final void bf(View paramView)
    {
      paramView = RecyclerView.aN(paramView);
      int i;
      if ((!paramView.hasAnyOfTheFlags(12)) && (paramView.isUpdated()))
      {
        RecyclerView localRecyclerView = RecyclerView.this;
        if ((localRecyclerView.aep != null) && (!localRecyclerView.aep.a(paramView, paramView.getUnmodifiedPayloads()))) {
          break label112;
        }
        i = 1;
      }
      while (i != 0) {
        if ((paramView.isInvalid()) && (!paramView.isRemoved()) && (!RecyclerView.this.adP.hasStableIds()))
        {
          throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.hC());
          label112:
          i = 0;
        }
        else
        {
          paramView.setScrapContainer(this, false);
          this.afA.add(paramView);
          return;
        }
      }
      if (this.afB == null) {
        this.afB = new ArrayList();
      }
      paramView.setScrapContainer(this, true);
      this.afB.add(paramView);
    }
    
    final RecyclerView.x c(int paramInt, long paramLong)
    {
      if ((paramInt < 0) || (paramInt >= RecyclerView.this.aeE.getItemCount())) {
        throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + RecyclerView.this.aeE.getItemCount() + RecyclerView.this.hC());
      }
      int j = 0;
      Object localObject2 = null;
      int i;
      Object localObject1;
      boolean bool;
      if (RecyclerView.this.aeE.afZ)
      {
        localObject2 = bO(paramInt);
        if (localObject2 != null) {
          j = 1;
        }
      }
      else
      {
        i = j;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject2 = bP(paramInt);
          i = j;
          localObject1 = localObject2;
          if (localObject2 != null)
          {
            if (!((RecyclerView.x)localObject2).isRemoved()) {
              break label328;
            }
            bool = RecyclerView.this.aeE.afZ;
            label169:
            if (bool) {
              break label497;
            }
            ((RecyclerView.x)localObject2).addFlags(4);
            if (!((RecyclerView.x)localObject2).isScrap()) {
              break label481;
            }
            RecyclerView.this.removeDetachedView(((RecyclerView.x)localObject2).itemView, false);
            ((RecyclerView.x)localObject2).unScrap();
            label206:
            o((RecyclerView.x)localObject2);
            localObject1 = null;
            i = j;
          }
        }
      }
      label328:
      label481:
      label497:
      int k;
      long l1;
      long l2;
      for (;;)
      {
        if (localObject1 == null)
        {
          j = RecyclerView.this.adJ.bf(paramInt);
          if ((j < 0) || (j >= RecyclerView.this.adP.getItemCount()))
          {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + j + ").state:" + RecyclerView.this.aeE.getItemCount() + RecyclerView.this.hC());
            j = 0;
            break;
            if ((((RecyclerView.x)localObject2).mPosition < 0) || (((RecyclerView.x)localObject2).mPosition >= RecyclerView.this.adP.getItemCount())) {
              throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + localObject2 + RecyclerView.this.hC());
            }
            if ((!RecyclerView.this.aeE.afZ) && (RecyclerView.this.adP.getItemViewType(((RecyclerView.x)localObject2).mPosition) != ((RecyclerView.x)localObject2).getItemViewType()))
            {
              bool = false;
              break label169;
            }
            if ((RecyclerView.this.adP.hasStableIds()) && (((RecyclerView.x)localObject2).getItemId() != RecyclerView.this.adP.getItemId(((RecyclerView.x)localObject2).mPosition)))
            {
              bool = false;
              break label169;
            }
            bool = true;
            break label169;
            if (!((RecyclerView.x)localObject2).wasReturnedFromScrap()) {
              break label206;
            }
            ((RecyclerView.x)localObject2).clearReturnedFromScrapFlag();
            break label206;
            i = 1;
            localObject1 = localObject2;
            continue;
          }
          k = RecyclerView.this.adP.getItemViewType(j);
          if (RecyclerView.this.adP.hasStableIds())
          {
            localObject2 = a(RecyclerView.this.adP.getItemId(j), k);
            localObject1 = localObject2;
            if (localObject2 != null)
            {
              ((RecyclerView.x)localObject2).mPosition = j;
              i = 1;
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                localObject1 = localObject2;
                if (this.afH != null)
                {
                  View localView = this.afH.ir();
                  localObject1 = localObject2;
                  if (localView != null)
                  {
                    localObject2 = RecyclerView.this.aB(localView);
                    if (localObject2 == null) {
                      throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder" + RecyclerView.this.hC());
                    }
                    localObject1 = localObject2;
                    if (((RecyclerView.x)localObject2).shouldIgnore()) {
                      throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view." + RecyclerView.this.hC());
                    }
                  }
                }
              }
              localObject2 = localObject1;
              if (localObject1 == null)
              {
                localObject1 = (RecyclerView.o.a)getRecycledViewPool().afu.get(k);
                if ((localObject1 == null) || (((RecyclerView.o.a)localObject1).afw.isEmpty())) {
                  break label890;
                }
                localObject1 = ((RecyclerView.o.a)localObject1).afw;
                localObject1 = (RecyclerView.x)((ArrayList)localObject1).remove(((ArrayList)localObject1).size() - 1);
                localObject2 = localObject1;
                if (localObject1 != null)
                {
                  ((RecyclerView.x)localObject1).resetInternal();
                  localObject2 = localObject1;
                  if (RecyclerView.adz)
                  {
                    localObject2 = localObject1;
                    if ((((RecyclerView.x)localObject1).itemView instanceof ViewGroup))
                    {
                      d((ViewGroup)((RecyclerView.x)localObject1).itemView, false);
                      localObject2 = localObject1;
                    }
                  }
                }
              }
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                l1 = RecyclerView.this.getNanoTime();
                if (paramLong != Long.MAX_VALUE)
                {
                  l2 = this.afG.bK(k).afy;
                  if ((l2 == 0L) || (l2 + l1 < paramLong)) {}
                  for (j = 1;; j = 0)
                  {
                    if (j != 0) {
                      break label902;
                    }
                    return null;
                    label890:
                    localObject1 = null;
                    break;
                  }
                }
                label902:
                localObject1 = RecyclerView.this.adP.createViewHolder(RecyclerView.this, k);
                if (RecyclerView.ig())
                {
                  localObject2 = RecyclerView.aR(((RecyclerView.x)localObject1).itemView);
                  if (localObject2 != null) {
                    ((RecyclerView.x)localObject1).mNestedRecyclerView = new WeakReference(localObject2);
                  }
                }
                l2 = RecyclerView.this.getNanoTime();
                localObject2 = this.afG.bK(k);
                ((RecyclerView.o.a)localObject2).afy = RecyclerView.o.b(((RecyclerView.o.a)localObject2).afy, l2 - l1);
              }
            }
          }
        }
      }
      for (localObject2 = localObject1;; localObject2 = localObject1)
      {
        if ((i != 0) && (!RecyclerView.this.aeE.afZ) && (((RecyclerView.x)localObject2).hasAnyOfTheFlags(8192)))
        {
          ((RecyclerView.x)localObject2).setFlags(0, 8192);
          if (RecyclerView.this.aeE.agc)
          {
            RecyclerView.f.j((RecyclerView.x)localObject2);
            localObject1 = RecyclerView.this.aep;
            localObject1 = RecyclerView.this.aeE;
            ((RecyclerView.x)localObject2).getUnmodifiedPayloads();
            localObject1 = new RecyclerView.f.b().n((RecyclerView.x)localObject2);
            RecyclerView.this.a((RecyclerView.x)localObject2, (RecyclerView.f.b)localObject1);
          }
        }
        if ((RecyclerView.this.aeE.afZ) && (((RecyclerView.x)localObject2).isBound()))
        {
          ((RecyclerView.x)localObject2).mPreLayoutPosition = paramInt;
          paramInt = 0;
        }
        for (;;)
        {
          localObject1 = ((RecyclerView.x)localObject2).itemView.getLayoutParams();
          if (localObject1 == null)
          {
            localObject1 = (RecyclerView.j)RecyclerView.this.generateDefaultLayoutParams();
            ((RecyclerView.x)localObject2).itemView.setLayoutParams((ViewGroup.LayoutParams)localObject1);
            label1169:
            ((RecyclerView.j)localObject1).afr = ((RecyclerView.x)localObject2);
            if ((i == 0) || (paramInt == 0)) {
              break label1506;
            }
          }
          label1302:
          label1318:
          label1506:
          for (bool = true;; bool = false)
          {
            ((RecyclerView.j)localObject1).aft = bool;
            return (RecyclerView.x)localObject2;
            if ((((RecyclerView.x)localObject2).isBound()) && (!((RecyclerView.x)localObject2).needsUpdate()) && (!((RecyclerView.x)localObject2).isInvalid())) {
              break label1512;
            }
            k = RecyclerView.this.adJ.bf(paramInt);
            ((RecyclerView.x)localObject2).mOwnerRecyclerView = RecyclerView.this;
            j = ((RecyclerView.x)localObject2).getItemViewType();
            l1 = RecyclerView.this.getNanoTime();
            if (paramLong != Long.MAX_VALUE)
            {
              l2 = this.afG.bK(j).afz;
              if ((l2 == 0L) || (l2 + l1 < paramLong))
              {
                j = 1;
                if (j != 0) {
                  break label1318;
                }
              }
            }
            for (paramInt = 0;; paramInt = 1)
            {
              break;
              j = 0;
              break label1302;
              RecyclerView.this.adP.bindViewHolder((RecyclerView.x)localObject2, k);
              paramLong = RecyclerView.this.getNanoTime();
              localObject1 = this.afG.bK(((RecyclerView.x)localObject2).getItemViewType());
              ((RecyclerView.o.a)localObject1).afz = RecyclerView.o.b(((RecyclerView.o.a)localObject1).afz, paramLong - l1);
              if (RecyclerView.this.hR())
              {
                localObject1 = ((RecyclerView.x)localObject2).itemView;
                if (r.J((View)localObject1) == 0) {
                  r.l((View)localObject1, 1);
                }
                if (!r.G((View)localObject1))
                {
                  ((RecyclerView.x)localObject2).addFlags(16384);
                  r.a((View)localObject1, RecyclerView.this.aeL.agn);
                }
              }
              if (RecyclerView.this.aeE.afZ) {
                ((RecyclerView.x)localObject2).mPreLayoutPosition = paramInt;
              }
            }
            if (!RecyclerView.this.checkLayoutParams((ViewGroup.LayoutParams)localObject1))
            {
              localObject1 = (RecyclerView.j)RecyclerView.this.generateLayoutParams((ViewGroup.LayoutParams)localObject1);
              ((RecyclerView.x)localObject2).itemView.setLayoutParams((ViewGroup.LayoutParams)localObject1);
              break label1169;
            }
            localObject1 = (RecyclerView.j)localObject1;
            break label1169;
          }
          label1512:
          paramInt = 0;
        }
        localObject2 = localObject1;
        break;
      }
    }
    
    public final void clear()
    {
      this.afA.clear();
      ip();
    }
    
    final RecyclerView.o getRecycledViewPool()
    {
      if (this.afG == null) {
        this.afG = new RecyclerView.o();
      }
      return this.afG;
    }
    
    final void io()
    {
      if (RecyclerView.this.adQ != null) {}
      for (int i = RecyclerView.this.adQ.afk;; i = 0)
      {
        this.afF = (i + this.afE);
        i = this.afC.size() - 1;
        while ((i >= 0) && (this.afC.size() > this.afF))
        {
          bN(i);
          i -= 1;
        }
      }
    }
    
    final void ip()
    {
      int i = this.afC.size() - 1;
      while (i >= 0)
      {
        bN(i);
        i -= 1;
      }
      this.afC.clear();
      if (RecyclerView.ig()) {
        RecyclerView.this.aeD.gI();
      }
    }
    
    final void o(RecyclerView.x paramx)
    {
      int k = 1;
      if ((paramx.isScrap()) || (paramx.itemView.getParent() != null))
      {
        StringBuilder localStringBuilder = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:").append(paramx.isScrap()).append(" isAttached:");
        if (paramx.itemView.getParent() != null) {}
        for (bool = true;; bool = false) {
          throw new IllegalArgumentException(bool + RecyclerView.this.hC());
        }
      }
      if (paramx.isTmpDetached()) {
        throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + paramx + RecyclerView.this.hC());
      }
      if (paramx.shouldIgnore()) {
        throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.hC());
      }
      boolean bool = RecyclerView.x.access$900(paramx);
      int i;
      if ((RecyclerView.this.adP != null) && (bool) && (RecyclerView.this.adP.onFailedToRecycleView(paramx))) {
        i = 1;
      }
      int j;
      for (;;)
      {
        if ((i != 0) || (paramx.isRecyclable())) {
          if ((this.afF > 0) && (!paramx.hasAnyOfTheFlags(526)))
          {
            j = this.afC.size();
            i = j;
            if (j >= this.afF)
            {
              i = j;
              if (j > 0)
              {
                bN(0);
                i = j - 1;
              }
            }
            j = i;
            if (RecyclerView.ig())
            {
              j = i;
              if (i > 0)
              {
                j = i;
                if (!RecyclerView.this.aeD.bp(paramx.mPosition))
                {
                  i -= 1;
                  for (;;)
                  {
                    if (i >= 0)
                    {
                      j = ((RecyclerView.x)this.afC.get(i)).mPosition;
                      if (RecyclerView.this.aeD.bp(j))
                      {
                        i -= 1;
                        continue;
                        i = 0;
                        break;
                      }
                    }
                  }
                  j = i + 1;
                }
              }
            }
            this.afC.add(j, paramx);
            i = 1;
            if (i == 0)
            {
              a(paramx, true);
              j = k;
            }
          }
        }
      }
      for (;;)
      {
        RecyclerView.this.adL.t(paramx);
        if ((i == 0) && (j == 0) && (bool)) {
          paramx.mOwnerRecyclerView = null;
        }
        return;
        j = 0;
        continue;
        i = 0;
        break;
        j = 0;
        i = 0;
      }
    }
    
    final void p(RecyclerView.x paramx)
    {
      if (RecyclerView.x.access$1100(paramx)) {
        this.afB.remove(paramx);
      }
      for (;;)
      {
        RecyclerView.x.access$1002(paramx, null);
        RecyclerView.x.access$1102(paramx, false);
        paramx.clearReturnedFromScrapFlag();
        return;
        this.afA.remove(paramx);
      }
    }
  }
  
  public static abstract interface q {}
  
  private final class r
    extends RecyclerView.c
  {
    r() {}
    
    private void iq()
    {
      if ((RecyclerView.adB) && (RecyclerView.this.adW) && (RecyclerView.this.adV))
      {
        r.b(RecyclerView.this, RecyclerView.this.adN);
        return;
      }
      RecyclerView.this.aee = true;
      RecyclerView.this.requestLayout();
    }
    
    public final void aa(int paramInt1, int paramInt2)
    {
      int i = 1;
      RecyclerView.this.F(null);
      f localf = RecyclerView.this.adJ;
      if (paramInt2 > 0)
      {
        localf.Vy.add(localf.a(1, paramInt1, paramInt2, null));
        localf.VE |= 0x1;
        if (localf.Vy.size() != 1) {}
      }
      for (paramInt1 = i;; paramInt1 = 0)
      {
        if (paramInt1 != 0) {
          iq();
        }
        return;
      }
    }
    
    public final void ab(int paramInt1, int paramInt2)
    {
      int i = 1;
      RecyclerView.this.F(null);
      f localf = RecyclerView.this.adJ;
      if (paramInt2 > 0)
      {
        localf.Vy.add(localf.a(2, paramInt1, paramInt2, null));
        localf.VE |= 0x2;
        if (localf.Vy.size() != 1) {}
      }
      for (paramInt1 = i;; paramInt1 = 0)
      {
        if (paramInt1 != 0) {
          iq();
        }
        return;
      }
    }
    
    public final void ac(int paramInt1, int paramInt2)
    {
      int i = 1;
      RecyclerView.this.F(null);
      f localf = RecyclerView.this.adJ;
      if (paramInt1 != paramInt2)
      {
        localf.Vy.add(localf.a(8, paramInt1, paramInt2, null));
        localf.VE |= 0x8;
        if (localf.Vy.size() != 1) {}
      }
      for (paramInt1 = i;; paramInt1 = 0)
      {
        if (paramInt1 != 0) {
          iq();
        }
        return;
      }
    }
    
    public final void b(int paramInt1, int paramInt2, Object paramObject)
    {
      int i = 1;
      RecyclerView.this.F(null);
      f localf = RecyclerView.this.adJ;
      if (paramInt2 > 0)
      {
        localf.Vy.add(localf.a(4, paramInt1, paramInt2, paramObject));
        localf.VE |= 0x4;
        if (localf.Vy.size() != 1) {}
      }
      for (paramInt1 = i;; paramInt1 = 0)
      {
        if (paramInt1 != 0) {
          iq();
        }
        return;
      }
    }
    
    public final void onChanged()
    {
      RecyclerView.this.F(null);
      RecyclerView.this.aeE.afY = true;
      RecyclerView.this.ac(true);
      if (!RecyclerView.this.adJ.ga()) {
        RecyclerView.this.requestLayout();
      }
    }
  }
  
  public static final class s
    extends android.support.v4.view.a
  {
    public static final Parcelable.Creator<s> CREATOR = new Parcelable.ClassLoaderCreator() {};
    Parcelable afI;
    
    s(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      if (paramClassLoader != null) {}
      for (;;)
      {
        this.afI = paramParcel.readParcelable(paramClassLoader);
        return;
        paramClassLoader = RecyclerView.i.class.getClassLoader();
      }
    }
    
    s(Parcelable paramParcelable)
    {
      super();
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeParcelable(this.afI, 0);
    }
  }
  
  public static abstract class t
  {
    RecyclerView YZ;
    RecyclerView.i adr;
    int afJ = -1;
    boolean afK;
    boolean afL;
    View afM;
    private final a afN = new a();
    
    protected abstract void a(int paramInt1, int paramInt2, a parama);
    
    protected abstract void a(View paramView, a parama);
    
    protected abstract void onStop();
    
    protected final void stop()
    {
      if (!this.afL) {
        return;
      }
      this.afL = false;
      onStop();
      this.YZ.aeE.afJ = -1;
      this.afM = null;
      this.afJ = -1;
      this.afK = false;
      RecyclerView.i.a(this.adr, this);
      this.adr = null;
      this.YZ = null;
    }
    
    public static final class a
    {
      private int afO = 0;
      private int afP = 0;
      int afQ = -1;
      private boolean afR = false;
      private int afS = 0;
      private int jj = Integer.MIN_VALUE;
      private Interpolator mInterpolator = null;
      
      public a()
      {
        this((byte)0);
      }
      
      private a(byte paramByte) {}
      
      public final void a(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
      {
        this.afO = paramInt1;
        this.afP = paramInt2;
        this.jj = paramInt3;
        this.mInterpolator = paramInterpolator;
        this.afR = true;
      }
      
      final void f(RecyclerView paramRecyclerView)
      {
        int i;
        if (this.afQ >= 0)
        {
          i = this.afQ;
          this.afQ = -1;
          paramRecyclerView.bE(i);
          this.afR = false;
          return;
        }
        if (this.afR)
        {
          if ((this.mInterpolator != null) && (this.jj <= 0)) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
          }
          if (this.jj <= 0) {
            throw new IllegalStateException("Scroll duration must be a positive number");
          }
          if (this.mInterpolator == null) {
            if (this.jj == Integer.MIN_VALUE)
            {
              paramRecyclerView = paramRecyclerView.aeB;
              i = this.afO;
              int j = this.afP;
              paramRecyclerView.i(i, j, paramRecyclerView.ah(i, j));
            }
          }
          for (;;)
          {
            this.afS += 1;
            if (this.afS > 10) {
              Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
            }
            this.afR = false;
            return;
            paramRecyclerView.aeB.i(this.afO, this.afP, this.jj);
            continue;
            paramRecyclerView.aeB.b(this.afO, this.afP, this.jj, this.mInterpolator);
          }
        }
        this.afS = 0;
      }
    }
    
    public static abstract interface b
    {
      public abstract PointF bz(int paramInt);
    }
  }
  
  public static final class u
  {
    int afJ = -1;
    private SparseArray<Object> afT;
    int afU = 0;
    int afV = 0;
    int afW = 1;
    int afX = 0;
    boolean afY = false;
    boolean afZ = false;
    boolean aga = false;
    boolean agb = false;
    boolean agc = false;
    boolean agd = false;
    int age;
    long agf;
    int agg;
    int agh;
    int agi;
    
    final void bQ(int paramInt)
    {
      if ((this.afW & paramInt) == 0) {
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(paramInt) + " but it is " + Integer.toBinaryString(this.afW));
      }
    }
    
    public final int getItemCount()
    {
      if (this.afZ) {
        return this.afU - this.afV;
      }
      return this.afX;
    }
    
    public final String toString()
    {
      return "State{mTargetPosition=" + this.afJ + ", mData=" + this.afT + ", mItemCount=" + this.afX + ", mIsMeasuring=" + this.agb + ", mPreviousLayoutItemCount=" + this.afU + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.afV + ", mStructureChanged=" + this.afY + ", mInPreLayout=" + this.afZ + ", mRunSimpleAnimations=" + this.agc + ", mRunPredictiveAnimations=" + this.agd + '}';
    }
  }
  
  public static abstract class v
  {
    public abstract View ir();
  }
  
  final class w
    implements Runnable
  {
    int agj;
    int agk;
    private boolean agl = false;
    private boolean agm = false;
    Interpolator mInterpolator = RecyclerView.aeS;
    OverScroller mZ = new OverScroller(RecyclerView.this.getContext(), RecyclerView.aeS);
    
    w() {}
    
    final int ah(int paramInt1, int paramInt2)
    {
      int j = Math.abs(paramInt1);
      int k = Math.abs(paramInt2);
      int i;
      int m;
      if (j > k)
      {
        i = 1;
        m = (int)Math.sqrt(0.0D);
        paramInt2 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
        if (i == 0) {
          break label139;
        }
      }
      label139:
      for (paramInt1 = RecyclerView.this.getWidth();; paramInt1 = RecyclerView.this.getHeight())
      {
        int n = paramInt1 / 2;
        float f3 = Math.min(1.0F, paramInt2 * 1.0F / paramInt1);
        float f1 = n;
        float f2 = n;
        f3 = (float)Math.sin((f3 - 0.5F) * 0.47123894F);
        if (m <= 0) {
          break label150;
        }
        paramInt1 = Math.round(1000.0F * Math.abs((f3 * f2 + f1) / m)) * 4;
        return Math.min(paramInt1, 2000);
        i = 0;
        break;
      }
      label150:
      if (i != 0) {}
      for (paramInt2 = j;; paramInt2 = k)
      {
        paramInt1 = (int)((paramInt2 / paramInt1 + 1.0F) * 300.0F);
        break;
      }
    }
    
    public final void b(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
    {
      if (this.mInterpolator != paramInterpolator)
      {
        this.mInterpolator = paramInterpolator;
        this.mZ = new OverScroller(RecyclerView.this.getContext(), paramInterpolator);
      }
      RecyclerView.this.setScrollState(2);
      this.agk = 0;
      this.agj = 0;
      this.mZ.startScroll(0, 0, paramInt1, paramInt2, paramInt3);
      if (Build.VERSION.SDK_INT < 23) {
        this.mZ.computeScrollOffset();
      }
      is();
    }
    
    public final void i(int paramInt1, int paramInt2, int paramInt3)
    {
      b(paramInt1, paramInt2, paramInt3, RecyclerView.aeS);
    }
    
    final void is()
    {
      if (this.agl)
      {
        this.agm = true;
        return;
      }
      RecyclerView.this.removeCallbacks(this);
      r.b(RecyclerView.this, this);
    }
    
    public final void run()
    {
      if (RecyclerView.this.adQ == null)
      {
        stop();
        return;
      }
      this.agm = false;
      this.agl = true;
      RecyclerView.this.hE();
      OverScroller localOverScroller = this.mZ;
      RecyclerView.t localt = RecyclerView.this.adQ.aff;
      int i5;
      int i6;
      int i2;
      int i1;
      int i;
      if (localOverScroller.computeScrollOffset())
      {
        int[] arrayOfInt = RecyclerView.a(RecyclerView.this);
        i5 = localOverScroller.getCurrX();
        i6 = localOverScroller.getCurrY();
        i2 = i5 - this.agj;
        i1 = i6 - this.agk;
        this.agj = i5;
        this.agk = i6;
        if (!RecyclerView.this.a(i2, i1, arrayOfInt, null, 1)) {
          break label886;
        }
        i = arrayOfInt[0];
        i1 -= arrayOfInt[1];
        i2 -= i;
      }
      label230:
      label269:
      label340:
      label433:
      label450:
      label577:
      label603:
      label623:
      label768:
      label801:
      label806:
      label811:
      label851:
      label886:
      for (;;)
      {
        int m;
        int n;
        int j;
        int k;
        if (RecyclerView.this.adP != null)
        {
          RecyclerView.this.hF();
          RecyclerView.this.hP();
          d.beginSection("RV Scroll");
          RecyclerView.this.m(RecyclerView.this.aeE);
          if (i2 != 0)
          {
            i = RecyclerView.this.adQ.a(i2, RecyclerView.this.adH, RecyclerView.this.aeE);
            m = i2 - i;
            if (i1 != 0)
            {
              n = RecyclerView.this.adQ.b(i1, RecyclerView.this.adH, RecyclerView.this.aeE);
              j = i1 - n;
              d.endSection();
              RecyclerView.this.jdMethod_if();
              RecyclerView.this.ab(true);
              RecyclerView.this.aa(false);
              if ((localt != null) && (!localt.afK) && (localt.afL))
              {
                k = RecyclerView.this.aeE.getItemCount();
                if (k == 0)
                {
                  localt.stop();
                  k = j;
                  j = i;
                }
              }
            }
          }
        }
        for (;;)
        {
          if (!RecyclerView.this.adS.isEmpty()) {
            RecyclerView.this.invalidate();
          }
          if (RecyclerView.this.getOverScrollMode() != 2) {
            RecyclerView.this.W(i2, i1);
          }
          int i3;
          if ((!RecyclerView.this.a(j, n, m, k, null, 1)) && ((m != 0) || (k != 0)))
          {
            i3 = (int)localOverScroller.getCurrVelocity();
            if (m == i5) {
              break label851;
            }
            if (m >= 0) {
              break label768;
            }
            i = -i3;
          }
          for (int i4 = i;; i4 = 0)
          {
            if (k != i6) {
              if (k < 0) {
                i = -i3;
              }
            }
            for (;;)
            {
              if (RecyclerView.this.getOverScrollMode() != 2) {
                RecyclerView.this.X(i4, i);
              }
              if (((i4 != 0) || (m == i5) || (localOverScroller.getFinalX() == 0)) && ((i != 0) || (k == i6) || (localOverScroller.getFinalY() == 0))) {
                localOverScroller.abortAnimation();
              }
              if ((j != 0) || (n != 0)) {
                RecyclerView.this.Z(j, n);
              }
              if (!RecyclerView.b(RecyclerView.this)) {
                RecyclerView.this.invalidate();
              }
              if ((i1 != 0) && (RecyclerView.this.adQ.hh()) && (n == i1))
              {
                i = 1;
                if ((i2 == 0) || (!RecyclerView.this.adQ.hg()) || (j != i2)) {
                  break label801;
                }
                j = 1;
                if (((i2 != 0) || (i1 != 0)) && (j == 0) && (i == 0)) {
                  break label806;
                }
                i = 1;
                if ((!localOverScroller.isFinished()) && ((i != 0) || (RecyclerView.this.getScrollingChildHelper().at(1)))) {
                  break label811;
                }
                RecyclerView.this.setScrollState(0);
                if (RecyclerView.ig()) {
                  RecyclerView.this.aeD.gI();
                }
                RecyclerView.this.au(1);
              }
              for (;;)
              {
                if (localt != null)
                {
                  if (localt.afK) {
                    RecyclerView.t.a(localt, 0, 0);
                  }
                  if (!this.agm) {
                    localt.stop();
                  }
                }
                this.agl = false;
                if (!this.agm) {
                  break;
                }
                is();
                return;
                if (localt.afJ >= k) {
                  localt.afJ = (k - 1);
                }
                RecyclerView.t.a(localt, i2 - m, i1 - j);
                k = j;
                j = i;
                break label340;
                if (m > 0)
                {
                  i = i3;
                  break label433;
                }
                i = 0;
                break label433;
                i = i3;
                if (k > 0) {
                  break label450;
                }
                i = 0;
                break label450;
                i = 0;
                break label577;
                j = 0;
                break label603;
                i = 0;
                break label623;
                is();
                if (RecyclerView.this.aeC != null) {
                  RecyclerView.this.aeC.a(RecyclerView.this, i2, i1);
                }
              }
              i = 0;
            }
          }
          j = 0;
          n = 0;
          break label269;
          m = 0;
          i = 0;
          break label230;
          k = 0;
          m = 0;
          n = 0;
          j = 0;
        }
      }
    }
    
    public final void stop()
    {
      RecyclerView.this.removeCallbacks(this);
      this.mZ.abortAnimation();
    }
  }
  
  public static abstract class x
  {
    static final int FLAG_ADAPTER_FULLUPDATE = 1024;
    static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
    static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
    static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
    static final int FLAG_BOUND = 1;
    static final int FLAG_IGNORE = 128;
    static final int FLAG_INVALID = 4;
    static final int FLAG_MOVED = 2048;
    static final int FLAG_NOT_RECYCLABLE = 16;
    static final int FLAG_REMOVED = 8;
    static final int FLAG_RETURNED_FROM_SCRAP = 32;
    static final int FLAG_SET_A11Y_ITEM_DELEGATE = 16384;
    static final int FLAG_TMP_DETACHED = 256;
    static final int FLAG_UPDATE = 2;
    private static final List<Object> FULLUPDATE_PAYLOADS = Collections.EMPTY_LIST;
    static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
    public final View itemView;
    private int mFlags;
    private boolean mInChangeScrap = false;
    private int mIsRecyclableCount = 0;
    long mItemId = -1L;
    int mItemViewType = -1;
    WeakReference<RecyclerView> mNestedRecyclerView;
    int mOldPosition = -1;
    RecyclerView mOwnerRecyclerView;
    List<Object> mPayloads = null;
    int mPendingAccessibilityState = -1;
    int mPosition = -1;
    int mPreLayoutPosition = -1;
    private RecyclerView.p mScrapContainer = null;
    x mShadowedHolder = null;
    x mShadowingHolder = null;
    List<Object> mUnmodifiedPayloads = null;
    private int mWasImportantForAccessibilityBeforeHidden = 0;
    
    public x(View paramView)
    {
      if (paramView == null) {
        throw new IllegalArgumentException("itemView may not be null");
      }
      this.itemView = paramView;
    }
    
    private void createPayloadsIfNeeded()
    {
      if (this.mPayloads == null)
      {
        this.mPayloads = new ArrayList();
        this.mUnmodifiedPayloads = Collections.unmodifiableList(this.mPayloads);
      }
    }
    
    private boolean doesTransientStatePreventRecycling()
    {
      return ((this.mFlags & 0x10) == 0) && (r.H(this.itemView));
    }
    
    private void onEnteredHiddenState(RecyclerView paramRecyclerView)
    {
      if (this.mPendingAccessibilityState != -1) {}
      for (this.mWasImportantForAccessibilityBeforeHidden = this.mPendingAccessibilityState;; this.mWasImportantForAccessibilityBeforeHidden = r.J(this.itemView))
      {
        paramRecyclerView.a(this, 4);
        return;
      }
    }
    
    private void onLeftHiddenState(RecyclerView paramRecyclerView)
    {
      paramRecyclerView.a(this, this.mWasImportantForAccessibilityBeforeHidden);
      this.mWasImportantForAccessibilityBeforeHidden = 0;
    }
    
    private boolean shouldBeKeptAsChild()
    {
      return (this.mFlags & 0x10) != 0;
    }
    
    void addChangePayload(Object paramObject)
    {
      if (paramObject == null) {
        addFlags(1024);
      }
      while ((this.mFlags & 0x400) != 0) {
        return;
      }
      createPayloadsIfNeeded();
      this.mPayloads.add(paramObject);
    }
    
    void addFlags(int paramInt)
    {
      this.mFlags |= paramInt;
    }
    
    void clearOldPosition()
    {
      this.mOldPosition = -1;
      this.mPreLayoutPosition = -1;
    }
    
    void clearPayload()
    {
      if (this.mPayloads != null) {
        this.mPayloads.clear();
      }
      this.mFlags &= 0xFBFF;
    }
    
    void clearReturnedFromScrapFlag()
    {
      this.mFlags &= 0xFFFFFFDF;
    }
    
    void clearTmpDetachFlag()
    {
      this.mFlags &= 0xFEFF;
    }
    
    void flagRemovedAndOffsetPosition(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      addFlags(8);
      offsetPosition(paramInt2, paramBoolean);
      this.mPosition = paramInt1;
    }
    
    public final int getAdapterPosition()
    {
      if (this.mOwnerRecyclerView == null) {
        return -1;
      }
      return this.mOwnerRecyclerView.h(this);
    }
    
    public final long getItemId()
    {
      return this.mItemId;
    }
    
    public final int getItemViewType()
    {
      return this.mItemViewType;
    }
    
    public final int getLayoutPosition()
    {
      if (this.mPreLayoutPosition == -1) {
        return this.mPosition;
      }
      return this.mPreLayoutPosition;
    }
    
    public final int getOldPosition()
    {
      return this.mOldPosition;
    }
    
    @Deprecated
    public final int getPosition()
    {
      if (this.mPreLayoutPosition == -1) {
        return this.mPosition;
      }
      return this.mPreLayoutPosition;
    }
    
    List<Object> getUnmodifiedPayloads()
    {
      if ((this.mFlags & 0x400) == 0)
      {
        if ((this.mPayloads == null) || (this.mPayloads.size() == 0)) {
          return FULLUPDATE_PAYLOADS;
        }
        return this.mUnmodifiedPayloads;
      }
      return FULLUPDATE_PAYLOADS;
    }
    
    boolean hasAnyOfTheFlags(int paramInt)
    {
      return (this.mFlags & paramInt) != 0;
    }
    
    boolean isAdapterPositionUnknown()
    {
      return ((this.mFlags & 0x200) != 0) || (isInvalid());
    }
    
    boolean isBound()
    {
      return (this.mFlags & 0x1) != 0;
    }
    
    boolean isInvalid()
    {
      return (this.mFlags & 0x4) != 0;
    }
    
    public final boolean isRecyclable()
    {
      return ((this.mFlags & 0x10) == 0) && (!r.H(this.itemView));
    }
    
    boolean isRemoved()
    {
      return (this.mFlags & 0x8) != 0;
    }
    
    boolean isScrap()
    {
      return this.mScrapContainer != null;
    }
    
    boolean isTmpDetached()
    {
      return (this.mFlags & 0x100) != 0;
    }
    
    boolean isUpdated()
    {
      return (this.mFlags & 0x2) != 0;
    }
    
    boolean needsUpdate()
    {
      return (this.mFlags & 0x2) != 0;
    }
    
    void offsetPosition(int paramInt, boolean paramBoolean)
    {
      if (this.mOldPosition == -1) {
        this.mOldPosition = this.mPosition;
      }
      if (this.mPreLayoutPosition == -1) {
        this.mPreLayoutPosition = this.mPosition;
      }
      if (paramBoolean) {
        this.mPreLayoutPosition += paramInt;
      }
      this.mPosition += paramInt;
      if (this.itemView.getLayoutParams() != null) {
        ((RecyclerView.j)this.itemView.getLayoutParams()).afs = true;
      }
    }
    
    void resetInternal()
    {
      this.mFlags = 0;
      this.mPosition = -1;
      this.mOldPosition = -1;
      this.mItemId = -1L;
      this.mPreLayoutPosition = -1;
      this.mIsRecyclableCount = 0;
      this.mShadowedHolder = null;
      this.mShadowingHolder = null;
      clearPayload();
      this.mWasImportantForAccessibilityBeforeHidden = 0;
      this.mPendingAccessibilityState = -1;
      RecyclerView.g(this);
    }
    
    void saveOldPosition()
    {
      if (this.mOldPosition == -1) {
        this.mOldPosition = this.mPosition;
      }
    }
    
    void setFlags(int paramInt1, int paramInt2)
    {
      this.mFlags = (this.mFlags & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
    }
    
    public final void setIsRecyclable(boolean paramBoolean)
    {
      int i;
      if (paramBoolean)
      {
        i = this.mIsRecyclableCount - 1;
        this.mIsRecyclableCount = i;
        if (this.mIsRecyclableCount >= 0) {
          break label63;
        }
        this.mIsRecyclableCount = 0;
        Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
      }
      label63:
      do
      {
        return;
        i = this.mIsRecyclableCount + 1;
        break;
        if ((!paramBoolean) && (this.mIsRecyclableCount == 1))
        {
          this.mFlags |= 0x10;
          return;
        }
      } while ((!paramBoolean) || (this.mIsRecyclableCount != 0));
      this.mFlags &= 0xFFFFFFEF;
    }
    
    void setScrapContainer(RecyclerView.p paramp, boolean paramBoolean)
    {
      this.mScrapContainer = paramp;
      this.mInChangeScrap = paramBoolean;
    }
    
    boolean shouldIgnore()
    {
      return (this.mFlags & 0x80) != 0;
    }
    
    void stopIgnoring()
    {
      this.mFlags &= 0xFF7F;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder1 = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
      StringBuilder localStringBuilder2;
      if (isScrap())
      {
        localStringBuilder2 = localStringBuilder1.append(" scrap ");
        if (!this.mInChangeScrap) {
          break label289;
        }
      }
      label289:
      for (String str = "[changeScrap]";; str = "[attachedScrap]")
      {
        localStringBuilder2.append(str);
        if (isInvalid()) {
          localStringBuilder1.append(" invalid");
        }
        if (!isBound()) {
          localStringBuilder1.append(" unbound");
        }
        if (needsUpdate()) {
          localStringBuilder1.append(" update");
        }
        if (isRemoved()) {
          localStringBuilder1.append(" removed");
        }
        if (shouldIgnore()) {
          localStringBuilder1.append(" ignored");
        }
        if (isTmpDetached()) {
          localStringBuilder1.append(" tmpDetached");
        }
        if (!isRecyclable()) {
          localStringBuilder1.append(" not recyclable(" + this.mIsRecyclableCount + ")");
        }
        if (isAdapterPositionUnknown()) {
          localStringBuilder1.append(" undefined adapter position");
        }
        if (this.itemView.getParent() == null) {
          localStringBuilder1.append(" no parent");
        }
        localStringBuilder1.append("}");
        return localStringBuilder1.toString();
      }
    }
    
    void unScrap()
    {
      this.mScrapContainer.p(this);
    }
    
    boolean wasReturnedFromScrap()
    {
      return (this.mFlags & 0x20) != 0;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/RecyclerView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */