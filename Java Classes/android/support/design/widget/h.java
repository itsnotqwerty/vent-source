package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.support.v4.a.a.a;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

final class h
  extends g
{
  private InsetDrawable mX;
  
  h(u paramu, l paraml)
  {
    super(paramu, paraml);
  }
  
  final void a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2)
  {
    this.mG = a.f(bI());
    a.a(this.mG, paramColorStateList);
    if (paramMode != null) {
      a.a(this.mG, paramMode);
    }
    if (paramInt2 > 0) {
      this.mI = a(paramInt2, paramColorStateList);
    }
    for (paramColorStateList = new LayerDrawable(new Drawable[] { this.mI, this.mG });; paramColorStateList = this.mG)
    {
      this.mH = new RippleDrawable(ColorStateList.valueOf(paramInt1), paramColorStateList, null);
      this.mJ = this.mH;
      this.mO.setBackgroundDrawable(this.mH);
      return;
      this.mI = null;
    }
  }
  
  final void a(int[] paramArrayOfInt) {}
  
  final void b(float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT == 21) {
      if (this.mN.isEnabled())
      {
        this.mN.setElevation(paramFloat1);
        if ((this.mN.isFocused()) || (this.mN.isPressed())) {
          this.mN.setTranslationZ(paramFloat2);
        }
      }
    }
    for (;;)
    {
      if (this.mO.bC()) {
        bF();
      }
      return;
      this.mN.setTranslationZ(0.0F);
      continue;
      this.mN.setElevation(0.0F);
      this.mN.setTranslationZ(0.0F);
      continue;
      StateListAnimator localStateListAnimator = new StateListAnimator();
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.play(ObjectAnimator.ofFloat(this.mN, "elevation", new float[] { paramFloat1 }).setDuration(0L)).with(ObjectAnimator.ofFloat(this.mN, View.TRANSLATION_Z, new float[] { paramFloat2 }).setDuration(100L));
      localAnimatorSet.setInterpolator(mC);
      localStateListAnimator.addState(PRESSED_ENABLED_STATE_SET, localAnimatorSet);
      localAnimatorSet = new AnimatorSet();
      localAnimatorSet.play(ObjectAnimator.ofFloat(this.mN, "elevation", new float[] { paramFloat1 }).setDuration(0L)).with(ObjectAnimator.ofFloat(this.mN, View.TRANSLATION_Z, new float[] { paramFloat2 }).setDuration(100L));
      localAnimatorSet.setInterpolator(mC);
      localStateListAnimator.addState(mM, localAnimatorSet);
      localAnimatorSet = new AnimatorSet();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(ObjectAnimator.ofFloat(this.mN, "elevation", new float[] { paramFloat1 }).setDuration(0L));
      if ((Build.VERSION.SDK_INT >= 22) && (Build.VERSION.SDK_INT <= 24)) {
        localArrayList.add(ObjectAnimator.ofFloat(this.mN, View.TRANSLATION_Z, new float[] { this.mN.getTranslationZ() }).setDuration(100L));
      }
      localArrayList.add(ObjectAnimator.ofFloat(this.mN, View.TRANSLATION_Z, new float[] { 0.0F }).setDuration(100L));
      localAnimatorSet.playSequentially((Animator[])localArrayList.toArray(new ObjectAnimator[0]));
      localAnimatorSet.setInterpolator(mC);
      localStateListAnimator.addState(ENABLED_STATE_SET, localAnimatorSet);
      localAnimatorSet = new AnimatorSet();
      localAnimatorSet.play(ObjectAnimator.ofFloat(this.mN, "elevation", new float[] { 0.0F }).setDuration(0L)).with(ObjectAnimator.ofFloat(this.mN, View.TRANSLATION_Z, new float[] { 0.0F }).setDuration(0L));
      localAnimatorSet.setInterpolator(mC);
      localStateListAnimator.addState(EMPTY_STATE_SET, localAnimatorSet);
      this.mN.setStateListAnimator(localStateListAnimator);
    }
  }
  
  final void b(Rect paramRect)
  {
    if (this.mO.bC())
    {
      float f1 = this.mO.getRadius();
      float f2 = this.mN.getElevation() + this.mL;
      int i = (int)Math.ceil(k.b(f2, f1, false));
      int j = (int)Math.ceil(k.a(f2, f1, false));
      paramRect.set(i, j, i, j);
      return;
    }
    paramRect.set(0, 0, 0, 0);
  }
  
  final void bD() {}
  
  final void bE()
  {
    bF();
  }
  
  final boolean bG()
  {
    return false;
  }
  
  final c bH()
  {
    return new d();
  }
  
  final GradientDrawable bJ()
  {
    return new a();
  }
  
  final void c(Rect paramRect)
  {
    if (this.mO.bC())
    {
      this.mX = new InsetDrawable(this.mH, paramRect.left, paramRect.top, paramRect.right, paramRect.bottom);
      this.mO.setBackgroundDrawable(this.mX);
      return;
    }
    this.mO.setBackgroundDrawable(this.mH);
  }
  
  public final float getElevation()
  {
    return this.mN.getElevation();
  }
  
  final void setRippleColor(int paramInt)
  {
    if ((this.mH instanceof RippleDrawable))
    {
      ((RippleDrawable)this.mH).setColor(ColorStateList.valueOf(paramInt));
      return;
    }
    super.setRippleColor(paramInt);
  }
  
  static final class a
    extends GradientDrawable
  {
    public final boolean isStateful()
    {
      return true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */