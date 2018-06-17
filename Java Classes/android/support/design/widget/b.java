package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.design.a.a;
import android.support.design.a.h;
import android.support.design.a.k;
import android.support.v4.view.n;
import android.support.v4.view.r;
import android.support.v4.view.z;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import java.util.List;

public abstract class b<B extends b<B>>
{
  static final Handler je;
  private static final boolean jf;
  final ViewGroup jg;
  public final e jh;
  private final b ji;
  int jj;
  private List<Object<B>> jk;
  private final AccessibilityManager jl;
  final m.a jm = new m.a()
  {
    public final void show()
    {
      b.je.sendMessage(b.je.obtainMessage(0, b.this));
    }
    
    public final void t(int paramAnonymousInt)
    {
      b.je.sendMessage(b.je.obtainMessage(1, paramAnonymousInt, 0, b.this));
    }
  };
  public final Context mContext;
  
  static
  {
    if ((Build.VERSION.SDK_INT >= 16) && (Build.VERSION.SDK_INT <= 19)) {}
    for (boolean bool = true;; bool = false)
    {
      jf = bool;
      je = new Handler(Looper.getMainLooper(), new Handler.Callback()
      {
        public final boolean handleMessage(Message paramAnonymousMessage)
        {
          switch (paramAnonymousMessage.what)
          {
          default: 
            return false;
          case 0: 
            paramAnonymousMessage = (b)paramAnonymousMessage.obj;
            if (paramAnonymousMessage.jh.getParent() == null)
            {
              localObject = paramAnonymousMessage.jh.getLayoutParams();
              if ((localObject instanceof CoordinatorLayout.e))
              {
                localObject = (CoordinatorLayout.e)localObject;
                b.a locala = new b.a(paramAnonymousMessage);
                locala.nV = SwipeDismissBehavior.h(0.1F);
                locala.nW = SwipeDismissBehavior.h(0.6F);
                locala.nT = 0;
                locala.nP = new b.7(paramAnonymousMessage);
                ((CoordinatorLayout.e)localObject).a(locala);
                ((CoordinatorLayout.e)localObject).lY = 80;
              }
              paramAnonymousMessage.jg.addView(paramAnonymousMessage.jh);
            }
            paramAnonymousMessage.jh.setOnAttachStateChangeListener(new b.8(paramAnonymousMessage));
            if (r.ae(paramAnonymousMessage.jh)) {
              if (paramAnonymousMessage.bj()) {
                paramAnonymousMessage.bg();
              }
            }
            for (;;)
            {
              return true;
              paramAnonymousMessage.bh();
              continue;
              paramAnonymousMessage.jh.setOnLayoutChangeListener(new b.9(paramAnonymousMessage));
            }
          }
          Object localObject = (b)paramAnonymousMessage.obj;
          int i = paramAnonymousMessage.arg1;
          if ((((b)localObject).bj()) && (((b)localObject).jh.getVisibility() == 0)) {
            if (Build.VERSION.SDK_INT >= 12)
            {
              paramAnonymousMessage = new ValueAnimator();
              paramAnonymousMessage.setIntValues(new int[] { 0, ((b)localObject).jh.getHeight() });
              paramAnonymousMessage.setInterpolator(a.iB);
              paramAnonymousMessage.setDuration(250L);
              paramAnonymousMessage.addListener(new b.2((b)localObject, i));
              paramAnonymousMessage.addUpdateListener(new b.3((b)localObject));
              paramAnonymousMessage.start();
            }
          }
          for (;;)
          {
            return true;
            paramAnonymousMessage = AnimationUtils.loadAnimation(((b)localObject).jh.getContext(), a.a.design_snackbar_out);
            paramAnonymousMessage.setInterpolator(a.iB);
            paramAnonymousMessage.setDuration(250L);
            paramAnonymousMessage.setAnimationListener(new b.4((b)localObject, i));
            ((b)localObject).jh.startAnimation(paramAnonymousMessage);
            continue;
            ((b)localObject).bi();
          }
        }
      });
      return;
    }
  }
  
  protected b(ViewGroup paramViewGroup, View paramView, b paramb)
  {
    if (paramViewGroup == null) {
      throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
    }
    if (paramView == null) {
      throw new IllegalArgumentException("Transient bottom bar must have non-null content");
    }
    if (paramb == null) {
      throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
    }
    this.jg = paramViewGroup;
    this.ji = paramb;
    this.mContext = paramViewGroup.getContext();
    p.d(this.mContext);
    this.jh = ((e)LayoutInflater.from(this.mContext).inflate(a.h.design_layout_snackbar, this.jg, false));
    this.jh.addView(paramView);
    r.L(this.jh);
    r.l(this.jh, 1);
    r.e(this.jh, true);
    r.a(this.jh, new n()
    {
      public final z a(View paramAnonymousView, z paramAnonymousz)
      {
        paramAnonymousView.setPadding(paramAnonymousView.getPaddingLeft(), paramAnonymousView.getPaddingTop(), paramAnonymousView.getPaddingRight(), paramAnonymousz.getSystemWindowInsetBottom());
        return paramAnonymousz;
      }
    });
    this.jl = ((AccessibilityManager)this.mContext.getSystemService("accessibility"));
  }
  
  final void bg()
  {
    if (Build.VERSION.SDK_INT >= 12)
    {
      final int i = this.jh.getHeight();
      if (jf) {
        r.m(this.jh, i);
      }
      for (;;)
      {
        localObject = new ValueAnimator();
        ((ValueAnimator)localObject).setIntValues(new int[] { i, 0 });
        ((ValueAnimator)localObject).setInterpolator(a.iB);
        ((ValueAnimator)localObject).setDuration(250L);
        ((ValueAnimator)localObject).addListener(new AnimatorListenerAdapter()
        {
          public final void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            b.this.bh();
          }
          
          public final void onAnimationStart(Animator paramAnonymousAnimator)
          {
            b.a(b.this).aZ();
          }
        });
        ((ValueAnimator)localObject).addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
        {
          private int jp = i;
          
          public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
          {
            int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
            if (b.bk()) {
              r.m(b.this.jh, i - this.jp);
            }
            for (;;)
            {
              this.jp = i;
              return;
              b.this.jh.setTranslationY(i);
            }
          }
        });
        ((ValueAnimator)localObject).start();
        return;
        this.jh.setTranslationY(i);
      }
    }
    Object localObject = AnimationUtils.loadAnimation(this.jh.getContext(), a.a.design_snackbar_in);
    ((Animation)localObject).setInterpolator(a.iB);
    ((Animation)localObject).setDuration(250L);
    ((Animation)localObject).setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        b.this.bh();
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    this.jh.startAnimation((Animation)localObject);
  }
  
  final void bh()
  {
    m localm = m.bN();
    m.a locala = this.jm;
    synchronized (localm.mLock)
    {
      if (localm.d(locala)) {
        localm.a(localm.nD);
      }
      if (this.jk != null)
      {
        int i = this.jk.size() - 1;
        if (i >= 0)
        {
          this.jk.get(i);
          i -= 1;
        }
      }
    }
  }
  
  final void bi()
  {
    m localm = m.bN();
    m.a locala = this.jm;
    synchronized (localm.mLock)
    {
      if (localm.d(locala))
      {
        localm.nD = null;
        if (localm.nE != null) {
          localm.bO();
        }
      }
      if (this.jk != null)
      {
        int i = this.jk.size() - 1;
        if (i >= 0)
        {
          this.jk.get(i);
          i -= 1;
        }
      }
    }
    if (Build.VERSION.SDK_INT < 11) {
      this.jh.setVisibility(8);
    }
    ??? = this.jh.getParent();
    if ((??? instanceof ViewGroup)) {
      ((ViewGroup)???).removeView(this.jh);
    }
  }
  
  final boolean bj()
  {
    return !this.jl.isEnabled();
  }
  
  final void s(int paramInt)
  {
    m localm = m.bN();
    m.a locala = this.jm;
    synchronized (localm.mLock)
    {
      if (localm.d(locala)) {
        localm.a(localm.nD, paramInt);
      }
      while (!localm.e(locala)) {
        return;
      }
      localm.a(localm.nE, paramInt);
    }
  }
  
  public final void show()
  {
    m localm = m.bN();
    int i = this.jj;
    m.a locala = this.jm;
    for (;;)
    {
      synchronized (localm.mLock)
      {
        if (localm.d(locala))
        {
          localm.nD.duration = i;
          localm.mHandler.removeCallbacksAndMessages(localm.nD);
          localm.a(localm.nD);
          return;
        }
        if (localm.e(locala))
        {
          localm.nE.duration = i;
          if ((localm.nD == null) || (!localm.a(localm.nD, 4))) {
            break;
          }
          return;
        }
      }
      ((m)localObject2).nE = new m.b(i, locala);
    }
    ((m)localObject2).nD = null;
    ((m)localObject2).bO();
  }
  
  final class a
    extends SwipeDismissBehavior<b.e>
  {
    a() {}
    
    private boolean a(CoordinatorLayout paramCoordinatorLayout, b.e parame, MotionEvent paramMotionEvent)
    {
      switch (paramMotionEvent.getActionMasked())
      {
      }
      for (;;)
      {
        return super.a(paramCoordinatorLayout, parame, paramMotionEvent);
        if (paramCoordinatorLayout.a(parame, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
        {
          m.bN().a(b.this.jm);
          continue;
          m.bN().b(b.this.jm);
        }
      }
    }
    
    public final boolean h(View paramView)
    {
      return paramView instanceof b.e;
    }
  }
  
  public static abstract interface b
  {
    public abstract void aZ();
    
    public abstract void ba();
  }
  
  static abstract interface c
  {
    public abstract void bl();
  }
  
  static abstract interface d
  {
    public abstract void bm();
  }
  
  public static class e
    extends FrameLayout
  {
    private b.d js;
    private b.c jt;
    
    e(Context paramContext)
    {
      this(paramContext, null);
    }
    
    e(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.SnackbarLayout);
      if (paramContext.hasValue(a.k.SnackbarLayout_elevation)) {
        r.d(this, paramContext.getDimensionPixelSize(a.k.SnackbarLayout_elevation, 0));
      }
      paramContext.recycle();
      setClickable(true);
    }
    
    protected void onAttachedToWindow()
    {
      super.onAttachedToWindow();
      r.W(this);
    }
    
    protected void onDetachedFromWindow()
    {
      super.onDetachedFromWindow();
      if (this.jt != null) {
        this.jt.bl();
      }
    }
    
    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      if (this.js != null) {
        this.js.bm();
      }
    }
    
    void setOnAttachStateChangeListener(b.c paramc)
    {
      this.jt = paramc;
    }
    
    void setOnLayoutChangeListener(b.d paramd)
    {
      this.js = paramd;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */