package com.intercom.composer.a;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import android.widget.LinearLayout.LayoutParams;

public final class b
{
  public final View blg;
  public c blh;
  public ObjectAnimator bli;
  public int blj = a.bld;
  public final Animator.AnimatorListener blk = new AnimatorListenerAdapter()
  {
    public final void onAnimationEnd(Animator paramAnonymousAnimator)
    {
      super.onAnimationEnd(paramAnonymousAnimator);
      b.this.blj = a.bld;
      if (b.this.blh != null) {
        int i = a.bld;
      }
    }
    
    public final void onAnimationStart(Animator paramAnonymousAnimator)
    {
      super.onAnimationStart(paramAnonymousAnimator);
      b.this.blj = a.blb;
    }
  };
  public final Animator.AnimatorListener bll = new AnimatorListenerAdapter()
  {
    public final void onAnimationEnd(Animator paramAnonymousAnimator)
    {
      super.onAnimationEnd(paramAnonymousAnimator);
      b.this.blj = a.blc;
      if (b.this.blh != null) {
        int i = a.blc;
      }
    }
    
    public final void onAnimationStart(Animator paramAnonymousAnimator)
    {
      super.onAnimationStart(paramAnonymousAnimator);
      b.this.blj = a.bla;
    }
  };
  public final ValueAnimator.AnimatorUpdateListener blm = new ValueAnimator.AnimatorUpdateListener()
  {
    public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
    {
      ((LinearLayout.LayoutParams)b.this.blg.getLayoutParams()).bottomMargin = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
      b.this.blg.requestLayout();
    }
  };
  
  public b(View paramView)
  {
    this.blg = paramView;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */