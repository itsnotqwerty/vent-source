package com.layer.atlas.c;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.layer.atlas.a.b;
import com.layer.atlas.b.e;

public final class a
  implements a.b<LinearLayout>
{
  private static final String TAG = a.class.getSimpleName();
  private static final int bpk = b.e.atlas_typing_indicator_dot;
  private final Interpolator bpl = new Interpolator()
  {
    public final float getInterpolation(float paramAnonymousFloat)
    {
      return (float)(1.0D - Math.cos(paramAnonymousFloat * 3.141592653589793D / 2.0D));
    }
  };
  
  private void a(final View paramView, long paramLong)
  {
    final AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation1.setDuration(300L);
    localAlphaAnimation1.setStartOffset(paramLong);
    localAlphaAnimation1.setInterpolator(this.bpl);
    final AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation2.setDuration(300L);
    localAlphaAnimation2.setStartOffset(0L);
    localAlphaAnimation2.setInterpolator(this.bpl);
    localAlphaAnimation1.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        localAlphaAnimation2.setStartOffset(0L);
        localAlphaAnimation2.reset();
        paramView.startAnimation(localAlphaAnimation2);
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    localAlphaAnimation2.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        localAlphaAnimation1.setStartOffset(0L);
        localAlphaAnimation1.reset();
        paramView.startAnimation(localAlphaAnimation1);
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    paramView.startAnimation(localAlphaAnimation1);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */