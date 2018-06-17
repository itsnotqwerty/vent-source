package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.support.design.a.c;
import android.support.v4.view.r;
import android.util.StateSet;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.animation.Interpolator;
import java.util.ArrayList;

class g
{
  static final int[] EMPTY_STATE_SET = new int[0];
  static final int[] ENABLED_STATE_SET;
  static final int[] PRESSED_ENABLED_STATE_SET;
  static final Interpolator mC = a.iC;
  static final int[] mM;
  float ke;
  private final Rect lg = new Rect();
  int mD = 0;
  private final n mE;
  k mF;
  Drawable mG;
  Drawable mH;
  c mI;
  Drawable mJ;
  float mK;
  float mL;
  final u mN;
  final l mO;
  ViewTreeObserver.OnPreDrawListener mP;
  
  static
  {
    PRESSED_ENABLED_STATE_SET = new int[] { 16842919, 16842910 };
    mM = new int[] { 16842908, 16842910 };
    ENABLED_STATE_SET = new int[] { 16842910 };
  }
  
  g(u paramu, l paraml)
  {
    this.mN = paramu;
    this.mO = paraml;
    this.mE = new n();
    this.mE.a(PRESSED_ENABLED_STATE_SET, a(new b()));
    this.mE.a(mM, a(new b()));
    this.mE.a(ENABLED_STATE_SET, a(new d()));
    this.mE.a(EMPTY_STATE_SET, a(new a()));
    this.ke = this.mN.getRotation();
  }
  
  private static ColorStateList J(int paramInt)
  {
    return new ColorStateList(new int[][] { mM, PRESSED_ENABLED_STATE_SET, new int[0] }, new int[] { paramInt, paramInt, 0 });
  }
  
  private static ValueAnimator a(e parame)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setInterpolator(mC);
    localValueAnimator.setDuration(100L);
    localValueAnimator.addListener(parame);
    localValueAnimator.addUpdateListener(parame);
    localValueAnimator.setFloatValues(new float[] { 0.0F, 1.0F });
    return localValueAnimator;
  }
  
  final c a(int paramInt, ColorStateList paramColorStateList)
  {
    Context localContext = this.mN.getContext();
    c localc = bH();
    int i = android.support.v4.content.a.c(localContext, a.c.design_fab_stroke_top_outer_color);
    int j = android.support.v4.content.a.c(localContext, a.c.design_fab_stroke_top_inner_color);
    int k = android.support.v4.content.a.c(localContext, a.c.design_fab_stroke_end_inner_color);
    int m = android.support.v4.content.a.c(localContext, a.c.design_fab_stroke_end_outer_color);
    localc.jX = i;
    localc.jY = j;
    localc.jZ = k;
    localc.ka = m;
    float f = paramInt;
    if (localc.jW != f)
    {
      localc.jW = f;
      localc.jT.setStrokeWidth(f * 1.3333F);
      localc.kd = true;
      localc.invalidateSelf();
    }
    localc.a(paramColorStateList);
    return localc;
  }
  
  void a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2)
  {
    this.mG = android.support.v4.a.a.a.f(bI());
    android.support.v4.a.a.a.a(this.mG, paramColorStateList);
    if (paramMode != null) {
      android.support.v4.a.a.a.a(this.mG, paramMode);
    }
    this.mH = android.support.v4.a.a.a.f(bI());
    android.support.v4.a.a.a.a(this.mH, J(paramInt1));
    if (paramInt2 > 0)
    {
      this.mI = a(paramInt2, paramColorStateList);
      paramColorStateList = new Drawable[3];
      paramColorStateList[0] = this.mI;
      paramColorStateList[1] = this.mG;
      paramColorStateList[2] = this.mH;
    }
    for (;;)
    {
      this.mJ = new LayerDrawable(paramColorStateList);
      this.mF = new k(this.mN.getContext(), this.mJ, this.mO.getRadius(), this.mK, this.mK + this.mL);
      paramColorStateList = this.mF;
      paramColorStateList.ny = false;
      paramColorStateList.invalidateSelf();
      this.mO.setBackgroundDrawable(this.mF);
      return;
      this.mI = null;
      paramColorStateList = new Drawable[2];
      paramColorStateList[0] = this.mG;
      paramColorStateList[1] = this.mH;
    }
  }
  
  void a(int[] paramArrayOfInt)
  {
    n localn = this.mE;
    int j = localn.nI.size();
    int i = 0;
    n.a locala;
    if (i < j)
    {
      locala = (n.a)localn.nI.get(i);
      if (!StateSet.stateSetMatches(locala.nN, paramArrayOfInt)) {}
    }
    for (paramArrayOfInt = locala;; paramArrayOfInt = null)
    {
      if (paramArrayOfInt != localn.nJ)
      {
        if ((localn.nJ != null) && (localn.nK != null))
        {
          localn.nK.cancel();
          localn.nK = null;
        }
        localn.nJ = paramArrayOfInt;
        if (paramArrayOfInt != null)
        {
          localn.nK = paramArrayOfInt.nO;
          localn.nK.start();
        }
      }
      return;
      i += 1;
      break;
    }
  }
  
  void b(float paramFloat1, float paramFloat2)
  {
    if (this.mF != null)
    {
      this.mF.c(paramFloat1, this.mL + paramFloat1);
      bF();
    }
  }
  
  void b(Rect paramRect)
  {
    this.mF.getPadding(paramRect);
  }
  
  void bD()
  {
    n localn = this.mE;
    if (localn.nK != null)
    {
      localn.nK.end();
      localn.nK = null;
    }
  }
  
  void bE() {}
  
  final void bF()
  {
    Rect localRect = this.lg;
    b(localRect);
    c(localRect);
    this.mO.c(localRect.left, localRect.top, localRect.right, localRect.bottom);
  }
  
  boolean bG()
  {
    return true;
  }
  
  c bH()
  {
    return new c();
  }
  
  final GradientDrawable bI()
  {
    GradientDrawable localGradientDrawable = bJ();
    localGradientDrawable.setShape(1);
    localGradientDrawable.setColor(-1);
    return localGradientDrawable;
  }
  
  GradientDrawable bJ()
  {
    return new GradientDrawable();
  }
  
  final boolean bK()
  {
    return (r.ae(this.mN)) && (!this.mN.isInEditMode());
  }
  
  void c(Rect paramRect) {}
  
  float getElevation()
  {
    return this.mK;
  }
  
  final void setElevation(float paramFloat)
  {
    if (this.mK != paramFloat)
    {
      this.mK = paramFloat;
      b(paramFloat, this.mL);
    }
  }
  
  void setRippleColor(int paramInt)
  {
    if (this.mH != null) {
      android.support.v4.a.a.a.a(this.mH, J(paramInt));
    }
  }
  
  private final class a
    extends g.e
  {
    a()
    {
      super((byte)0);
    }
    
    protected final float bL()
    {
      return 0.0F;
    }
  }
  
  private final class b
    extends g.e
  {
    b()
    {
      super((byte)0);
    }
    
    protected final float bL()
    {
      return g.this.mK + g.this.mL;
    }
  }
  
  static abstract interface c {}
  
  private final class d
    extends g.e
  {
    d()
    {
      super((byte)0);
    }
    
    protected final float bL()
    {
      return g.this.mK;
    }
  }
  
  private abstract class e
    extends AnimatorListenerAdapter
    implements ValueAnimator.AnimatorUpdateListener
  {
    private boolean mU;
    private float mV;
    private float mW;
    
    private e() {}
    
    protected abstract float bL();
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      g.this.mF.g(this.mW);
      this.mU = false;
    }
    
    public void onAnimationUpdate(ValueAnimator paramValueAnimator)
    {
      if (!this.mU)
      {
        this.mV = g.this.mF.nt;
        this.mW = bL();
        this.mU = true;
      }
      g.this.mF.g(this.mV + (this.mW - this.mV) * paramValueAnimator.getAnimatedFraction());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */