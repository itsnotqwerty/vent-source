package io.intercom.android.sdk.overlay;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.v4.content.a;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewPropertyAnimator;
import android.widget.TextView;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.utilities.BackgroundUtils;

class DefaultLauncher
  implements View.OnTouchListener
{
  private static final int ANIMATION_DURATION_MS = 300;
  private final View badge;
  private final TextView badgeCount;
  final View launcherRoot;
  final Listener listener;
  
  public DefaultLauncher(ViewGroup paramViewGroup, LayoutInflater paramLayoutInflater, Listener paramListener, int paramInt)
  {
    this.listener = paramListener;
    paramLayoutInflater.inflate(R.layout.intercom_default_launcher, paramViewGroup, true);
    this.launcherRoot = paramViewGroup.findViewById(R.id.launcher_root);
    paramViewGroup = (ViewGroup.MarginLayoutParams)this.launcherRoot.getLayoutParams();
    paramViewGroup.setMargins(paramViewGroup.leftMargin, paramViewGroup.topMargin, paramViewGroup.rightMargin, paramInt);
    this.launcherRoot.setLayoutParams(paramViewGroup);
    this.badge = this.launcherRoot.findViewById(R.id.launcher_icon);
    this.badgeCount = ((TextView)this.launcherRoot.findViewById(R.id.launcher_badge_count));
    this.launcherRoot.setOnTouchListener(this);
  }
  
  private void callListenerWithFadeOut()
  {
    this.launcherRoot.setAlpha(1.0F);
    this.launcherRoot.animate().alpha(0.0F).setDuration(50L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        DefaultLauncher.this.listener.onLauncherClicked(DefaultLauncher.this.launcherRoot.getContext());
      }
    }).start();
  }
  
  public void fadeOffScreen(Animator.AnimatorListener paramAnimatorListener)
  {
    this.launcherRoot.animate().alpha(0.0F).setDuration(100L).setListener(paramAnimatorListener).start();
  }
  
  public void fadeOnScreen()
  {
    this.launcherRoot.setAlpha(0.0F);
    this.launcherRoot.animate().alpha(1.0F).setDuration(100L).start();
  }
  
  public void hideBadgeCount()
  {
    this.badgeCount.setVisibility(8);
  }
  
  public boolean isAttachedToRoot(ViewGroup paramViewGroup)
  {
    return this.launcherRoot.getParent() == paramViewGroup;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return true;
      paramView.setScaleX(0.9F);
      paramView.setScaleY(0.9F);
      continue;
      callListenerWithFadeOut();
    }
  }
  
  public void pulseForTransformation(final Animator.AnimatorListener paramAnimatorListener)
  {
    this.launcherRoot.animate().scaleX(1.1F).scaleY(1.1F).setDuration(100L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        paramAnimatorListener.onAnimationEnd(paramAnonymousAnimator);
        DefaultLauncher.this.launcherRoot.animate().scaleX(1.0F).scaleY(1.0F).setDuration(100L).start();
      }
    }).start();
  }
  
  public void removeView()
  {
    if (this.launcherRoot.getParent() != null) {
      ((ViewGroup)this.launcherRoot.getParent()).removeView(this.launcherRoot);
    }
  }
  
  public void setBackgroundColor(int paramInt)
  {
    Context localContext = this.badge.getContext();
    Drawable localDrawable1 = a.a(localContext, R.drawable.intercom_solid_circle);
    localDrawable1.setColorFilter(paramInt, PorterDuff.Mode.SRC_IN);
    Drawable localDrawable2 = localDrawable1.getConstantState().newDrawable();
    localDrawable2.setColorFilter(a.c(localContext, R.color.intercom_inbox_count_background), PorterDuff.Mode.SRC_IN);
    BackgroundUtils.setBackground(this.badgeCount, localDrawable2);
    BackgroundUtils.setBackground(this.badge, localDrawable1);
  }
  
  public void setBadgeCount(String paramString)
  {
    this.badgeCount.setVisibility(0);
    this.badgeCount.setText(paramString);
  }
  
  public void updateBottomPadding(int paramInt)
  {
    final ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)this.launcherRoot.getLayoutParams();
    ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { localMarginLayoutParams.bottomMargin, paramInt });
    localValueAnimator.setDuration(300L);
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        localMarginLayoutParams.setMargins(localMarginLayoutParams.leftMargin, localMarginLayoutParams.topMargin, localMarginLayoutParams.rightMargin, ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
        DefaultLauncher.this.launcherRoot.setLayoutParams(localMarginLayoutParams);
      }
    });
    localValueAnimator.start();
  }
  
  public static abstract interface Listener
  {
    public abstract void onLauncherClicked(Context paramContext);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/overlay/DefaultLauncher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */