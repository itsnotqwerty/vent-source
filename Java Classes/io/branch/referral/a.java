package io.branch.referral;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;

public final class a
  extends Dialog
{
  private boolean cvt;
  private final boolean cvu;
  
  public final void cancel()
  {
    if (!this.cvt)
    {
      this.cvt = true;
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, 1.0F);
      localTranslateAnimation.setDuration(500L);
      localTranslateAnimation.setInterpolator(new DecelerateInterpolator());
      ((ViewGroup)getWindow().getDecorView()).getChildAt(0).startAnimation(localTranslateAnimation);
      localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          a.this.dismiss();
        }
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
    }
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (this.cvu)
    {
      paramBundle = getWindow().getAttributes();
      paramBundle.width = -1;
      getWindow().setAttributes(paramBundle);
    }
  }
  
  public final void setContentView(int paramInt)
  {
    requestWindowFeature(1);
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    getWindow().addFlags(2);
    getWindow().addFlags(1024);
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams();
    localLayoutParams.copyFrom(getWindow().getAttributes());
    localLayoutParams.width = -1;
    localLayoutParams.height = -1;
    localLayoutParams.gravity = 80;
    localLayoutParams.dimAmount = 0.8F;
    getWindow().setAttributes(localLayoutParams);
    getWindow().setWindowAnimations(17432578);
    setCanceledOnTouchOutside(true);
    super.setContentView(paramInt);
  }
  
  public final void show()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
    localTranslateAnimation.setDuration(500L);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    ((ViewGroup)getWindow().getDecorView()).getChildAt(0).startAnimation(localTranslateAnimation);
    super.show();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */