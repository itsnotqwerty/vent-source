package io.intercom.android.sdk.utilities;

import android.animation.Animator.AnimatorListener;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;

public class BackgroundUtils
{
  public static void animateBackground(int paramInt1, int paramInt2, int paramInt3, View paramView, Animator.AnimatorListener paramAnimatorListener)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofObject(new ArgbEvaluator(), new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
    localValueAnimator.setDuration(paramInt3);
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        this.val$view.setBackgroundColor(((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
      }
    });
    if (paramAnimatorListener != null) {
      localValueAnimator.addListener(paramAnimatorListener);
    }
    localValueAnimator.start();
  }
  
  public static void setBackground(View paramView, Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.setBackground(paramDrawable);
      return;
    }
    paramView.setBackgroundDrawable(paramDrawable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/BackgroundUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */