package com.intercom.composer.a;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import android.widget.ImageView;

public final class e
{
  public final View background;
  final ImageView blo;
  public final g blp;
  public final d blq;
  public ObjectAnimator blr;
  public ObjectAnimator bls;
  public AnimatorSet blt;
  public final ValueAnimator.AnimatorUpdateListener blu = new ValueAnimator.AnimatorUpdateListener()
  {
    public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
    {
      e.this.background.setAlpha(((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue());
    }
  };
  
  public e(View paramView, ImageView paramImageView, g paramg, d paramd)
  {
    this.background = paramView;
    this.blo = paramImageView;
    this.blp = paramg;
    this.blq = paramd;
    this.blr = ObjectAnimator.ofPropertyValuesHolder(paramImageView, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.ALPHA, new float[] { 0.0F, 1.0F }), PropertyValuesHolder.ofFloat("scaleX", new float[] { 0.6F, 1.0F }), PropertyValuesHolder.ofFloat("scaleY", new float[] { 0.6F, 1.0F }) });
    this.blr.setStartDelay(50L);
    this.bls = ObjectAnimator.ofPropertyValuesHolder(paramImageView, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.ALPHA, new float[] { 1.0F, 0.0F }), PropertyValuesHolder.ofFloat("scaleX", new float[] { 1.0F, 0.6F }), PropertyValuesHolder.ofFloat("scaleY", new float[] { 1.0F, 0.6F }) });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */