package io.intercom.android.sdk.views;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import java.util.concurrent.TimeUnit;

public class AdminIsTypingView
  extends LinearLayout
{
  private static final int ANIMATION_DELAY_MS = 100;
  private static final int ANIMATION_DURATION_MS = 200;
  private static final float FADED_ALPHA = 0.7F;
  private static final int IS_TYPING_DURATION_SECONDS = 10;
  private static final float SMALL_SCALE = 0.4F;
  final Runnable animateDots = new Runnable()
  {
    public void run()
    {
      int i = 0;
      while (i < AdminIsTypingView.this.dots.length)
      {
        AdminIsTypingView.this.dotsAnimations[i].start();
        i += 1;
      }
      AdminIsTypingView.this.postDelayed(AdminIsTypingView.this.animateDots, TimeUnit.SECONDS.toMillis(1L));
    }
  };
  boolean animating = false;
  final ImageView[] dots = new ImageView[3];
  final Animator[] dotsAnimations = new Animator[3];
  final Runnable endAnimation = new Runnable()
  {
    public void run()
    {
      int i = 0;
      AdminIsTypingView.this.animating = false;
      AdminIsTypingView.this.removeCallbacks(AdminIsTypingView.this.animateDots);
      AdminIsTypingView.this.removeCallbacks(AdminIsTypingView.this.endAnimation);
      if (AdminIsTypingView.this.listener != null) {
        AdminIsTypingView.this.listener.onAdminTypingAnimationEnded(AdminIsTypingView.this);
      }
      Animator[] arrayOfAnimator = AdminIsTypingView.this.dotsAnimations;
      int j = arrayOfAnimator.length;
      while (i < j)
      {
        arrayOfAnimator[i].cancel();
        i += 1;
      }
    }
  };
  private Listener listener;
  
  public AdminIsTypingView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AdminIsTypingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    inflate(getContext(), R.layout.intercom_admin_is_typing, this);
    this.dots[0] = ((ImageView)findViewById(R.id.dot1));
    this.dots[1] = ((ImageView)findViewById(R.id.dot2));
    this.dots[2] = ((ImageView)findViewById(R.id.dot3));
    paramContext = PropertyValuesHolder.ofFloat(View.SCALE_X, new float[] { 0.4F, 1.0F });
    paramAttributeSet = PropertyValuesHolder.ofFloat(View.SCALE_Y, new float[] { 0.4F, 1.0F });
    PropertyValuesHolder localPropertyValuesHolder = PropertyValuesHolder.ofFloat(View.ALPHA, new float[] { 0.7F, 1.0F });
    int i = 0;
    while (i < this.dotsAnimations.length)
    {
      ObjectAnimator localObjectAnimator = ObjectAnimator.ofPropertyValuesHolder(this.dots[i], new PropertyValuesHolder[] { localPropertyValuesHolder, paramContext, paramAttributeSet });
      localObjectAnimator.setRepeatCount(1);
      localObjectAnimator.setRepeatMode(2);
      localObjectAnimator.setDuration(200L);
      localObjectAnimator.setStartDelay(i * 100);
      this.dotsAnimations[i] = localObjectAnimator;
      i += 1;
    }
    setupEndCondition();
  }
  
  private void setupEndCondition()
  {
    postDelayed(this.endAnimation, TimeUnit.SECONDS.toMillis(10L));
  }
  
  public void beginAnimation()
  {
    if (!this.animating)
    {
      this.animating = true;
      this.animateDots.run();
    }
  }
  
  public void cancelTypingAnimation()
  {
    this.endAnimation.run();
  }
  
  public void renewTypingAnimation()
  {
    removeCallbacks(this.endAnimation);
    setupEndCondition();
  }
  
  public void setListener(Listener paramListener)
  {
    this.listener = paramListener;
  }
  
  public static abstract interface Listener
  {
    public abstract void onAdminTypingAnimationEnded(AdminIsTypingView paramAdminIsTypingView);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/AdminIsTypingView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */